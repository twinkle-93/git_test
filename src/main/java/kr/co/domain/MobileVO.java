package kr.co.domain;

import java.io.Serializable;

public class MobileVO implements Serializable{

   private static final long serialVersionUID = 1L;
   
   private String pjId;
   private String pjName;
   private String rangeId;
   private String rangeName;
   private int rangeNum;
   private String quaId;
   private String quaName;
   private int quaNum;
   private String riskId;
   private String riskName;
   private int riskNum;
   
   public MobileVO() {
      // TODO Auto-generated constructor stub
   }

	public MobileVO(String pjId, String pjName, String rangeId, String rangeName, int rangeNum, String quaId,
			String quaName, int quaNum, String riskId, String riskName, int riskNum) {
		super();
		this.pjId = pjId;
		this.pjName = pjName;
		this.rangeId = rangeId;
		this.rangeName = rangeName;
		this.rangeNum = rangeNum;
		this.quaId = quaId;
		this.quaName = quaName;
		this.quaNum = quaNum;
		this.riskId = riskId;
		this.riskName = riskName;
		this.riskNum = riskNum;
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
	
	public String getRangeId() {
		return rangeId;
	}
	
	public void setRangeId(String rangeId) {
		this.rangeId = rangeId;
	}
	
	public String getRangeName() {
		return rangeName;
	}
	
	public void setRangeName(String rangeName) {
		this.rangeName = rangeName;
	}
	
	public int getRangeNum() {
		return rangeNum;
	}
	
	public void setRangeNum(int rangeNum) {
		this.rangeNum = rangeNum;
	}
	
	public String getQuaId() {
		return quaId;
	}
	
	public void setQuaId(String quaId) {
		this.quaId = quaId;
	}
	
	public String getQuaName() {
		return quaName;
	}
	
	public void setQuaName(String quaName) {
		this.quaName = quaName;
	}
	
	public int getQuaNum() {
		return quaNum;
	}
	
	public void setQuaNum(int quaNum) {
		this.quaNum = quaNum;
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
	
	public int getRiskNum() {
		return riskNum;
	}
	
	public void setRiskNum(int riskNum) {
		this.riskNum = riskNum;
	}
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

  
}