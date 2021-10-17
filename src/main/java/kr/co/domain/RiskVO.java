package kr.co.domain;

import java.io.Serializable;

public class RiskVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String pjId;
	private String pjName;
	private String riskId;
	private String riskName;
	private String riskRegDate;
	private String riskWriter;
	private String riskContent;
	
	public RiskVO() {
		// TODO Auto-generated constructor stub
	}

	public RiskVO(String pjId, String pjName, String riskId, String riskName, String riskRegDate, String riskWriter,
			String riskContent) {
		super();
		this.pjId = pjId;
		this.pjName = pjName;
		this.riskId = riskId;
		this.riskName = riskName;
		this.riskRegDate = riskRegDate;
		this.riskWriter = riskWriter;
		this.riskContent = riskContent;
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

	public String getRiskId() {
		return riskId;
	}

	public void setRiskId(String riskId) {
		this.riskId = riskId;
	}

	public String getRiskName() {
		return riskName;
	}

	public void setRiskName(String riskName) {
		this.riskName = riskName;
	}

	public String getRiskRegDate() {
		return riskRegDate;
	}

	public void setRiskRegDate(String riskRegDate) {
		this.riskRegDate = riskRegDate;
	}

	public String getRiskWriter() {
		return riskWriter;
	}

	public void setRiskWriter(String riskWriter) {
		this.riskWriter = riskWriter;
	}

	public String getRiskContent() {
		return riskContent;
	}

	public void setRiskContent(String riskContent) {
		this.riskContent = riskContent;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	


}
