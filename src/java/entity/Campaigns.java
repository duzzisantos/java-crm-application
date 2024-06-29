/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author user
 */
@Entity
@Table(name = "CAMPAIGNS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Campaigns.findAll", query = "SELECT c FROM Campaigns c"),
    @NamedQuery(name = "Campaigns.findByCampaignId", query = "SELECT c FROM Campaigns c WHERE c.campaignId = :campaignId"),
    @NamedQuery(name = "Campaigns.findByCampaignName", query = "SELECT c FROM Campaigns c WHERE c.campaignName = :campaignName"),
    @NamedQuery(name = "Campaigns.findByCampaignType", query = "SELECT c FROM Campaigns c WHERE c.campaignType = :campaignType"),
    @NamedQuery(name = "Campaigns.findByCampaignManager", query = "SELECT c FROM Campaigns c WHERE c.campaignManager = :campaignManager"),
    @NamedQuery(name = "Campaigns.findByCampaignProduct", query = "SELECT c FROM Campaigns c WHERE c.campaignProduct = :campaignProduct"),
    @NamedQuery(name = "Campaigns.findByCampaignStart", query = "SELECT c FROM Campaigns c WHERE c.campaignStart = :campaignStart"),
    @NamedQuery(name = "Campaigns.findByCampaignEnd", query = "SELECT c FROM Campaigns c WHERE c.campaignEnd = :campaignEnd"),
    @NamedQuery(name = "Campaigns.findByCampaignSalesValueTarget", query = "SELECT c FROM Campaigns c WHERE c.campaignSalesValueTarget = :campaignSalesValueTarget"),
    @NamedQuery(name = "Campaigns.findByCampaignSalesVolumeTarget", query = "SELECT c FROM Campaigns c WHERE c.campaignSalesVolumeTarget = :campaignSalesVolumeTarget")})
public class Campaigns implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "CAMPAIGN_ID", unique = true)
    private Integer campaignId;
    @Size(max = 30)
    @Column(name = "CAMPAIGN_NAME")
    private String campaignName;
    @Size(max = 10)
    @Column(name = "CAMPAIGN_TYPE")
    private String campaignType;
    @Size(max = 50)
    @Column(name = "CAMPAIGN_MANAGER")
    private String campaignManager;
    @Size(max = 30)
    @Column(name = "CAMPAIGN_PRODUCT")
    private String campaignProduct;
    @Column(name = "CAMPAIGN_START")
    @Temporal(TemporalType.DATE)
    private Date campaignStart;
    @Column(name = "CAMPAIGN_END")
    @Temporal(TemporalType.DATE)
    private Date campaignEnd;
    @Column(name = "CAMPAIGN_SALES_VALUE_TARGET")
    private Integer campaignSalesValueTarget;
    @Column(name = "CAMPAIGN_SALES_VOLUME_TARGET")
    private Integer campaignSalesVolumeTarget;
  

    public Campaigns() {
    }

    public Campaigns(Integer campaignId) {
        this.campaignId = campaignId;
    }

    public Integer getCampaignId() {
        return campaignId;
    }

    public void setCampaignId(Integer campaignId) {
        this.campaignId = campaignId;
    }

    public String getCampaignName() {
        return campaignName;
    }

    public void setCampaignName(String campaignName) {
        this.campaignName = campaignName;
    }

    public String getCampaignType() {
        return campaignType;
    }

    public void setCampaignType(String campaignType) {
        this.campaignType = campaignType;
    }

    public String getCampaignManager() {
        return campaignManager;
    }

    public void setCampaignManager(String campaignManager) {
        this.campaignManager = campaignManager;
    }

    public String getCampaignProduct() {
        return campaignProduct;
    }

    public void setCampaignProduct(String campaignProduct) {
        this.campaignProduct = campaignProduct;
    }

    public Date getCampaignStart() {
        return campaignStart;
    }

    public void setCampaignStart(Date campaignStart) {
        this.campaignStart = campaignStart;
    }

    public Date getCampaignEnd() {
        return campaignEnd;
    }

    public void setCampaignEnd(Date campaignEnd) {
        this.campaignEnd = campaignEnd;
    }

    public Integer getCampaignSalesValueTarget() {
        return campaignSalesValueTarget;
    }

    public void setCampaignSalesValueTarget(Integer campaignSalesValueTarget) {
        this.campaignSalesValueTarget = campaignSalesValueTarget;
    }

    public Integer getCampaignSalesVolumeTarget() {
        return campaignSalesVolumeTarget;
    }

    public void setCampaignSalesVolumeTarget(Integer campaignSalesVolumeTarget) {
        this.campaignSalesVolumeTarget = campaignSalesVolumeTarget;
    }

  

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (campaignId != null ? campaignId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Campaigns)) {
            return false;
        }
        Campaigns other = (Campaigns) object;
        if ((this.campaignId == null && other.campaignId != null) || (this.campaignId != null && !this.campaignId.equals(other.campaignId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Campaigns[ campaignId=" + campaignId + " ]";
    }
    
}
