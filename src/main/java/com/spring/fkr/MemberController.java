package com.spring.fkr;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.fkr.service.MemberService;
import com.spring.fkr.vo.MemberVO;

@Controller
@RequestMapping(value="/")
public class MemberController {
	
	@Inject
	private MemberService service;
	
	@RequestMapping(value="/join", method = RequestMethod.GET)
	public void registform(MemberVO vo, RedirectAttributes rttr) throws Exception {
	}
	
	@RequestMapping(value="/join", method = RequestMethod.POST)
	public String registMember(MemberVO member, RedirectAttributes rttr) throws Exception {
		service.regist(member);
		return "redirect:/listAll";
	}
	
	@RequestMapping(value="/loginform", method = RequestMethod.GET)
	public void loginform(MemberVO member, RedirectAttributes rttr) throws Exception{
	}
	
	@RequestMapping(value="/loginform", method = RequestMethod.POST)
	public String login(HttpServletRequest request, @RequestParam("id") String id, @RequestParam("password") String password) throws Exception{
		String path = "";
		HttpSession session = request.getSession();
		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setPassword(password);
		
		int result = service.read(vo);
		
		if(result == 1) {
			path = "redirect:/listAll";
			String sessionid = request.getParameter("id");
			session.setAttribute("SessionId", sessionid);
			System.out.println(sessionid);
			
		}else {
			System.out.println("정보없음");
			path = "redirect:/loginform";
		}
		
		return path;
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest req) throws Exception{
		HttpSession session = req.getSession();
		session.invalidate();
		return "redirect:/listAll";
	}
}
