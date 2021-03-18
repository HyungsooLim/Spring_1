package com.hs.s1.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {

	// memberJoin print
	// URL : /member/memberLogin
	@RequestMapping(value = "/member/memberLogin", method = RequestMethod.GET)
	public String memberLogin() {
		System.out.println("Member Login");

		return "member/memberLogin";
	}

	// memberLogin2 print
	@RequestMapping(value = "/member/memberLogin", method = RequestMethod.POST)
	public void memberLogin2(HttpServletRequest request) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println("--- Login Success ---");
		System.out.println("ID : "+id);
		System.out.println("PW : "+pw);

	}// === memberLogin2 method END ===
}
