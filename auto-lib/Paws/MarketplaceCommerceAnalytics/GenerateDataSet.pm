
package Paws::MarketplaceCommerceAnalytics::GenerateDataSet;
  use Moose;
  has CustomerDefinedValues => (is => 'ro', isa => 'Paws::MarketplaceCommerceAnalytics::CustomerDefinedValues', traits => ['NameInRequest'], request_name => 'customerDefinedValues' );
  has DataSetPublicationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSetPublicationDate' , required => 1);
  has DataSetType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSetType' , required => 1);
  has DestinationS3BucketName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationS3BucketName' , required => 1);
  has DestinationS3Prefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationS3Prefix' );
  has RoleNameArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleNameArn' , required => 1);
  has SnsTopicArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'snsTopicArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateDataSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MarketplaceCommerceAnalytics::GenerateDataSetResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCommerceAnalytics::GenerateDataSet - Arguments for method GenerateDataSet on L<Paws::MarketplaceCommerceAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateDataSet on the
L<AWS Marketplace Commerce Analytics|Paws::MarketplaceCommerceAnalytics> service. Use the attributes of this class
as arguments to method GenerateDataSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateDataSet.

=head1 SYNOPSIS

    my $marketplacecommerceanalytics = Paws->service('MarketplaceCommerceAnalytics');
    my $GenerateDataSetResult = $marketplacecommerceanalytics->GenerateDataSet(
      DataSetPublicationDate => '1970-01-01T01:00:00',
      DataSetType => 'customer_subscriber_hourly_monthly_subscriptions',
      DestinationS3BucketName => 'MyDestinationS3BucketName',
      RoleNameArn             => 'MyRoleNameArn',
      SnsTopicArn             => 'MySnsTopicArn',
      CustomerDefinedValues   => {
        'MyOptionalKey' =>
          'MyOptionalValue',    # key: min: 1, max: 255, value: min: 1, max: 255
      },    # OPTIONAL
      DestinationS3Prefix => 'MyDestinationS3Prefix',    # OPTIONAL
    );

    # Results:
    my $DataSetRequestId = $GenerateDataSetResult->DataSetRequestId;

# Returns a L<Paws::MarketplaceCommerceAnalytics::GenerateDataSetResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/marketplacecommerceanalytics/GenerateDataSet>

=head1 ATTRIBUTES


=head2 CustomerDefinedValues => L<Paws::MarketplaceCommerceAnalytics::CustomerDefinedValues>

(Optional) Key-value pairs which will be returned, unmodified, in the
Amazon SNS notification message and the data set metadata file. These
key-value pairs can be used to correlated responses with tracking
information from other systems.



=head2 B<REQUIRED> DataSetPublicationDate => Str

The date a data set was published. For daily data sets, provide a date
with day-level granularity for the desired day. For weekly data sets,
provide a date with day-level granularity within the desired week (the
day value will be ignored). For monthly data sets, provide a date with
month-level granularity for the desired month (the day value will be
ignored).



=head2 B<REQUIRED> DataSetType => Str

The desired data set type.

=over

=item * B<customer_subscriber_hourly_monthly_subscriptions>

From 2014-07-21 to present: Available daily by 5:00 PM Pacific Time.

=item * B<customer_subscriber_annual_subscriptions>

From 2014-07-21 to present: Available daily by 5:00 PM Pacific Time.

=item * B<daily_business_usage_by_instance_type>

From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.

=item * B<daily_business_fees>

From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.

=item * B<daily_business_free_trial_conversions>

From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.

=item * B<daily_business_new_instances>

From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.

=item * B<daily_business_new_product_subscribers>

From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.

=item * B<daily_business_canceled_product_subscribers>

From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.

=item * B<monthly_revenue_billing_and_revenue_data>

From 2015-02 to 2017-06: Available monthly on the 4th day of the month
by 5:00pm Pacific Time. Data includes metered transactions (e.g.
hourly) from two months prior.

From 2017-07 to present: Available monthly on the 15th day of the month
by 5:00pm Pacific Time. Data includes metered transactions (e.g.
hourly) from one month prior.

=item * B<monthly_revenue_annual_subscriptions>

From 2015-02 to 2017-06: Available monthly on the 4th day of the month
by 5:00pm Pacific Time. Data includes up-front software charges (e.g.
annual) from one month prior.

From 2017-07 to present: Available monthly on the 15th day of the month
by 5:00pm Pacific Time. Data includes up-front software charges (e.g.
annual) from one month prior.

=item * B<disbursed_amount_by_product>

From 2015-01-26 to present: Available every 30 days by 5:00 PM Pacific
Time.

=item * B<disbursed_amount_by_product_with_uncollected_funds>

From 2012-04-19 to 2015-01-25: Available every 30 days by 5:00 PM
Pacific Time.

From 2015-01-26 to present: This data set was split into three data
sets: disbursed_amount_by_product,
disbursed_amount_by_age_of_uncollected_funds, and
disbursed_amount_by_age_of_disbursed_funds.

=item * B<disbursed_amount_by_instance_hours>

From 2012-09-04 to present: Available every 30 days by 5:00 PM Pacific
Time.

=item * B<disbursed_amount_by_customer_geo>

From 2012-04-19 to present: Available every 30 days by 5:00 PM Pacific
Time.

=item * B<disbursed_amount_by_age_of_uncollected_funds>

From 2015-01-26 to present: Available every 30 days by 5:00 PM Pacific
Time.

=item * B<disbursed_amount_by_age_of_disbursed_funds>

From 2015-01-26 to present: Available every 30 days by 5:00 PM Pacific
Time.

=item * B<customer_profile_by_industry>

From 2015-10-01 to 2017-06-29: Available daily by 5:00 PM Pacific Time.

From 2017-06-30 to present: This data set is no longer available.

=item * B<customer_profile_by_revenue>

From 2015-10-01 to 2017-06-29: Available daily by 5:00 PM Pacific Time.

From 2017-06-30 to present: This data set is no longer available.

=item * B<customer_profile_by_geography>

From 2015-10-01 to 2017-06-29: Available daily by 5:00 PM Pacific Time.

From 2017-06-30 to present: This data set is no longer available.

=item * B<sales_compensation_billed_revenue>

From 2016-12 to 2017-06: Available monthly on the 4th day of the month
by 5:00pm Pacific Time. Data includes metered transactions (e.g.
hourly) from two months prior, and up-front software charges (e.g.
annual) from one month prior.

From 2017-06 to present: Available monthly on the 15th day of the month
by 5:00pm Pacific Time. Data includes metered transactions (e.g.
hourly) from one month prior, and up-front software charges (e.g.
annual) from one month prior.

=item * B<us_sales_and_use_tax_records>

From 2017-02-15 to present: Available monthly on the 15th day of the
month by 5:00 PM Pacific Time.

=back


Valid values are: C<"customer_subscriber_hourly_monthly_subscriptions">, C<"customer_subscriber_annual_subscriptions">, C<"daily_business_usage_by_instance_type">, C<"daily_business_fees">, C<"daily_business_free_trial_conversions">, C<"daily_business_new_instances">, C<"daily_business_new_product_subscribers">, C<"daily_business_canceled_product_subscribers">, C<"monthly_revenue_billing_and_revenue_data">, C<"monthly_revenue_annual_subscriptions">, C<"disbursed_amount_by_product">, C<"disbursed_amount_by_product_with_uncollected_funds">, C<"disbursed_amount_by_instance_hours">, C<"disbursed_amount_by_customer_geo">, C<"disbursed_amount_by_age_of_uncollected_funds">, C<"disbursed_amount_by_age_of_disbursed_funds">, C<"customer_profile_by_industry">, C<"customer_profile_by_revenue">, C<"customer_profile_by_geography">, C<"sales_compensation_billed_revenue">, C<"us_sales_and_use_tax_records">

=head2 B<REQUIRED> DestinationS3BucketName => Str

The name (friendly name, not ARN) of the destination S3 bucket.



=head2 DestinationS3Prefix => Str

(Optional) The desired S3 prefix for the published data set, similar to
a directory path in standard file systems. For example, if given the
bucket name "mybucket" and the prefix "myprefix/mydatasets", the output
file "outputfile" would be published to
"s3://mybucket/myprefix/mydatasets/outputfile". If the prefix directory
structure does not exist, it will be created. If no prefix is provided,
the data set will be published to the S3 bucket root.



=head2 B<REQUIRED> RoleNameArn => Str

The Amazon Resource Name (ARN) of the Role with an attached permissions
policy to interact with the provided AWS services.



=head2 B<REQUIRED> SnsTopicArn => Str

Amazon Resource Name (ARN) for the SNS Topic that will be notified when
the data set has been published or if an error has occurred.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateDataSet in L<Paws::MarketplaceCommerceAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

