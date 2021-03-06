package com.cg.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.dao.IEmployeeDao;
import com.cg.entities.EmployeeBean;
import com.cg.entities.LeaveBean;
import com.cg.entities.UserMasterBean;
import com.cg.exception.EmployeeException;
@Service
@Transactional
public class EmployeeServiceImpl implements IEmployeeService{

	@Autowired
	IEmployeeDao employeeDao;
	
	@Override
	public void addEmployee(EmployeeBean employeebean)
			throws EmployeeException {
		employeeDao.addEmployee(employeebean);
	}

	@Override
	public List<EmployeeBean> displayAll() throws EmployeeException {
		return employeeDao.displayAll();
	}

	@Override
	public EmployeeBean getDetailsById(String employeeId)
			throws EmployeeException {
		return employeeDao.getDetailsById(employeeId);
	}

	

	@Override
	public List<String> getGrades() throws EmployeeException {
		return employeeDao.getGrades();
	}

	@Override
	public boolean modifyEmp(EmployeeBean bean) throws EmployeeException {
		return employeeDao.modifyEmp(bean);
	}

	@Override
	public List<EmployeeBean> search(EmployeeBean bean)
			throws EmployeeException {
		return employeeDao.search(bean);
	}

	@Override
	public String getDeptName(int deptId) throws EmployeeException {
		return employeeDao.getDeptName(deptId);
	}

	@Override
	public boolean validDetails(EmployeeBean bean) throws EmployeeException {
		return employeeDao.validDetails(bean);
	}

	@Override
	public UserMasterBean isValid(String user, String pass) throws EmployeeException {
		return employeeDao.isValid(user, pass);
	}

	@Override
	public LeaveBean addLeaveDetails(EmployeeBean employee,LeaveBean bean) {
		// TODO Auto-generated method stub
		return employeeDao.addLeaveDetails(employee,bean);
	}

	@Override
	public EmployeeBean getDetailsByName(String userName) {
		return employeeDao.getDetailsByName(userName);
	}

	@Override
	public ArrayList<LeaveBean> fetchLeaveDetails(String employeeid) {
		return employeeDao.fetchLeaveDetails(employeeid);
		
	}


	
}
