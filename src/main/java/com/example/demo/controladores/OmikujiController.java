package com.example.demo.controladores;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class OmikujiController 
{
	@RequestMapping(value="/omikuji", method=RequestMethod.GET)
	public String index()
	{
		return "omikuji.jsp";
	}
	
	@RequestMapping(value="/registroOmikuji", method=RequestMethod.POST)
	public String registraUsuario (@RequestParam(value="numero")int numero, 
								   @RequestParam(value="ciudad")String ciudad, 
								   @RequestParam(value="persona")String persona, 
								   @RequestParam(value="hobby")String hobby,
								   @RequestParam(value="animal")String animal,
								   @RequestParam(value="texto")String texto, 
								   HttpSession session)
	{
		
		session.setAttribute("numero", numero);
		session.setAttribute("ciudad", ciudad);
		session.setAttribute("persona", persona);
		session.setAttribute("hobby", hobby);
		session.setAttribute("animal", animal);
		session.setAttribute("texto", texto);
		
		return "redirect:/omikuji/show";
	}
	
	
	@RequestMapping(value="/omikuji/show", method=RequestMethod.GET)
	public String dashboard ()
	{
		return "show.jsp";
	}
	
}
