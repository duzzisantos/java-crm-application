package entity;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2024-07-18T19:04:56")
@StaticMetamodel(Campaigns.class)
public class Campaigns_ { 

    public static volatile SingularAttribute<Campaigns, String> campaignProduct;
    public static volatile SingularAttribute<Campaigns, String> campaignType;
    public static volatile SingularAttribute<Campaigns, Integer> productId;
    public static volatile SingularAttribute<Campaigns, String> campaignManager;
    public static volatile SingularAttribute<Campaigns, Integer> campaignId;
    public static volatile SingularAttribute<Campaigns, Date> campaignStart;
    public static volatile SingularAttribute<Campaigns, Date> campaignEnd;
    public static volatile SingularAttribute<Campaigns, Integer> campaignSalesVolumeTarget;
    public static volatile SingularAttribute<Campaigns, Integer> accountManagerId;
    public static volatile SingularAttribute<Campaigns, String> campaignName;
    public static volatile SingularAttribute<Campaigns, Integer> campaignSalesValueTarget;

}