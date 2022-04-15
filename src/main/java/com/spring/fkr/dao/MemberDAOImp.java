package com.spring.fkr.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.fkr.vo.MemberVO;

@Repository
public class MemberDAOImp implements MemberDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.myp.mapper.MemberMapper";
	
	@Override
	public void create(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace + ".create", vo);
	}

	@Override
	public int read(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".read", vo);
		
	}
	
}
