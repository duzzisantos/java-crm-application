/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
    @NamedQuery(name = "Campaignenrollments.findByCampaignId", query = "SELECT c FROM Campaignenrollments c WHERE c.campaignId = :campaignId"),
    @NamedQuery(name = "Campaignenrollments.findByAccountManagerId", query = "SELECT c FROM Campaignenrollments c WHERE c.accountManagerId = :accountManagerId"),
    @NamedQuery(name = "Campaignenrollments.findByCustomerId", query = "SELECT c FROM Campaignenrollments c WHERE c.customerId = :customerId"),
    @NamedQuery(name = "Campaignenrollments.findByProductId", query = "SELECT c FROM Campaignenrollments c WHERE c.productId = :productId"),
    @NamedQuery(name = "Campaignenrollments.findByCampaignManager", query = "SELECT c FROM Campaignenrollments c WHERE c.campaignManager = :campaignManager"),
    @NamedQuery(name = "Campaignenrollments.findByCampaignContent", query = "SELECT c FROM Campaignenrollments c WHERE c.campaignContent = :campaignContent"),
    @NamedQuery(name = "Campaignenrollments.findByHasResponded", query = "SELECT c FROM Campaignenrollments c WHERE c.hasResponded = :hasResponded")})
public class Campaignenrollments implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ENROLLMENT_ID", nullable = false)
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
    @Column(name = "PRODUCT_ID")
    private int productId;
    @Column (name = "PURCHASE_QUANTITY")
    private int purchaseQuantity;
    @Column (name = "OFFERED_PRICE")
    private double offeredPrice;
    @Column (name = "RESPONSE_EMAIL")
    private String responseEmail;

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
    
     public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }
    
    public int getPurchaseQuantity(){
        return purchaseQuantity;
    }
    
    public void setPurchaseQuantity(int purchaseQty){
        this.purchaseQuantity = purchaseQty;
    }
    
    public double getOfferedPrice(){
        return offeredPrice;
    }
    
    public void setOfferedPrice(double priceOffer){
        this.offeredPrice = priceOffer;
    }
    
    public String getResponseEmail(){
        return responseEmail;
    }
    
    public void setResponseEmail(String responseEmail){
        this.responseEmail = responseEmail;
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
