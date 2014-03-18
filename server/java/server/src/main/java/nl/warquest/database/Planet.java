package nl.warquest.database;
// Generated 17-mrt-2014 21:30:25 by Hibernate Tools 3.2.2.GA


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Planet generated by hbm2java
 */
@Entity
@Table(name="planet"
    ,catalog="warquest"
)
public class Planet  implements java.io.Serializable {


     private int planetId;
     private String name;

    public Planet() {
    }

    public Planet(int planetId, String name) {
       this.planetId = planetId;
       this.name = name;
    }
   
     @Id 
    
    @Column(name="planet_id", nullable=false)
    public int getPlanetId() {
        return this.planetId;
    }
    
    public void setPlanetId(int planetId) {
        this.planetId = planetId;
    }
    
    @Column(name="name", nullable=false, length=10)
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }




}

