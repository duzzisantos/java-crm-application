/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package session;

import entity.Campaigns;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author user
 */
@Local
public interface CampaignsFacadeLocal {

    void create(Campaigns campaigns);

    void edit(Campaigns campaigns);

    void remove(Campaigns campaigns);

    Campaigns find(Object id);

    List<Campaigns> findAll();

    List<Campaigns> findRange(int[] range);

    int count();
    
}
