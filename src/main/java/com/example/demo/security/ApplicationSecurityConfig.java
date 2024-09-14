//Security to make sure URL cannot be access freely.
//Divide "USER" and "ADMIN" access page

package com.example.demo.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class ApplicationSecurityConfig extends WebSecurityConfigurerAdapter {
    private PasswordEncoder passwordencoder;
    @Autowired
    UserDetailsService userservice;
    @Autowired
    ApplicationSecurityConfig (PasswordEncoder encoder){
    	this.passwordencoder=encoder;
    }
    @Autowired
    RolesHandler roles;
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// TODO Auto-generated method stub
		http
		.authorizeRequests()
		
		.antMatchers("/","LandingPage","/register","Register","/emailverify","/thankyou","ThankYouRegister","/forgetpassword","/forgetverify","/resetpassword").permitAll()
		.antMatchers("/css/**", "/css2/**", "/images/**", "/js/**").permitAll()
		.antMatchers("/searchviewprofile","/profilesearch","deleted/{id_user}","/sendbulkemail","/sendemail","/bulkemail","/jobsadmin","/jobspost","/jobsposted").hasAnyAuthority("ADMIN")
		.anyRequest()
		.authenticated()
			.and()
		.formLogin()
		.loginPage("/login").permitAll()
		.usernameParameter("emailLogin")
		.passwordParameter("passwordLogin")
		.successHandler(roles)
		.failureUrl("/login?error=error")
			.and()
		.logout()
		.logoutUrl("/logout")
		.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
		.logoutSuccessUrl("/").permitAll()
		.clearAuthentication(true)
		.invalidateHttpSession(true);
	}
	@Autowired
	AuthenticationProvider authProvider() {
		DaoAuthenticationProvider  dao=new DaoAuthenticationProvider();
		dao.setPasswordEncoder(passwordencoder);
		dao.setUserDetailsService(userservice);
		
		return dao;
	}

	/*
	 * @Override
	 * 
	 * @Bean protected UserDetailsService userDetailsService() { // TODO
	 * Auto-generated method stub //username password UserDetails userone=
	 * User.builder().email("sudhanshu@gmail.com").password(passwordencoder.encode("1234567890")).
	 * roles("ADMIN").build(); UserDetails
	 * usertwo=User.builder().email("sam@gmail.com").password(passwordencoder.encode(
	 * "12345678")).roles("USER").build(); return new
	 * InMemoryUserDetailsManager(userone,usertwo); }
	 */
}
