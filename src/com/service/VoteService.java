package com.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.VoteDao;
import com.po.Department;
import com.po.Vote;
import com.util.FormatByNum;
import com.vo.SummaryVO;

@Service("voteService")
public class VoteService {
	@Autowired
	@Qualifier("voteDaoImpl")
	private VoteDao voteDao;
	@Autowired
	private DepartmentService departmentService;
	
	@Transactional
	public boolean addVote(List<Vote> data){
		for(Vote v:data){
			if(!voteDao.addVote(v)){
				return false;
			}
		}
		return true;
	}
	public List<SummaryVO> summaryVOByDept(String time,String dept){
		List<SummaryVO> result = new ArrayList<SummaryVO>();
		List<SummaryVO> tempFinal = new ArrayList<SummaryVO>();
		String dName = dept;
		String type = "A";
		SummaryVO dwA = this.sumVoteByTypeAndTimeAndDept(type, time, dName);
		if(dwA == null){
			dwA = new SummaryVO(type,dName,"","","","","","","");
		}
		dwA.setType("校区领导（A）");
		result.add(dwA);
		type = "B";
		SummaryVO dwB = this.sumVoteByTypeAndTimeAndDept(type, time, dName);
		if(dwB == null){
			dwB = new SummaryVO(type,dName,"","","","","","","");
		}
		dwB.setType("机关部门（B）");
		result.add(dwB);
		type = "C";
		SummaryVO dwC = this.sumVoteByTypeAndTimeAndDept(type, time, dName);
		if(dwC == null){
			dwC = new SummaryVO(type,dName,"","","","","","","");
		}
		dwC.setType("基层单位（C）");
		result.add(dwC);
		tempFinal = this.summaryVOFinal(time);
		if(tempFinal == null){
			SummaryVO tempNull = new SummaryVO("合计",dept,"","","","","","","");
			result.add(tempNull);
		}else{
			for(SummaryVO vo:tempFinal){
				if(dName.equals(vo.getDept())){
					vo.setType("合计");
					result.add(vo);
					break;
				}
			}
			
		}
		
		return result;
		
	}
	public List<SummaryVO> summaryVOFinal(String time){
		List<SummaryVO> result = new ArrayList<SummaryVO>();
		String type = "A";
		List<SummaryVO> AVO = this.summaryVOByTypeAndTime(type, time);
		type = "B";
		List<SummaryVO> BVO = this.summaryVOByTypeAndTime(type, time);
		type = "C";
		List<SummaryVO> CVO = this.summaryVOByTypeAndTime(type, time);
		if(AVO == null || BVO == null || CVO == null){
			return null;
		}
		double gzzz = 0;
		double gzcx = 0;
		double zcnl = 0;
		double xtgt = 0;
		double gzjl = 0;
		double gzln = 0;
		double zf = 0;
		for(int i=0;i<AVO.size();i++){
			SummaryVO vo = new SummaryVO();
			gzzz = 0;
			gzcx = 0;
			zcnl = 0;
			xtgt = 0;
			gzjl = 0;
			gzln = 0;
			zf = 0;
			gzzz = Double.parseDouble(AVO.get(i).getgZzz())*0.3 + 
					Double.parseDouble(BVO.get(i).getgZzz())*0.3 + 
					Double.parseDouble(CVO.get(i).getgZzz())*0.4;
			
			gzcx = Double.parseDouble(AVO.get(i).getgZcx())*0.3 +
					Double.parseDouble(BVO.get(i).getgZcx())*0.3 + 
					Double.parseDouble(CVO.get(i).getgZcx())*0.4;
			
			zcnl = Double.parseDouble(AVO.get(i).getzCnl())*0.3 +
					Double.parseDouble(BVO.get(i).getzCnl())*0.3 + 
					Double.parseDouble(CVO.get(i).getzCnl())*0.4;
			
			xtgt = Double.parseDouble(AVO.get(i).getxTgt())*0.3 +
					Double.parseDouble(BVO.get(i).getxTgt())*0.3 + 
					Double.parseDouble(CVO.get(i).getxTgt())*0.4;
			
			gzjl = Double.parseDouble(AVO.get(i).getgZjl())*0.3 +
					Double.parseDouble(BVO.get(i).getgZjl())*0.3 + 
					Double.parseDouble(CVO.get(i).getgZjl())*0.4;
			
			gzln = Double.parseDouble(AVO.get(i).getgZln())*0.3 +
					Double.parseDouble(BVO.get(i).getgZln())*0.3 + 
					Double.parseDouble(CVO.get(i).getgZln())*0.4;
			zf = gzzz + gzcx + zcnl + xtgt + gzjl + gzln;
			vo.setgZzz(FormatByNum.format(gzzz));
			vo.setgZcx(FormatByNum.format(gzcx));
			vo.setzCnl(FormatByNum.format(zcnl));
			vo.setxTgt(FormatByNum.format(xtgt));
			vo.setgZjl(FormatByNum.format(gzjl));
			vo.setgZln(FormatByNum.format(gzln));
			vo.setZf(FormatByNum.format(zf));
			vo.setDept(AVO.get(i).getDept());
			result.add(vo);
		}
		return result;
	}
	public List<SummaryVO> summaryVOByTypeAndTime(String type,String time){
		List<SummaryVO> result = new ArrayList<SummaryVO>();
		String dName = "党委工作部";
		SummaryVO dw = this.sumVoteByTypeAndTimeAndDept(type, time, dName);
		if(dw==null){
			return null;
		}
		result.add(dw);
		
		dName = "行政办公室";
		SummaryVO xz = this.sumVoteByTypeAndTimeAndDept(type, time, dName);
		if(xz == null){
			return null;
		}
		result.add(xz);
		
		dName = "纪监审办公室";
		SummaryVO jj = this.sumVoteByTypeAndTimeAndDept(type, time, dName);
		if(jj == null){
			return null;
		}
		result.add(jj);
		
		dName = "工会";
		SummaryVO gh = this.sumVoteByTypeAndTimeAndDept(type, time, dName);
		if(gh == null){
			return null;
		}
		result.add(gh);
		
		dName = "团委";
		SummaryVO tw = this.sumVoteByTypeAndTimeAndDept(type, time, dName);
		if(tw == null){
			return null;
		}
		result.add(tw);
		
		dName = "教科部";
		SummaryVO jk = this.sumVoteByTypeAndTimeAndDept(type, time, dName);
		if(jk == null){
			return null;
		}
		result.add(jk);
		
		dName = "学生工作处";
		SummaryVO xs = this.sumVoteByTypeAndTimeAndDept(type, time, dName);
		if(xs == null){
			return null;
		}
		result.add(xs);
		
		dName = "财务部";
		SummaryVO cw = this.sumVoteByTypeAndTimeAndDept(type, time, dName);
		if(cw == null){
			return null;
		}
		result.add(cw);
		
		dName = "资产部";
		SummaryVO zc = this.sumVoteByTypeAndTimeAndDept(type, time, dName);
		if(zc == null){
			return null;
		}
		result.add(zc);
		
		dName = "合作办学办公室";
		SummaryVO hz = this.sumVoteByTypeAndTimeAndDept(type, time, dName);
		if(hz == null){
			return null;
		}
		result.add(hz);
		
		dName = "安全保卫部";
		SummaryVO aq = this.sumVoteByTypeAndTimeAndDept(type, time, dName);
		if(aq == null){
			return null;
		}
		result.add(aq);
		
		dName = "离退休工作办公室";
		SummaryVO lt = this.sumVoteByTypeAndTimeAndDept(type, time, dName);
		if(lt == null){
			return null;
		}
		result.add(lt);
		
		dName = "后勤管理处";
		SummaryVO hq = this.sumVoteByTypeAndTimeAndDept(type, time, dName);
		if(hq == null){
			return null;
		}
		result.add(hq);
		
		dName = "图书馆";
		SummaryVO ts = this.sumVoteByTypeAndTimeAndDept(type, time, dName);
		if(ts == null){
			return null;
		}
		result.add(ts);
		
		dName = "人力资源部";
		SummaryVO rl = this.sumVoteByTypeAndTimeAndDept(type, time, dName);
		if(rl == null){
			return null;
		}
		result.add(rl);
		
		return result;
	}
	
	
	
	public SummaryVO sumVoteByTypeAndTimeAndDept(String type,String time,String dName){
		Department dw = new Department();
		dw = departmentService.getDeptByDname(dName);
		List<Vote> data = voteDao.getVoteByDateAndTypeAndDept(time, type, dw.getdId());
		if(data==null){
			return null;
		}
		double zznum = 0;
		double cxnum = 0;
		double nlnum = 0;
		double gtnum = 0;
		double jlnum = 0;
		double lnnum = 0;
		
		double zzScore = 0;
		double cxScore = 0;
		double nlScore = 0;
		double gtScore = 0;
		double jlScore = 0;
		double lnScore = 0;
		
		
		for(Vote v:data){
			if(v.getgZzz() != 0){
				zznum++;
				zzScore += v.getgZzz();
			}
			if(v.getgZcx() != 0){
				cxnum++;
				cxScore += v.getgZcx();
			}
			if(v.getzCnl() != 0){
				nlnum++;
				nlScore += v.getzCnl();
			}
			if(v.getxTgt() != 0){
				gtnum++;
				gtScore += v.getxTgt();
			}
			if(v.getgZjl() != 0){
				jlnum++;
				jlScore += v.getgZjl();
			}
			if(v.getgZln() != 0){
				lnnum++;
				lnScore += v.getgZln();
			}
		}
		double tempGzzz = 0;
		double tempGzcx = 0;
		double tempZcnl = 0;
		double tempXtgt = 0;
		double tempGzjl = 0;
		double tempGzln = 0;
		String gzzz = "";
		String gzcx = "";
		String zcnl = "";
		String xtgt = "";
		String gzjl = "";
		String gzln = "";
		if(zznum != 0){
			gzzz = FormatByNum.format(zzScore/zznum);
			tempGzzz = Double.parseDouble(gzzz);
		}
		if(cxnum != 0){
			gzcx = FormatByNum.format(cxScore/cxnum);
			tempGzcx = Double.parseDouble(gzcx);
		}
		if(nlnum != 0){
			zcnl = FormatByNum.format(nlScore/nlnum);
			tempZcnl = Double.parseDouble(zcnl);
		}
		if(gtnum != 0){
			xtgt = FormatByNum.format(gtScore/gtnum);
			tempXtgt = Double.parseDouble(xtgt);
		}
		if(jlnum != 0){
			gzjl = FormatByNum.format(jlScore/jlnum);
			tempGzjl = Double.parseDouble(gzjl);
		}
		if(lnnum != 0){
			gzln = FormatByNum.format(lnScore/lnnum);
			tempGzln = Double.parseDouble(gzln);
		}
		
		double sum = tempGzzz + tempGzcx + tempZcnl + tempXtgt + tempGzjl + tempGzln;
		String zf = FormatByNum.format(sum);
		SummaryVO vo = new SummaryVO(type, dName, gzzz, gzcx, zcnl, xtgt, gzjl, gzln, zf);
		return vo;
	}
	
	

}
