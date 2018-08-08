package com.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.po.Department;
import com.po.User;
import com.po.Vote;
import com.service.DepartmentService;
import com.service.UserService;
import com.service.VoteService;
import com.util.DateUtil;
import com.vo.SummaryVO;


@Controller("voteAction")
public class VoteActiom extends BaseAction{
	
	@Autowired
	private DepartmentService departmentService;
	@Autowired
	private VoteService voteService;
	@Autowired
	private UserService userService;
	private String type;
	private String page;
	private List<SummaryVO> summaryList;
	private String dept;
	
	
	public String inputVote(){
		HttpSession session = super.getSession();
		HttpServletRequest request = super.getRequest();
		List<Vote> voteList = new ArrayList<Vote>();
		
		User user = (User) session.getAttribute("User");
		String Time = (String) session.getAttribute("Time");
		
		//测试
		/*user = userService.getUserByUname("admin");
		Time = "2017-2018/1/1";
		session.setAttribute("UserName", user.getuName());
		session.setAttribute("Time", Time);*/
		
		String[] dw = request.getParameterValues("dw");
		String[] xz = request.getParameterValues("xz");
		String[] jj = request.getParameterValues("jj");
		String[] gh = request.getParameterValues("gh");
		String[] tw = request.getParameterValues("tw");
		String[] jk = request.getParameterValues("jk");
		String[] xs = request.getParameterValues("xs");
		String[] cw = request.getParameterValues("cw");
		String[] zc = request.getParameterValues("zc");
		String[] hz = request.getParameterValues("hz");
		String[] aq = request.getParameterValues("aq");
		String[] lt = request.getParameterValues("lt");
		String[] hq = request.getParameterValues("hq");
		String[] ts = request.getParameterValues("ts");
		String[] rl = request.getParameterValues("rl");
		
		String logsTime = DateUtil.getDate();
		Department deptDW = new Department();
		deptDW = departmentService.getDeptByDname("党委工作部");
		Vote voteDW = new Vote(Integer.parseInt(dw[0]), Integer.parseInt(dw[1]), 
				Integer.parseInt(dw[2]), Integer.parseInt(dw[3]), Integer.parseInt(dw[4]), 
				Integer.parseInt(dw[5]), type, Time, deptDW, user, logsTime);
		voteList.add(voteDW);
		
		Department deptXZ = new Department();
		deptXZ = departmentService.getDeptByDname("行政办公室");
		Vote voteXZ = new Vote(Integer.parseInt(xz[0]), Integer.parseInt(xz[1]), 
				Integer.parseInt(xz[2]), Integer.parseInt(xz[3]), Integer.parseInt(xz[4]), 
				Integer.parseInt(xz[5]), type, Time, deptXZ, user, logsTime);
		voteList.add(voteXZ);
		
		Department deptJJ = new Department();
		deptJJ = departmentService.getDeptByDname("纪监审办公室");
		Vote voteJJ = new Vote(Integer.parseInt(jj[0]), Integer.parseInt(jj[1]), 
				Integer.parseInt(jj[2]), Integer.parseInt(jj[3]), Integer.parseInt(jj[4]), 
				Integer.parseInt(jj[5]), type, Time, deptJJ, user, logsTime);
		voteList.add(voteJJ);
		
		Department deptGH = new Department();
		deptGH = departmentService.getDeptByDname("工会");
		Vote voteGH = new Vote(Integer.parseInt(gh[0]), Integer.parseInt(gh[1]), 
				Integer.parseInt(gh[2]), Integer.parseInt(gh[3]), Integer.parseInt(gh[4]), 
				Integer.parseInt(gh[5]), type, Time, deptGH, user, logsTime);
		voteList.add(voteGH);
		
		Department deptTW = new Department();
		deptTW = departmentService.getDeptByDname("团委");
		Vote voteTW = new Vote(Integer.parseInt(tw[0]), Integer.parseInt(tw[1]), 
				Integer.parseInt(tw[2]), Integer.parseInt(tw[3]), Integer.parseInt(tw[4]), 
				Integer.parseInt(tw[5]), type, Time, deptTW, user, logsTime);
		voteList.add(voteTW);
		
		Department deptJK = new Department();
		deptJK = departmentService.getDeptByDname("教科部");
		Vote voteJK = new Vote(Integer.parseInt(jk[0]), Integer.parseInt(jk[1]), 
				Integer.parseInt(jk[2]), Integer.parseInt(jk[3]), Integer.parseInt(jk[4]), 
				Integer.parseInt(jk[5]), type, Time, deptJK, user, logsTime);
		voteList.add(voteJK);
		
		Department deptXS = new Department();
		deptXS = departmentService.getDeptByDname("学生工作处");
		Vote voteXS = new Vote(Integer.parseInt(xs[0]), Integer.parseInt(xs[1]), 
				Integer.parseInt(xs[2]), Integer.parseInt(xs[3]), Integer.parseInt(xs[4]), 
				Integer.parseInt(xs[5]), type, Time, deptXS, user, logsTime);
		voteList.add(voteXS);
		
		Department deptCW = new Department();
		deptCW = departmentService.getDeptByDname("财务部");
		Vote voteCW = new Vote(Integer.parseInt(cw[0]), Integer.parseInt(cw[1]), 
				Integer.parseInt(cw[2]), Integer.parseInt(cw[3]), Integer.parseInt(cw[4]), 
				Integer.parseInt(cw[5]), type, Time, deptCW, user, logsTime);
		voteList.add(voteCW);
		
		Department deptZC = new Department();
		deptZC = departmentService.getDeptByDname("资产部");
		Vote voteZC = new Vote(Integer.parseInt(zc[0]), Integer.parseInt(zc[1]), 
				Integer.parseInt(zc[2]), Integer.parseInt(zc[3]), Integer.parseInt(zc[4]), 
				Integer.parseInt(zc[5]), type, Time, deptZC, user, logsTime);
		voteList.add(voteZC);
		
		Department deptHZ = new Department();
		deptHZ = departmentService.getDeptByDname("合作办学办公室");
		Vote voteHZ = new Vote(Integer.parseInt(hz[0]), Integer.parseInt(hz[1]), 
				Integer.parseInt(hz[2]), Integer.parseInt(hz[3]), Integer.parseInt(hz[4]), 
				Integer.parseInt(hz[5]), type, Time, deptHZ, user, logsTime);
		voteList.add(voteHZ);
		
		Department deptAQ = new Department();
		deptAQ = departmentService.getDeptByDname("安全保卫部");
		Vote voteAQ = new Vote(Integer.parseInt(aq[0]), Integer.parseInt(aq[1]), 
				Integer.parseInt(aq[2]), Integer.parseInt(aq[3]), Integer.parseInt(aq[4]), 
				Integer.parseInt(aq[5]), type, Time, deptAQ, user, logsTime);
		voteList.add(voteAQ);
		
		Department deptLT = new Department();
		deptLT = departmentService.getDeptByDname("离退休工作办公室");
		Vote voteLT = new Vote(Integer.parseInt(lt[0]), Integer.parseInt(lt[1]), 
				Integer.parseInt(lt[2]), Integer.parseInt(lt[3]), Integer.parseInt(lt[4]), 
				Integer.parseInt(lt[5]), type, Time, deptLT, user, logsTime);
		voteList.add(voteLT);
		
		Department deptHQ = new Department();
		deptHQ = departmentService.getDeptByDname("后勤管理处");
		Vote voteHQ = new Vote(Integer.parseInt(hq[0]), Integer.parseInt(hq[1]), 
				Integer.parseInt(hq[2]), Integer.parseInt(hq[3]), Integer.parseInt(hq[4]), 
				Integer.parseInt(hq[5]), type, Time, deptHQ, user, logsTime);
		voteList.add(voteHQ);
		
		Department deptTS = new Department();
		deptTS = departmentService.getDeptByDname("图书馆");
		Vote voteTS = new Vote(Integer.parseInt(ts[0]), Integer.parseInt(ts[1]), 
				Integer.parseInt(ts[2]), Integer.parseInt(ts[3]), Integer.parseInt(ts[4]), 
				Integer.parseInt(ts[5]), type, Time, deptTS, user, logsTime);
		voteList.add(voteTS);
		
		Department deptRL = new Department();
		deptRL = departmentService.getDeptByDname("人力资源部");
		Vote voteRL = new Vote(Integer.parseInt(rl[0]), Integer.parseInt(rl[1]), 
				Integer.parseInt(rl[2]), Integer.parseInt(rl[3]), Integer.parseInt(rl[4]), 
				Integer.parseInt(rl[5]), type, Time, deptRL, user, logsTime);
		voteList.add(voteRL);
		
		if(voteService.addVote(voteList)){
			page = "success";
		}else{
			page = "error";
		}

		return "Input_Redirect";
	}
	
	public String summaryTableByType(){
		HttpSession session = super.getSession();
		String Time = (String) session.getAttribute("Time");
		//测试
		/*Time = "2017-2018/1/1";*/
		
		if(type == null || "".equals(type)){
			page = "error";
			return "Print_Redirect";
		}
		summaryList = voteService.summaryVOByTypeAndTime(type, Time); 
		if(summaryList==null){
			page = "successnull";
			return "Print_Redirect";
		}
		return "Print_Success";
	}
	
	public String summaryTableFinal(){
		HttpSession session = super.getSession();
		String Time = (String) session.getAttribute("Time");
		//测试
		/*Time = "2017-2018/1/1";*/
		
		summaryList = voteService.summaryVOFinal(Time);
		if(summaryList==null){
			page = "successnull";
			return "Print_Redirect";
		}
		return "Print_Success";
	}
	
	public String summaryTableByDept(){
		HttpSession session = super.getSession();
		String Time = (String) session.getAttribute("Time");
		//测试
		/*Time = "2017-2018/1/1";*/
		
		if(dept == null || "".equals(dept)){
			page = "error";
			return "Print_Redirect";
		}
		
		summaryList = voteService.summaryVOByDept(Time,dept);
		if(summaryList==null){
			page = "successnull";
			return "Print_Redirect"; 
		}
		return "Print_Success";
	}
	
	
	

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public List<SummaryVO> getSummaryList() {
		return summaryList;
	}

	public void setSummaryList(List<SummaryVO> summaryList) {
		this.summaryList = summaryList;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}
	

}
