package com.mycom.hello.member;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberRepository {

	@Autowired
	private SqlSessionTemplate sql;

	public int save(MemberDTO memberDTO) {
		System.out.println("memberDTO = " + memberDTO);
		return sql.insert("Member.save", memberDTO);
	}

	public MemberDTO login(MemberDTO memberDTO) {
		return sql.selectOne("Member.login", memberDTO);
	}

	public List<MemberDTO> findAll() {
		return sql.selectList("Member.findAll");
	}

	public MemberDTO findById(Long id) {
		return sql.selectOne("Member.findById", id);
	}

	public Object delete(Long id) {
		return sql.delete("Member.delete", id);
	}

	public MemberDTO findByMemberEmail(String loginEmail) {
		return sql.selectOne("Member.findByMemberEmail", loginEmail);
	}

	public int update(MemberDTO memberDTO) {
		return sql.update("Member.update", memberDTO);
	}

}
