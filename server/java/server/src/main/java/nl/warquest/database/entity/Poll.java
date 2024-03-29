package nl.warquest.database.entity;
// Generated 18-mrt-2014 21:03:36 by Hibernate Tools 3.2.2.GA


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Poll generated by hbm2java
 */
@Entity
@Table(name="poll"
    ,catalog="warquest"
)
public class Poll  implements java.io.Serializable {


     private int pollId;
     private String question;
     private int disabled;

    public Poll() {
    }

    public Poll(int pollId, String question, int disabled) {
       this.pollId = pollId;
       this.question = question;
       this.disabled = disabled;
    }
   
     @Id 
    
    @Column(name="poll_id", nullable=false)
    public int getPollId() {
        return this.pollId;
    }
    
    public void setPollId(int pollId) {
        this.pollId = pollId;
    }
    
    @Column(name="question", nullable=false, length=128)
    public String getQuestion() {
        return this.question;
    }
    
    public void setQuestion(String question) {
        this.question = question;
    }
    
    @Column(name="disabled", nullable=false)
    public int getDisabled() {
        return this.disabled;
    }
    
    public void setDisabled(int disabled) {
        this.disabled = disabled;
    }




}


