package com.mycom.hello.comment;

import java.sql.Timestamp;

public class CommentDTO {
	private Long id;
	private String commentWriter;
	private String commentContents;
	private Long boardId;
	private Timestamp commentCreatedTime;

	@Override
	public String toString() {
		return "CommentDTO [id=" + id + ", commentWriter=" + commentWriter + ", commentContents=" + commentContents
				+ ", boardId=" + boardId + ", commentCreatedTime=" + commentCreatedTime + "]";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCommentWriter() {
		return commentWriter;
	}

	public void setCommentWriter(String commentWriter) {
		this.commentWriter = commentWriter;
	}

	public String getCommentContents() {
		return commentContents;
	}

	public void setCommentContents(String commentContents) {
		this.commentContents = commentContents;
	}

	public Long getBoardId() {
		return boardId;
	}

	public void setBoardId(Long boardId) {
		this.boardId = boardId;
	}

	public Timestamp getCommentCreatedTime() {
		return commentCreatedTime;
	}

	public void setCommentCreatedTime(Timestamp commentCreatedTime) {
		this.commentCreatedTime = commentCreatedTime;
	}
}
