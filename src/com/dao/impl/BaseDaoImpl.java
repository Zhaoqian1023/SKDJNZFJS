package com.dao.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.dao.BaseDao;

@Repository("baseDaoImpl")
public class BaseDaoImpl implements BaseDao {
	@Resource(name = "mySessionFactory")
	private SessionFactory mySessionFactory;
	
	protected Session getSession() {
		Session session = null;
		/*System.out.println("mySessionFactory:"+mySessionFactory);*/
		try {
			session = mySessionFactory.getCurrentSession();
			/*System.out.println("CurrentSession-----"+session);*/
		} catch (Exception e) {
			session = mySessionFactory.openSession();
			/*System.out.println("openSession-----"+session);*/
		}
		return session;
	}

	@Override
	public boolean add(Object obj) {
		try {
			getSession().save(obj);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean addOrUpdate(Object obj) {
		try {
			getSession().saveOrUpdate(obj);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean delete(Object obj) {
		try {
			getSession().delete(obj);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean update(Object obj) {
		try {
			getSession().merge(obj);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public Object query(Class po, Serializable id) {
		return getSession().get(po, id);
	}

	@Override
	public List queryListBySQL(String sql, Class obj) {
		List result = null;
		if(sql == null){
			sql = "";
		}
		Session session = getSession();
		try {
			Query query = session.createSQLQuery(sql).addEntity(obj);
			result = query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		return result;
	}

	@Override
	public List queryListByHQL(String hql) {
		List result = null;
		if(hql == null){
			hql = "";
		}
		Session session = getSession();
		try {
			Query query = session.createQuery(hql);
			result = query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		return result;
	}

	@Override
	public List queryListBySQL(String sql) {
		List result = null;
		if(sql == null){
			sql = "";
		}
		Session session = getSession();
		try {
			Query query = session.createSQLQuery(sql);
			result = query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		return result;
	}
	
	public SessionFactory getMySessionFactory() {
		return mySessionFactory;
	}

	public void setMySessionFactory(SessionFactory mySessionFactory) {
		this.mySessionFactory = mySessionFactory;
	}

}
