/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package session;

import entity.Accountmanagers;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author user
 */
@Local
public interface AccountmanagersFacadeLocal {

    void create(Accountmanagers accountmanagers);

    void edit(Accountmanagers accountmanagers);

    void remove(Accountmanagers accountmanagers);

    Accountmanagers find(Object id);

    List<Accountmanagers> findAll();

    List<Accountmanagers> findRange(int[] range);

    int count();
    
}
