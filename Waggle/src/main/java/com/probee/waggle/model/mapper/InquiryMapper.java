package com.probee.waggle.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.probee.waggle.model.dto.Criteria;
import com.probee.waggle.model.dto.InquiryDto;
import com.probee.waggle.model.dto.UsersDto;

@Mapper
public interface InquiryMapper {
	
	@Select(" SELECT IN_CODE, originNo, grpOrd, grpLayer, IN_UCODE, IN_TYPE, IN_TITLE, IN_DATE, IN_CONTENT, IN_STAT, IN_ANSWER, in_CHK FROM INQUIRY left join USERS on IN_UCODE = USER_CODE where IN_UCODE = #{user_Code} group by in_Code, originNo order by originNo DESC, grpOrd ASC LIMIT #{cri.pageStart}, #{cri.perPageNum} ")
	public List<InquiryDto> selectList(int user_Code, @Param("cri") Criteria cri);
	
	@Select( " select * FROM inquiry join users where in_UCode = user_Code group by in_Code, originNo order by originNo DESC, grpOrd ASC LIMIT #{cri.pageStart}, #{cri.perPageNum} " )
	public List<InquiryDto> adminList(String user_Nm, @Param("cri") Criteria cri);
	
//	@Select(" SELECT IN_CODE, IN_UCODE, IN_TYPE, IN_TITLE, IN_DATE, IN_CONTENT, IN_STAT, IN_ANSWER, in_CHK FROM INQUIRY join USERS on(IN_UCODE = USER_CODE) order by IN_CODE DESC ")
//	public List<InquiryDto> selectuserList();
	
	@Select(" SELECT IN_CODE, IN_UCODE, IN_TYPE, IN_TITLE, IN_DATE , IN_CONTENT, IN_STAT, IN_ANSWER, IN_CHK FROM INQUIRY join USERS on(IN_UCODE = USER_CODE) WHERE IN_CODE = #{in_Code} ")
	public InquiryDto selectOne(int in_Code);
	
	@Insert(" INSERT INTO INQUIRY(in_Code, originNo, grpOrd, grpLayer, in_UCode, in_Type, in_Title, in_Date, in_Content) VALUES(#{in_Code}, in_Code, 0, 0, #{in_UCode}, #{in_Type}, #{in_Title}, NOW(), #{in_Content}) ")
	public int insert(InquiryDto dto);
	
	@Update(" UPDATE Inquiry SET in_Title = #{in_Title}, in_Content = #{in_Content} WHERE in_Code = #{in_Code} ")
	public int update(InquiryDto dto);
	
	@Delete(" DELETE FROM Inquiry WHERE in_Code = #{in_Code} ")
	public int delete(int in_Code);
	
	@Select(" SELECT * FROM Users WHERE user_Code IN (#{user_Code}) ")
	public UsersDto selectUser(int user_Code);
	
	@Select(" SELECT COUNT(*) FROM Inquiry left join Users on in_UCode = user_Code where in_UCode = #{user_Code} order by in_Code DESC ")
	public int inquiryListCnt(int user_Code);
	
	@Select(" SELECT COUNT(*) FROM Inquiry order by in_Code DESC ")
	public int inquiryallListCnt(String user_Nm);
	
	@Update(" UPDATE Inquiry SET originNo = in_Code ")
	public int updateOriginNo(InquiryDto dto);
	
	@Insert(" INSERT INTO Inquiry(originNo, grpOrd, in_RCode, in_UCode, in_Title, in_Date, in_Content, in_Stat, in_Chk) VALUES(#{originNo}, #{grpOrd}+1, #{in_RCode}, #{in_UCode}, #{in_Title}, NOW(), #{in_Content}, NULL, 1) ")
	public int adminInsert(InquiryDto dto);
	
	@Update(" update INQUIRY SET in_Stat = '답변완료' where originNo in(select * from (select originNo from inquiry GROUP BY originNo HAVING COUNT(*)>=2) as temp) and in_Type is not null ")
	public int inquiryListStat();
	
}
