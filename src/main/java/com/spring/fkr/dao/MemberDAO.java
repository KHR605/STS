package com.spring.fkr.dao;

import com.spring.fkr.vo.MemberVO;

public interface MemberDAO {
	public void create(MemberVO vo) throws Exception;
	public int read(MemberVO vo) throws Exception;
}
