package com.probee.waggle.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.probee.waggle.model.dto.FileDto;
import com.probee.waggle.model.dto.RequestDto;
import com.probee.waggle.model.dto.RequestDto2;
import com.probee.waggle.model.dto.ResultDto;
import com.probee.waggle.model.dto.UserRatingDto;
import com.probee.waggle.model.dto.UsersDto;

@Mapper
public interface BoardMapper {
	
	@Select(" select req_No,req_Title,req_Link,date_format(req_WDate,'%Y-%m-%d') req_WDate,date_format(req_EDate,'%Y-%m-%d') req_EDate,req_Phone,req_Detail,req_Point,req_Stat,req_UCode,req_FCode,req_HCode,fi_Nm,home_Addr,home_DAddr,home_Lat,home_Lng "
			+ "from request r left outer join file f on r.req_FCode = f.fi_Code left outer join home h on r.req_HCode = h.home_Code "
			+ "order by req_No desc ")
	public List<RequestDto2> selectList();
	
	// request 관련 모든 정보 불러오기
	@Select(" select req_No,req_Title,req_Link,date_format(req_WDate,'%Y-%m-%d') req_WDate,date_format(req_EDate,'%Y-%m-%d') req_EDate,req_Phone,req_Detail,req_Point,req_Stat,req_UCode,req_FCode,req_HCode,fi_Nm,home_Addr,home_DAddr,home_Lat,home_Lng "
			+ "from request r left outer join file f on r.req_FCode = f.fi_Code left outer join home h on r.req_HCode = h.home_Code "
			+ "where req_No=#{req_No} ")
	public RequestDto2 selectRequest(int req_NO);
	
	@Select(" select max(req_No) from request r ")
	public int selectLastRequestNo();
	
	@Update(" update request set req_FCode=#{req_FCode} where req_No=#{req_No} ")
	public int updateFCode(int req_No, int req_FCode);
	
	@Insert(" INSERT INTO Request values (null,#{req_Title},#{req_Link},NOW(),#{req_EDate},#{req_Phone},#{req_Detail},#{req_Point},'모집중',#{req_UCode},null,#{req_HCode}) ")
	public int insertRequest(RequestDto2 dto);
	
	@Select(" select * from Result where res_No=#{req_No} and res_Stat in ('진행중','완료') ")
	public ResultDto selectResult(int req_No);
	
	@Select(" select user_Code, user_Pro, user_Grade, user_Intro, user_Nm from Users u inner join volunteer v on u.user_Code = v.vo_Ucode where v.vo_No = #{vo_No}")
	public List<UsersDto> FindVol(int vo_No);
	
	@Select(" select * from Users where user_Code = #{user_Code} ")
	public UsersDto selectUser(int user_Code);
	
	// UserRating 가져오기
	@Select(" select * from UserRating where ur_Code = #{req_No} ")
	public List<UserRatingDto> selectUserRating(int req_No);
	
	// result 관련 파일 가져오기
	@Select(" select fi_Code ,fi_Type, fi_Nm from Result r left outer join ResultFile rf on r.res_Code = rf.rf_RCode left outer join File fi on rf.rf_FCode = fi.fi_Code where res_Code=#{res_Code} ")
	public List<FileDto> selectResultFile(int res_Code);
	
	@Insert(" insert into Result (res_Code, res_No, res_UCode, res_Stat ) values (null, #{res_No}, #{res_UCode}, '진행중') ")
	int CreateRes(int res_No, int res_UCode);
	
	@Update(" update Request set req_Stat = '진행중' where req_No = #{req_No} ")
	int Progress(int req_No);
}
