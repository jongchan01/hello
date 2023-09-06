package com.mycom.hello.board;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardRepository {

	@Autowired
	private SqlSessionTemplate sql;

	public int save(BoardDTO boardDTO) {
		return sql.insert("Board.save", boardDTO);
	}

	public List<BoardDTO> findAll() {
		return sql.selectList("Board.findAll");
	}

	public BoardDTO findById(Long id) {
		return sql.selectOne("Board.findById", id);
	}

	public void updateHits(Long id) {
		sql.update("Board.updateHits", id);

	}

	public void delete(Long id) {
		sql.delete("Board.delete", id);

	}

	public void update(BoardDTO boardDTO) {
		sql.update("Board.update", boardDTO);

	}

	public List<BoardDTO> paingList(Map<String, Integer> pagingParams) {
		return sql.selectList("Board.pagingList", pagingParams);
	}

	public int boardCount() {
		return sql.selectOne("Board.boardCount");
	}

}
