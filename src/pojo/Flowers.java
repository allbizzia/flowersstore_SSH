package pojo;

public class Flowers {
private Integer fid;
private String fname;
private String fmean;
private String fperson;
private String ftime;
private Integer fnum;
private String ftemp;
public Integer getFid() {
	return fid;
}
public void setFid(Integer fid) {
	this.fid = fid;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getFmean() {
	return fmean;
}
public void setFmean(String fmean) {
	this.fmean = fmean;
}
public String getFperson() {
	return fperson;
}
public void setFperson(String fperson) {
	this.fperson = fperson;
}
public String getFtime() {
	return ftime;
}
public void setFtime(String ftime) {
	this.ftime = ftime;
}
public Integer getFnum() {
	return fnum;
}
public void setFnum(Integer fnum) {
	this.fnum = fnum;
}
public String getFtemp() {
	return ftemp;
}
public void setFtemp(String ftemp) {
	this.ftemp = ftemp;
}
@Override
public String toString() {
	return "flowers [fid=" + fid + ", fname=" + fname + ", fmean=" + fmean + ", fperson=" + fperson + ", ftime=" + ftime
			+ ", fnum=" + fnum + ", ftemp=" + ftemp + "]";
}


}
