/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author user
 */
@Entity
@Table(name = "CAMPAIGNENROLLMENTS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Campaignenrollments.findAll", query = "SELECT c FROM Campaignenrollments c"),
    @NamedQuery(name = "Campaignenrollments.findByEnrollmentId", query = "SELECT c FROM Campaignenrollments c WHERE c.enrollmentId = :enrollmentId"),
    @NamedQuery(name = "Campaignenrollments.findByCampaignName", query = "SELECT c FROM Campaignenrollments c WHERE c.campaignName = :campaignName"),
    @NamedQuery(name = "Campaignenrollments.findByCampaignManager", query = "SELECT c FROM Campaignenrollments c WHERE c.campaignManager = :campaignManager"),
    @NamedQuery(name = "Campaignenrollments.findByCampaignContent", query = "SELECT c FROM Campaignenrollments c WHERE c.campaignContent = :campaignContent"),
    @NamedQuery(name = "Campaignenrollments.findByHasResponded", query = "SELECT c FROM Campaignenrollments c WHERE c.hasResponded = :hasResponded")})
public class Campaignenrollments implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "ENROLLMENT_ID", unique = true)
    private Integer enrollmentId;
    @Size(max = 30)
    @Column(name = "CAMPAIGN_NAME")
    private String campaignName;
    @Size(max = 50)
    @Column(name = "CAMPAIGN_MANAGER")
    private String campaignManager;
    @Size(max = 255)
    @Column(name = "CAMPAIGN_CONTENT")
    private String campaignContent;
    @Column(name = "HAS_RESPONDED")
    private Boolean hasResponded;
    @Column(name = "ACCOUNT_MANAGER_ID")
    private int accountManagerId;
    @Column(name = "CAMPAIGN_ID")
    private int campaignId;
    @Column(name = "CUSTOMER_ID")
    private int customerId;

    public Campaignenrollments() {
    }

    public Campaignenrollments(Integer enrollmentId) {
        this.enrollmentId = enrollmentId;
    }

    public Integer getEnrollmentId() {
        return enrollmentId;
    }

    public void setEnrollmentId(Integer enrollmentId) {
        this.enrollmentId = enrollmentId;
    }

    public String getCampaignName() {
        return campaignName;
    }

    public void setCampaignName(String campaignName) {
        this.campaignName = campaignName;
    }

    public String getCampaignManager() {
        return campaignManager;
    }

    public void setCampaignManager(String campaignManager) {
        this.campaignManager = campaignManager;
    }

    public String getCampaignContent() {
        return campaignContent;
    }

    public void setCampaignContent(String campaignContent) {
        this.campaignContent = campaignContent;
    }

    public Boolean getHasResponded() {
        return hasResponded;
    }

    public void setHasResponded(Boolean hasResponded) {
        this.hasResponded = hasResponded;
    }

    public int getAccountManagerId() {
        return accountManagerId;
    }

    public void setAccountManagerId(int accountManagerId) {
        this.accountManagerId = accountManagerId;
    }

    public int getCampaignId() {
        return campaignId;
    }

    public void setCampaignId(int campaignId) {
        this.campaignId = campaignId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (enrollmentId != null ? enrollmentId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Campaignenrollments)) {
            return false;
        }
        Campaignenrollments other = (Campaignenrollments) object;
        if ((this.enrollmentId == null && other.enrollmentId != null) || (this.enrollmentId != null && !this.enrollmentId.equals(other.enrollmentId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Campaignenrollments[ enrollmentId=" + enrollmentId + " ]";
    }
    
}
