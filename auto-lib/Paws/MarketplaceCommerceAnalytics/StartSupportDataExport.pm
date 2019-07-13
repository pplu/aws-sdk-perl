
package Paws::MarketplaceCommerceAnalytics::StartSupportDataExport;
  use Moose;
  has CustomerDefinedValues => (is => 'ro', isa => 'Paws::MarketplaceCommerceAnalytics::CustomerDefinedValues', traits => ['NameInRequest'], request_name => 'customerDefinedValues' );
  has DataSetType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSetType' , required => 1);
  has DestinationS3BucketName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationS3BucketName' , required => 1);
  has DestinationS3Prefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationS3Prefix' );
  has FromDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fromDate' , required => 1);
  has RoleNameArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleNameArn' , required => 1);
  has SnsTopicArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'snsTopicArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartSupportDataExport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MarketplaceCommerceAnalytics::StartSupportDataExportResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCommerceAnalytics::StartSupportDataExport - Arguments for method StartSupportDataExport on L<Paws::MarketplaceCommerceAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartSupportDataExport on the
L<AWS Marketplace Commerce Analytics|Paws::MarketplaceCommerceAnalytics> service. Use the attributes of this class
as arguments to method StartSupportDataExport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartSupportDataExport.

=head1 SYNOPSIS

    my $marketplacecommerceanalytics = Paws->service('MarketplaceCommerceAnalytics');
    my $StartSupportDataExportResult =
      $marketplacecommerceanalytics->StartSupportDataExport(
      DataSetType             => 'customer_support_contacts_data',
      DestinationS3BucketName => 'MyDestinationS3BucketName',
      FromDate                => '1970-01-01T01:00:00',
      RoleNameArn             => 'MyRoleNameArn',
      SnsTopicArn             => 'MySnsTopicArn',
      CustomerDefinedValues   => {
        'MyOptionalKey' =>
          'MyOptionalValue',    # key: min: 1, max: 255, value: min: 1, max: 255
      },    # OPTIONAL
      DestinationS3Prefix => 'MyDestinationS3Prefix',    # OPTIONAL
      );

    # Results:
    my $DataSetRequestId = $StartSupportDataExportResult->DataSetRequestId;

# Returns a L<Paws::MarketplaceCommerceAnalytics::StartSupportDataExportResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/marketplacecommerceanalytics/StartSupportDataExport>

=head1 ATTRIBUTES


=head2 CustomerDefinedValues => L<Paws::MarketplaceCommerceAnalytics::CustomerDefinedValues>

(Optional) Key-value pairs which will be returned, unmodified, in the
Amazon SNS notification message and the data set metadata file.



=head2 B<REQUIRED> DataSetType => Str

Specifies the data set type to be written to the output csv file. The
data set types customer_support_contacts_data and
test_customer_support_contacts_data both result in a csv file
containing the following fields: Product Id, Product Code, Customer
Guid, Subscription Guid, Subscription Start Date, Organization, AWS
Account Id, Given Name, Surname, Telephone Number, Email, Title,
Country Code, ZIP Code, Operation Type, and Operation Time.

=over

=item * I<customer_support_contacts_data> Customer support contact
data. The data set will contain all changes (Creates, Updates, and
Deletes) to customer support contact data from the date specified in
the from_date parameter.

=item * I<test_customer_support_contacts_data> An example data set
containing static test data in the same format as
customer_support_contacts_data

=back


Valid values are: C<"customer_support_contacts_data">, C<"test_customer_support_contacts_data">

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



=head2 B<REQUIRED> FromDate => Str

The start date from which to retrieve the data set in UTC. This
parameter only affects the customer_support_contacts_data data set
type.



=head2 B<REQUIRED> RoleNameArn => Str

The Amazon Resource Name (ARN) of the Role with an attached permissions
policy to interact with the provided AWS services.



=head2 B<REQUIRED> SnsTopicArn => Str

Amazon Resource Name (ARN) for the SNS Topic that will be notified when
the data set has been published or if an error has occurred.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartSupportDataExport in L<Paws::MarketplaceCommerceAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

