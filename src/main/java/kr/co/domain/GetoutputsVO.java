package kr.co.domain;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;


public class GetoutputsVO implements Serializable{

   /**
    * 
    */
   private static final long serialVersionUID = 1L;
   private Long bno;                /* DB값을 넣어줄때 대문자롤 적여야지 소문자로 넣으면 값을 0으로 잡는다 */
   private String pname, sname, stitle, user_id;
   private Date sysdatee;
   
   public GetoutputsVO() {
      // TODO Auto-generated constructor stub
   }

   public GetoutputsVO(Long bno, String pname, String sname, String stitle, String user_id, Date sysdatee) {
      super();
      this.bno = bno;
      this.pname = pname;
      this.sname = sname;
      this.stitle = stitle;
      this.user_id = user_id;
      this.sysdatee = sysdatee;
   }

   public Long getBno() {
      return bno;
   }

   public void setBno(Long bno) {
      this.bno = bno;
   }

   public String getPname() {
      return pname;
   }

   public void setPname(String pname) {
      this.pname = pname;
   }

   public String getSname() {
      return sname;
   }

   public void setSname(String sname) {
      this.sname = sname;
   }

   public String getStitle() {
      return stitle;
   }

   public void setStitle(String stitle) {
      this.stitle = stitle;
   }

   public String getUser_id() {
      return user_id;
   }

   public void setUser_id(String user_id) {
      this.user_id = user_id;
   }

   public Date getSysdatee() {
      return sysdatee;
   }

   public void setSysdatee(Date sysdatee) {
      this.sysdatee = sysdatee;
   }
   
   
}