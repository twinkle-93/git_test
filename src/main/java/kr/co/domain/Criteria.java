package kr.co.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
   
   private int pageNum;
   private int amount;
   private String keyword;
   
   
   public Criteria() {
      this(1,10);
   }
   
   public Criteria(int pageNum,int amount) {
      super();
      this.pageNum = pageNum;
      this.amount = amount;
   }
   
}