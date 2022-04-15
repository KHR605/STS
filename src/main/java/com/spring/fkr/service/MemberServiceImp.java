package com.spring.fkr.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.fkr.dao.MemberDAO;
import com.spring.fkr.vo.MemberVO;

@Service
public class MemberServiceImp implements MemberService {
	
	@Inject
	private MemberDAO dao;
	
	@Override
	public void regist(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.create(vo);
	}

	@Override
	public int read(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(vo);
	}

}
