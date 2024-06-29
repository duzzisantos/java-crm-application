/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package session;

import entity.Accountmanagers;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author user
 */
@Stateless
public class AccountmanagersFacade extends AbstractFacade<Accountmanagers> implements AccountmanagersFacadeLocal {

    @PersistenceContext(unitName = "CRMApplicationPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AccountmanagersFacade() {
        super(Accountmanagers.class);
    }
    
}
