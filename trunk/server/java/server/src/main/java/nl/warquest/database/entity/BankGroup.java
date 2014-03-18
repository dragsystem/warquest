package nl.warquest.database.entity;
// Generated 18-mrt-2014 21:03:36 by Hibernate Tools 3.2.2.GA


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * BankGroup generated by hbm2java
 */
@Entity
@Table(name="bank_group"
    ,catalog="warquest"
)
public class BankGroup  implements java.io.Serializable {


     private int bgid;

    public BankGroup() {
    }

    public BankGroup(int bgid) {
       this.bgid = bgid;
    }
   
     @Id 
    
    @Column(name="bgid", nullable=false)
    public int getBgid() {
        return this.bgid;
    }
    
    public void setBgid(int bgid) {
        this.bgid = bgid;
    }




}


