package kr.co.domain;

import lombok.Getter;
import lombok.ToString;

@ToString
@Getter
public class PageDTO {

   private int startPage, endPage; 
   private boolean prev, next;
   
   private int total;
   private Criteria cri;
   
   public PageDTO(Criteria cri, int total) {
      this.cri = cri;
      this.total = total;
                        //starPage 가 3이라고 가정했을때 0.3 - > 1 -> 10
      this.endPage = (int) (Math.ceil(cri.getPageNum()/ 10.0)) * 10;
   
      this.startPage = endPage - 9;
      
      this.prev = this.startPage > 1;
                           //total값이 예를 들어  300.0 / 10 => 30 -> 30
      int realEnd = (int)( Math.ceil( (total * 1.0) / cri.getAmount()) );
                                    //3항 연산자
      this.endPage = realEnd <= endPage? realEnd : endPage;
   
      this.next = this.endPage < realEnd;
   }
}