package nl.warquest.database.entity;
// Generated 18-mrt-2014 21:03:36 by Hibernate Tools 3.2.2.GA


import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * News generated by hbm2java
 */
@Entity
@Table(name="news"
    ,catalog="warquest"
)
public class News  implements java.io.Serializable {


     private Integer id;
     private Date date;
     private String body;
     private String content;
     private String language;

    public News() {
    }

    public News(Date date, String body, String content, String language) {
       this.date = date;
       this.body = body;
       this.content = content;
       this.language = language;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)
    
    @Column(name="id", nullable=false)
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="date", nullable=false, length=19)
    public Date getDate() {
        return this.date;
    }
    
    public void setDate(Date date) {
        this.date = date;
    }
    
    @Column(name="body", nullable=false, length=128)
    public String getBody() {
        return this.body;
    }
    
    public void setBody(String body) {
        this.body = body;
    }
    
    @Column(name="content", nullable=false, length=1024)
    public String getContent() {
        return this.content;
    }
    
    public void setContent(String content) {
        this.content = content;
    }
    
    @Column(name="language", nullable=false, length=5)
    public String getLanguage() {
        return this.language;
    }
    
    public void setLanguage(String language) {
        this.language = language;
    }




}


