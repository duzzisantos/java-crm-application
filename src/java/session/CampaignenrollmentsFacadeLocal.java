/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package session;

import entity.Campaignenrollments;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author user
 */
@Local
public interface CampaignenrollmentsFacadeLocal {

    void create(Campaignenrollments campaignenrollments);

    void edit(Campaignenrollments campaignenrollments);

    void remove(Campaignenrollments campaignenrollments);

    Campaignenrollments find(Object id);

    List<Campaignenrollments> findAll();

    List<Campaignenrollments> findRange(int[] range);

    int count();
    
}
