package com.niit.phishing;

import java.net.MalformedURLException;
import java.net.URL;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.Cookie;
import javax.servlet.jsp.PageContext;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.URLDao;
import com.niit.model.Url;


@Controller
public class homeController {
	
	@Autowired
	URLDao urlDAO;
	
	@RequestMapping("/")
	public String HomePage(Model m)
	{
		return "index";
	}
	@RequestMapping("adminlogin")
	public String AdminPage()
	{
		return "adminlogin";
	}
	@RequestMapping("/url2")
	public String ForwardPage(@RequestParam("url") String url, Model m) throws MalformedURLException
	{
		
		try
		{
			URL aURL = new URL(url);
			String protocol = aURL.getProtocol();
			String authority = aURL.getAuthority();
			String host = aURL.getHost();
			int port = aURL.getPort();
			String path = aURL.getPath();
			String query = aURL.getQuery();
			String filename = aURL.getFile();
			String ref = aURL.getRef();
		
			
			
			System.out.println("protocol = "+protocol);
	        System.out.println("authority = " + aURL.getAuthority());
	        System.out.println("host = " + aURL.getHost());
	        System.out.println("port = " + aURL.getPort());
	        System.out.println("path = " + aURL.getPath());
	        System.out.println("query = " + aURL.getQuery());
	        System.out.println("filename = " + aURL.getFile());
	        System.out.println("ref = " + aURL.getRef());
		
		Url url1 = new Url();
		url1.setAuthority(authority);
		url1.setFile(filename);
		url1.setHost(host);
		url1.setPath(path);
		url1.setPort(port);
		url1.setProtocol(protocol);
		url1.setQuery(query);
		url1.setRef(ref);
		urlDAO.addURLr(url1);
		}
		catch(MalformedURLException me)
		{
			System.out.println("Input is not in a valid URL format!!!");
		}
		
		return "loading";
	}
	
	@RequestMapping("/results")
	public String resultPage()
	{
		return "results";
	}
}