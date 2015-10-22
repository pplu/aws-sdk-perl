
package Paws::MarketplaceCommerceAnalytics::GenerateDataSet;
  use Moose;
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

Paws::MarketplaceCommerceAnalytics::GenerateDataSet - Arguments for method GenerateDataSet on Paws::MarketplaceCommerceAnalytics

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateDataSet on the 
AWS Marketplace Commerce Analytics service. Use the attributes of this class
as arguments to method GenerateDataSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateDataSet.

As an example:

  $service_obj->GenerateDataSet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> DataSetPublicationDate => Str

  

=head2 B<REQUIRED> DataSetType => Str

  

=head2 B<REQUIRED> DestinationS3BucketName => Str

  

=head2 DestinationS3Prefix => Str

  

=head2 B<REQUIRED> RoleNameArn => Str

  

=head2 B<REQUIRED> SnsTopicArn => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateDataSet in L<Paws::MarketplaceCommerceAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

