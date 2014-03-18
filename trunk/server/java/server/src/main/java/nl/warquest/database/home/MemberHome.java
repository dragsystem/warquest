package nl.warquest.database.home;
// Generated 18-mrt-2014 21:03:52 by Hibernate Tools 3.2.2.GA


import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * Home object for domain model class Member.
 * @see nl.warquest.database.home.Member
 * @author Hibernate Tools
 */
@Stateless
public class MemberHome {

    private static final Log log = LogFactory.getLog(MemberHome.class);

    @PersistenceContext private EntityManager entityManager;
    
    public void persist(Member transientInstance) {
        log.debug("persisting Member instance");
        try {
            entityManager.persist(transientInstance);
            log.debug("persist successful");
        }
        catch (RuntimeException re) {
            log.error("persist failed", re);
            throw re;
        }
    }
    
    public void remove(Member persistentInstance) {
        log.debug("removing Member instance");
        try {
            entityManager.remove(persistentInstance);
            log.debug("remove successful");
        }
        catch (RuntimeException re) {
            log.error("remove failed", re);
            throw re;
        }
    }
    
    public Member merge(Member detachedInstance) {
        log.debug("merging Member instance");
        try {
            Member result = entityManager.merge(detachedInstance);
            log.debug("merge successful");
            return result;
        }
        catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }
    
    public Member findById( Integer id) {
        log.debug("getting Member instance with id: " + id);
        try {
            Member instance = entityManager.find(Member.class, id);
            log.debug("get successful");
            return instance;
        }
        catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
}

