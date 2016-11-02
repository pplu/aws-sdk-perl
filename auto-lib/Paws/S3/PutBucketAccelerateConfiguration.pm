
package Paws::S3::PutBucketAccelerateConfiguration;
  use Moose;
  has AccelerateConfiguration => (is => 'ro', isa => 'Paws::S3::AccelerateConfiguration', required => 1);
  has Bucket => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Bucket' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketAccelerateConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?accelerate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketAccelerateConfiguration - Arguments for method PutBucketAccelerateConfiguration on Paws::S3

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketAccelerateConfiguration on the 
Amazon Simple Storage Service service. Use the attributes of this class
as arguments to method PutBucketAccelerateConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketAccelerateConfiguration.

As an example:

  $service_obj->PutBucketAccelerateConfiguration(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccelerateConfiguration => L<Paws::S3::AccelerateConfiguration>

Specifies the Accelerate Configuration you want to set for the bucket.



=head2 B<REQUIRED> Bucket => Str

Name of the bucket for which the accelerate configuration is set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketAccelerateConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

