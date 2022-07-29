package com.probee.waggle.model.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.probee.waggle.model.dto.UserAddressDto;
import com.probee.waggle.model.service.BoardService;
import com.probee.waggle.model.service.VolunteerService;

@Controller
@RequestMapping("/vol")
public class VolunteerController {
	
	@Autowired
	VolunteerService volunteerService;
	@Autowired
	BoardService boardService;
	
	@GetMapping("/submit") //지원하기
	public String Vol(int vo_UCode, int vo_No) {
		
		// 지원자의 주소 여부 확인후 없으면 마이페이지 주소 업데이트 폼으로 이동
		UserAddressDto add_dto = boardService.selectUserAddr(vo_UCode);

		if(add_dto == null) {
			return "redirect:/mypage/profileEdit?ua_UCode="+vo_UCode;
		}
		
		int res = volunteerService.Submit(vo_UCode, vo_No);
		
		if(res>0) {
			return "redirect:/board/detail?req_No=" +vo_No;
		}
		
		return "redirect:/board/list";
	}
	
	@GetMapping("/cancel") // 지원취소
	public String Cancel(int vo_UCode, int vo_No , HttpSession session) {
		
		int res = volunteerService.Cancel(vo_No,vo_UCode);
		
		if(res>0) {
			session.setAttribute("vo_UCode", -1);
			return "redirect:/board/detail?req_No=" +vo_No;
		}
		return "redirect:/board/detail?req_No=" +vo_No;
	}
	
	@GetMapping("/undo") // 24시간전 수행취소
	public String Undo(int vo_UCode, int vo_No , HttpSession session) {
		
		int res = volunteerService.Block(vo_No,vo_UCode); // 수행자 차단
		volunteerService.ResCancel(vo_No, vo_UCode); // 결과물 취소(0) 상태
		
		if(res>0) {
			session.setAttribute("vo_UCode", -1);
			boardService.Recruit(vo_No); // 모집중으로 변환
			return "redirect:/board/detail?req_No=" +vo_No;
		}
		return "redirect:/board/detail?req_No=" +vo_No;
	}
	
	@GetMapping("/lateundo") // 24시간후 수행취소
	public String LateUndo(int vo_UCode, int vo_No , HttpSession session) {
		
		int res = volunteerService.Block(vo_No,vo_UCode); // 수행자 차단
		volunteerService.ResRevoke(vo_No, vo_UCode); // 결과물 취소 상태
		
		if(res>0) {
			session.setAttribute("vo_UCode", -1);
			boardService.Recruit(vo_No); // 모집중으로 변환
			return "redirect:/board/detail?req_No=" +vo_No;
		}
		return "redirect:/board/detail?req_No=" +vo_No;
	}

}
