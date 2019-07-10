--view 저장소

-- 게시글 전체 조회 뷰
CREATE OR REPLACE VIEW post_All
as
select p.* , b.BOARDNAME,b.USAGE "bUSAGE",b.TYPE_CODE, b.COMMENTAGE,
    b.UPAGE ,b.UPNUMAGE,b.UPSIZEAGE,bk.TYPE,bk.USAGE as BKUSAGE,
    m.MEMBERID,m.MEMBERNAME 
from post p
join board b
on p.board_code=b.BOARD_CODE1
join board_kind bk
on bk.TYPE_CODE =b.TYPE_CODE
JOIN MEMBER m
on p.MEMBER_CODE = m.MEMBER_CODE ;





select *   from   ( 
      select A.*, rownum as RNUM        from       (    
             select notify_Code, notifytitle, notifycontent, readcount,notifydate,     
              (sysdate-notifydate)*24 as new_Img_Term     from notice    
              order by notify_Code desc     
	) A  
)   
where RNUM>?     and RNUM<=? + ?;
                          