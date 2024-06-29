/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package session;

import entity.Campaignenrollments;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author user
 */
@Stateless
public class CampaignenrollmentsFacade extends AbstractFacade<Campaignenrollments> implements CampaignenrollmentsFacadeLocal {

    @PersistenceContext(unitName = "CRMApplicationPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CampaignenrollmentsFacade() {
        super(Campaignenrollments.class);
    }
    
}
