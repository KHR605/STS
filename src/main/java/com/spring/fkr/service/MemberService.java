package com.spring.fkr.service;

import com.spring.fkr.vo.MemberVO;

public interface MemberService {
	public void regist(MemberVO vo)throws Exception;
	public int read(MemberVO vo)throws Exception;
}
