package nl.warquest.database.entity;
// Generated 18-mrt-2014 21:03:36 by Hibernate Tools 3.2.2.GA


import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * BonusId generated by hbm2java
 */
@Embeddable
public class BonusId  implements java.io.Serializable {


     private int bonusId;
     private int pid;
     private Date date;

    public BonusId() {
    }

    public BonusId(int bonusId, int pid, Date date) {
       this.bonusId = bonusId;
       this.pid = pid;
       this.date = date;
    }
   

    @Column(name="bonus_id", nullable=false)
    public int getBonusId() {
        return this.bonusId;
    }
    
    public void setBonusId(int bonusId) {
        this.bonusId = bonusId;
    }

    @Column(name="pid", nullable=false)
    public int getPid() {
        return this.pid;
    }
    
    public void setPid(int pid) {
        this.pid = pid;
    }

    @Column(name="date", nullable=false, length=19)
    public Date getDate() {
        return this.date;
    }
    
    public void setDate(Date date) {
        this.date = date;
    }




}


