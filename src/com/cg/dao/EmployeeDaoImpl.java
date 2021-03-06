package com.cg.dao;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.cg.entities.EmployeeBean;
import com.cg.entities.LeaveBean;
import com.cg.entities.UserMasterBean;
import com.cg.exception.EmployeeException;

@Repository
public class EmployeeDaoImpl implements IEmployeeDao {

	@PersistenceContext
	EntityManager entity;

	@Override
	public void addEmployee(EmployeeBean employeebean) throws EmployeeException {
		entity.persist(employeebean);
		entity.flush();
	}

	@Override
	public List<EmployeeBean> displayAll() throws EmployeeException {
		String sql = "SELECT bean FROM EmployeeBean bean";
		TypedQuery<EmployeeBean> query = entity.createQuery(sql,
				EmployeeBean.class);
		List<EmployeeBean> list = query.getResultList();
		return list;
	}

	@Override
	public EmployeeBean getDetailsById(String employeeId)
			throws EmployeeException {
		
		return entity.find(EmployeeBean.class, employeeId);
	}

	@Override
	public List<String> getGrades() throws EmployeeException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean modifyEmp(EmployeeBean bean) throws EmployeeException {
		String sql = "UPDATE EmployeeBean SET firstName=:firstName,lastName=:lastName,dateOfBirth=:dateOfBirth,dateOfJoining=:dateOfJoining,departmentId=:departmentId,grade=:grade,designation=:designation,salary=:salary,gender=:gender,maritalStatus=:maritalStatus,address=:address,phoneNumber=:phoneNumber,managerId=:managerId WHERE employeeId=:employeeId";
		Query query = entity.createQuery(sql);
		query.setParameter("employeeId", bean.getEmployeeId());
		query.setParameter("firstName", bean.getFirstName());
		query.setParameter("lastName", bean.getLastName());
		query.setParameter("dateOfBirth", bean.getDateOfBirth());
		query.setParameter("dateOfJoining", bean.getDateOfJoining());
		query.setParameter("departmentId", bean.getDepartmentId());
		query.setParameter("grade", bean.getGrade());
		query.setParameter("designation", bean.getDesignation());
		query.setParameter("salary", bean.getSalary());
		query.setParameter("gender", bean.getGender());
		query.setParameter("maritalStatus", bean.getMaritalStatus());
		query.setParameter("address", bean.getAddress());
		query.setParameter("phoneNumber", bean.getPhoneNumber());
		query.setParameter("managerId", bean.getManagerId());
		int status = query.executeUpdate();
		if (status > 0)
			return true;
		else
			return false;

	}

	@Override
	public List<EmployeeBean> search(EmployeeBean bean)
			throws EmployeeException {

		String sql = "SELECT bean FROM EmployeeBean bean";

		TypedQuery<EmployeeBean> query = entity.createQuery(sql,
				EmployeeBean.class);
		List<EmployeeBean> list = query.getResultList();
		List<EmployeeBean> l = new ArrayList<EmployeeBean>();

		for (EmployeeBean e : list) {
			if (e.getEmployeeId().equals(bean.getEmployeeId())
					|| e.getFirstName().equals(bean.getFirstName())
					|| e.getLastName().equals(bean.getLastName())
					|| e.getGrade().equals(bean.getGrade())
					|| e.getMaritalStatus().equals(bean.getMaritalStatus()))
				l.add(e);
		}
		return l;
	}

	@Override
	public String getDeptName(int deptId) throws EmployeeException {

		return null;
	}

	@Override
	public boolean validDetails(EmployeeBean bean) throws EmployeeException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public UserMasterBean isValid(String user, String pass)
			throws EmployeeException {

		try {
			String sql = "SELECT bean FROM UserMasterBean bean WHERE bean.userName=:user AND bean.userpassword=:pass";
			TypedQuery<UserMasterBean> query = entity.createQuery(sql,
					UserMasterBean.class);
			query.setParameter("user", user);
			query.setParameter("pass", pass);
			UserMasterBean bean = query.getSingleResult();
			return bean;
		} catch (Exception e) {
			throw new EmployeeException("DOES NOT MATCH WITH THE DATABASE");
		}
	}

	@Override
	public LeaveBean addLeaveDetails(EmployeeBean employee,LeaveBean bean) {
		System.out.println("rafds");
		System.out.println(employee.getEmployeeId());
		bean.setEmployeeId(employee.getEmployeeId());
		System.out.println(employee.getRemainingLeaves());
		bean.setRemainingLeaves(employee.getRemainingLeaves());
		bean.setManagerId(employee.getManagerId());
		bean.setLeaveStatus("applied");
		Integer workdays=bean.getDuration();
		System.out.println("workday:"+workdays);
		if (workdays < 1) {
			System.out.println("1");
			bean.setEnddate(bean.getStartdate());
		}
		LocalDate result = bean.getStartdate().toLocalDate();
		int addedDays = 0;
		while (addedDays < workdays) {
			System.out.println("2");
			result = result.plusDays(1);
		if (!(result.getDayOfWeek() == DayOfWeek.SATURDAY || result
				.getDayOfWeek() == DayOfWeek.SUNDAY)) {
			++addedDays;
		}
		}
		bean.setEnddate(java.sql.Date.valueOf( result ));
		System.out.println(bean.getEnddate());
		entity.persist(bean);
		return bean;
	}

	@Override
	public EmployeeBean getDetailsByName(String userName) {
		String sql="select e from EmployeeBean e where e.firstName=:userName";
		TypedQuery<EmployeeBean> query = entity.createQuery(sql,
				EmployeeBean.class);
		query.setParameter("userName",userName);
		EmployeeBean bean=query.getSingleResult();
		return bean;
	}

	@Override
	public ArrayList<LeaveBean> fetchLeaveDetails(String employeeid) {
		String sql="Select e from LeaveBean e where e.managerId=:eId";
		TypedQuery<LeaveBean> query = entity.createQuery(sql,
				LeaveBean.class);
		query.setParameter("eId",employeeid);
		ArrayList<LeaveBean> list = (ArrayList<LeaveBean>) query.getResultList();
//		for(EmployeeBean bean:list)
//		{
//			String id=bean.getEmployeeId();
//			String squery="Select leave from LeaveBean leave where leave.employeeId=:eId";
//			TypedQuery<LeaveBean> q = entity.createQuery(squery,
//					LeaveBean.class);
//			q.setParameter("eId",id);
//			LeaveBean lbean=q.getSingleResult();
//			return lbean;
//		}
		return list;
	}

//	@Override
//	public LeaveBean fetchDetails(String employeeId) {
//		String sql="Select bean from LeaveBean bean where employeeId=:employeeId";
//		TypedQuery<LeaveBean> query = entity.createQuery(sql,LeaveBean.class);
//		query.setParameter("employeeId",employeeId);
//		LeaveBean bean=query.getSingleResult();
//		return bean;
//	}

}
