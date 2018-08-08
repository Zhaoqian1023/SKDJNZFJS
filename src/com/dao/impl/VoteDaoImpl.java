package com.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.dao.VoteDao;
import com.po.Vote;

@Repository("voteDaoImpl")
public class VoteDaoImpl extends BaseDaoImpl implements VoteDao {

	@Override
	public boolean addVote(Vote obj) {
		return super.add(obj);
	}

	@Override
	public Vote addVotes(Vote obj) {
		super.getSession().save(obj);
		return obj;
	}

	@Override
	public boolean updateVote(Vote obj) {
		return super.update(obj);
	}

	@Override
	public Vote getVoteByVid(int vId) {
		String hql = "from Vote where vId = "+vId;
		List<Vote> data = new ArrayList<Vote>();
		data = super.queryListByHQL(hql);
		if(data.isEmpty()){
			return null;
		}
		return data.get(0);
	}

	@Override
	public List<Vote> getVoteByDate(String date) {
		String hql = "from Vote where time = '"+date+"'";
		List<Vote> data = new ArrayList<Vote>();
		data = super.queryListByHQL(hql);
		if(data.isEmpty()){
			return null;
		}
		return data;
	}

	@Override
	public List<Vote> getVoteByDateAndTypeAndDept(String date, String type,
			int dId) {
		String sql = "select * from t_vote where Time = '"+date+"' and Type = '"+type+"' and department_Did ="+dId;
		List<Vote> data = new ArrayList<Vote>();
		data = super.queryListBySQL(sql, Vote.class);
		if(data.isEmpty() || data == null){
			return null;
		}
		return data;
	}

}
