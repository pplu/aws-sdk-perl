
package Paws::S3::GetBucketInventoryConfiguration;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has Id => (is => 'ro', isa => 'Str', query_name => 'id', traits => ['ParamInQuery'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketInventoryConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?inventory');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::GetBucketInventoryConfigurationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketInventoryConfiguration - Arguments for method GetBucketInventoryConfiguration on Paws::S3

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBucketInventoryConfiguration on the 
Amazon Simple Storage Service service. Use the attributes of this class
as arguments to method GetBucketInventoryConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBucketInventoryConfiguration.

As an example:

  $service_obj->GetBucketInventoryConfiguration(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket containing the inventory configuration to
retrieve.



=head2 B<REQUIRED> Id => Str

The ID used to identify the inventory configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBucketInventoryConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

