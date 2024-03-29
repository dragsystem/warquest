package nl.warquest.database.entity;
// Generated 18-mrt-2014 21:03:36 by Hibernate Tools 3.2.2.GA


import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * ClanMissionId generated by hbm2java
 */
@Embeddable
public class ClanMissionId  implements java.io.Serializable {


     private int cid;
     private int mid;

    public ClanMissionId() {
    }

    public ClanMissionId(int cid, int mid) {
       this.cid = cid;
       this.mid = mid;
    }
   

    @Column(name="cid", nullable=false)
    public int getCid() {
        return this.cid;
    }
    
    public void setCid(int cid) {
        this.cid = cid;
    }

    @Column(name="mid", nullable=false)
    public int getMid() {
        return this.mid;
    }
    
    public void setMid(int mid) {
        this.mid = mid;
    }




}


