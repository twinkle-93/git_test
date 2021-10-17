package kr.co.domain;

import java.io.Serializable;

public class ProjectVO implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String pjId;
	private String pjName;
	private String writer;
	private String regDate;
	private String startDate;
	private String endDate;
	private String pjMan;
	private int planMM;
	private int exeMM;
	private String exePM;
	private String price;
	private String exePrice;
	
	public ProjectVO() {
		// TODO Auto-generated constructor stub
	}

	public ProjectVO(String pjId, String pjName, String writer, String regDate, String startDate, String endDate,
			String pjMan, int planMM, int exeMM, String exePM, String price, String exePrice) {
		super();
		this.pjId = pjId;
		this.pjName = pjName;
		this.writer = writer;
		this.regDate = regDate;
		this.startDate = startDate;
		this.endDate = endDate;
		this.pjMan = pjMan;
		this.planMM = planMM;
		this.exeMM = exeMM;
		this.exePM = exePM;
		this.price = price;
		this.exePrice = exePrice;
	}

	public String getPjId() {
		return pjId;
	}

	public void setPjId(String pjId) {
		this.pjId = pjId;
	}

	public String getPjName() {
		return pjName;
	}

	public void setPjName(String pjName) {
		this.pjName = pjName;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getPjMan() {
		return pjMan;
	}

	public void setPjMan(String pjMan) {
		this.pjMan = pjMan;
	}

	public int getPlanMM() {
		return planMM;
	}

	public void setPlanMM(int planMM) {
		this.planMM = planMM;
	}

	public int getExeMM() {
		return exeMM;
	}

	public void setExeMM(int exeMM) {
		this.exeMM = exeMM;
	}

	public String getExePM() {
		return exePM;
	}

	public void setExePM(String exePM) {
		this.exePM = exePM;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getExePrice() {
		return exePrice;
	}

	public void setExePrice(String exePrice) {
		this.exePrice = exePrice;
	}
	
	
}
