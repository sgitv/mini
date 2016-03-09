/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

/**
 *
 * @author G5
 */
public class JobSeeker
{
static String userid,pass,fname,mname,lname,gend,pmadd,psadd,city,state,country,cphoff,offex,cphres,mph,passno,cobj,pin,//first
     hqul,pg,grad,inter,ssc,interctno,sscctno,otherl,othercert,uid,pun,gun,gper,pger,//second
        totexp,skill1,skill2,skill3,skill4,skill5,skill6,othskill,descskill, //third
      expfiled,pwcomp,onsit,pfrom,pto,prsal,expsal,urle,   //fourth
      projtit,teamsize,projenv,projdesc,projroll,usedsill ;//fifth

    public String getProjdesc() {
        return projdesc;
    }

    public void setProjdesc(String projdesc) {
        this.projdesc = projdesc;
    }

    public String getProjenv() {
        return projenv;
    }

    public void setProjenv(String projenv) {
        this.projenv = projenv;
    }

    public String getProjroll() {
        return projroll;
    }

    public void setProjroll(String projroll) {
        this.projroll = projroll;
    }

    public String getProjtit() {
        return projtit;
    }

    public void setProjtit(String projtit) {
        this.projtit = projtit;
    }

    public String getTeamsize() {
        return teamsize;
    }

    public void setTeamsize(String teamsize) {
        this.teamsize = teamsize;
    }

    public String getUsedsill() {
        return usedsill;
    }

    public void setUsedsill(String usedsill) {
        this.usedsill = usedsill;
    }



    public String getExpfiled() {
        return expfiled;
    }

    public void setExpfiled(String expfiled) {
        this.expfiled = expfiled;
    }

    public String getExpsal() {
        return expsal;
    }

    public void setExpsal(String expsal) {
        this.expsal = expsal;
    }

    public String getOnsit() {
        return onsit;
    }

    public void setOnsit(String onsit) {
        this.onsit = onsit;
    }

    public String getPfrom() {
        return pfrom;
    }

    public void setPfrom(String pfrom) {
        this.pfrom = pfrom;
    }

    public String getPrsal() {
        return prsal;
    }

    public void setPrsal(String prsal) {
        this.prsal = prsal;
    }

    public String getPto() {
        return pto;
    }

    public void setPto(String pto) {
        this.pto = pto;
    }

    public String getPwcomp() {
        return pwcomp;
    }

    public void setPwcomp(String pwcomp) {
        this.pwcomp = pwcomp;
    }

    public String getUrle() {
        return urle;
    }

    public void setUrle(String urle) {
        this.urle = urle;
    }

    public String getDescskill() {
        return descskill;
    }

    public void setDescskill(String descskill) {
        this.descskill = descskill;
    }

    public String getOthskill() {
        return othskill;
    }

    public void setOthskill(String othskill) {
        this.othskill = othskill;
    }

    public String getSkill1() {
        return skill1;
    }

    public void setSkill1(String skill1) {
        this.skill1 = skill1;
    }

    public String getSkill2() {
        return skill2;
    }

    public void setSkill2(String skill2) {
        this.skill2 = skill2;
    }

    public String getSkill3() {
        return skill3;
    }

    public void setSkill3(String skill3) {
        this.skill3 = skill3;
    }

    public String getSkill4() {
        return skill4;
    }

    public void setSkill4(String skill4) {
        this.skill4 = skill4;
    }

    public String getSkill5() {
        return skill5;
    }

    public void setSkill5(String skill5) {
        this.skill5 = skill5;
    }

    public String getSkill6() {
        return skill6;
    }

    public void setSkill6(String skill6) {
        this.skill6 = skill6;
    }

    public String getTotexp() {
        return totexp;
    }

    public void setTotexp(String totexp) {
        this.totexp = totexp;
    }



    public String getGper() {
        return gper;
    }

    public void setGper(String gper) {
        this.gper = gper;
    }

    public String getGrad() {
        return grad;
    }

    public void setGrad(String grad) {
        this.grad = grad;
    }

    public String getGun() {
        return gun;
    }

    public void setGun(String gun) {
        this.gun = gun;
    }

    public String getHqul() {
        return hqul;
    }

    public void setHqul(String hqul) {
        this.hqul = hqul;
    }

    public String getInter() {
        return inter;
    }

    public void setInter(String inter) {
        this.inter = inter;
    }

    public String getInterctno() {
        return interctno;
    }

    public void setInterctno(String interctno) {
        this.interctno = interctno;
    }

    public String getOthercert() {
        return othercert;
    }

    public void setOthercert(String othercert) {
        this.othercert = othercert;
    }

    public String getOtherl() {
        return otherl;
    }

    public void setOtherl(String otherl) {
        this.otherl = otherl;
    }

    public String getPg() {
        return pg;
    }

    public void setPg(String pg) {
        this.pg = pg;
    }

    public String getPger() {
        return pger;
    }

    public void setPger(String pger) {
        this.pger = pger;
    }

    public String getPun() {
        return pun;
    }

    public void setPun(String pun) {
        this.pun = pun;
    }

    public String getSsc() {
        return ssc;
    }

    public void setSsc(String ssc) {
        this.ssc = ssc;
    }

    public String getSscctno() {
        return sscctno;
    }

    public void setSscctno(String sscctno) {
        this.sscctno = sscctno;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCobj() {
        return cobj;
    }

    public void setCobj(String cobj) {
        this.cobj = cobj;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCphoff() {
        return cphoff;
    }

    public void setCphoff(String cphoff) {
        this.cphoff = cphoff;
    }

    public String getCphres() {
        return cphres;
    }

    public void setCphres(String cphres) {
        this.cphres = cphres;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getGend() {
        return gend;
    }

    public void setGend(String gend) {
        this.gend = gend;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getMph() {
        return mph;
    }

    public void setMph(String mph) {
        this.mph = mph;
    }

    public String getOffex() {
        return offex;
    }

    public void setOffex(String offex) {
        this.offex = offex;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getPassno() {
        return passno;
    }

    public void setPassno(String passno) {
        this.passno = passno;
    }

    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public String getPmadd() {
        return pmadd;
    }

    public void setPmadd(String pmadd) {
        this.pmadd = pmadd;
    }

    public String getPsadd() {
        return psadd;
    }

    public void setPsadd(String psadd) {
        this.psadd = psadd;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }
    
}
