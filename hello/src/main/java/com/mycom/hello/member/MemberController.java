package com.mycom.hello.member;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.WindowConstants;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService memberService;

	@GetMapping("/save")
	public String saveForm() {
		return "member/save";
	}

	@GetMapping("/main")
	public String main(HttpSession session, Model model) {
	    // 세션에 저장된 나의 이메일 가져오기
	    String loginEmail = (String) session.getAttribute("loginEmail");
	    MemberDTO memberDTO = memberService.findByMemberEmail(loginEmail);
	    
	    // MemberDTO에서 memberName을 모델에 추가
	    model.addAttribute("memberName", memberDTO.getMemberName()); // memberName을 모델에 추가
	 // 세션에도 memberName 저장
	    session.setAttribute("memberName", memberDTO.getMemberName());
	    	
	    return "member/main";
	}
	
	@PostMapping("/logout")
	public String logout(HttpSession session) {
		// 세션에서 로그인 정보 제거
		session.removeAttribute("loginEmail");
		return "redirect:/";
	}

	@PostMapping("/save")
	public String save(@ModelAttribute MemberDTO memberDTO) {
		int saveResult = memberService.save(memberDTO);
		if (saveResult > 0) {
			return "member/login";
		} else {
			return "member/save";
		}
	}

	@GetMapping("/login")
	public String loginForm() {
		return "member/login";
	}

	@PostMapping("/login")
	public String login(@ModelAttribute MemberDTO memberDTO, HttpSession session, Model model, HttpServletResponse response) {
		boolean loginResult = memberService.login(memberDTO);
		if (loginResult) {
			session.setAttribute("loginEmail", memberDTO.getMemberEmail());

			return "redirect:/member/main";
		} else {
			model.addAttribute("loginError", "로그인 정보가 일치하지 않습니다.");
			return "member/login";
		}

	}

	@GetMapping("/")
	public String findAll(Model model) {
		List<MemberDTO> memberDTOList = memberService.findAll();
		model.addAttribute("memberList", memberDTOList);
		return "member/list";
	}

	// /member?id=1
	@GetMapping
	public String findById(@RequestParam("id") Long id, Model model) {
		MemberDTO memberDTO = memberService.findById(id);
		model.addAttribute("member", memberDTO);
		return "member/detail";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam("id") Long id) {
		memberService.delete(id);
		return "redirect:/member/";
	}

	// 수정화면 요청
	@GetMapping("/update")
	public String updateForm(HttpSession session, Model model) {
		// 세션에 저장된 나의 이메일 가져오기
		String loginEmail = (String) session.getAttribute("loginEmail");
		MemberDTO memberDTO = memberService.findByMemberEmail(loginEmail);
		model.addAttribute("member", memberDTO);

		return "member/update";
	}

	// 수정 처리
	@PostMapping("/update")
	public String update(@ModelAttribute MemberDTO memberDTO) {
		boolean result = memberService.update(memberDTO);
		if (result) {
			return "redirect:/member?id=" + memberDTO.getId();
		} else {
			return "home";
		}
	}

	@PostMapping("/email-check")
	public @ResponseBody String emailCheck(@RequestParam("memberEmail") String memberEmail) {
		System.out.println("memberEmail = " + memberEmail);
		String checkResult = memberService.emailCheck(memberEmail);
		return checkResult;
	}

}