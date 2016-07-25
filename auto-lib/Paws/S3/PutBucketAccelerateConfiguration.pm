
package Paws::S3::PutBucketAccelerateConfiguration;
  use Moose;
  has AccelerateConfiguration => (is => 'ro', isa => 'Paws::S3::AccelerateConfiguration', required => 1);
  has Bucket => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Bucket' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketAccelerateConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?accelerate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccelerateConfiguration => L<Paws::S3::AccelerateConfiguration>

Specifies the Accelerate Configuration you want to set for the bucket.



=head2 B<REQUIRED> Bucket => Str

Name of the bucket for which the accelerate configuration is set.




=cut

