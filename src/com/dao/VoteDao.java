package com.dao;

import java.util.List;

import com.po.Vote;

public interface VoteDao {
	//新增投票对象
	public boolean addVote(Vote obj);
	//新增投票对象，返回该对象
	public Vote addVotes(Vote obj);
	//更新对象
	public boolean updateVote(Vote obj);
	//通过id获取对象
	public Vote getVoteByVid(int vId);
	//通过时间返回结果集
	public List<Vote> getVoteByDate(String date);
	//通过时间和投票类型和被投票部门返回结果集
	public List<Vote> getVoteByDateAndTypeAndDept(String date, String type, int dId);
	

}
