package nl.warquest.database.entity;
// Generated 18-mrt-2014 21:03:36 by Hibernate Tools 3.2.2.GA


import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * PlayerBuildingId generated by hbm2java
 */
@Embeddable
public class PlayerBuildingId  implements java.io.Serializable {


     private int pid;
     private int bid;

    public PlayerBuildingId() {
    }

    public PlayerBuildingId(int pid, int bid) {
       this.pid = pid;
       this.bid = bid;
    }
   

    @Column(name="pid", nullable=false)
    public int getPid() {
        return this.pid;
    }
    
    public void setPid(int pid) {
        this.pid = pid;
    }

    @Column(name="bid", nullable=false)
    public int getBid() {
        return this.bid;
    }
    
    public void setBid(int bid) {
        this.bid = bid;
    }




}


