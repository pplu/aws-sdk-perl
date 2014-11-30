
package Paws::S3::PutBucketLifecycle {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str');
  has LifecycleConfiguration => (is => 'ro', isa => 'Paws::S3::LifecycleConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketLifecycle');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::

=head1 ATTRIBUTES

=head2 B<REQUIRED> Bucket => Str

  
=head2 ContentMD5 => Str

  
=head2 LifecycleConfiguration => Paws::S3::LifecycleConfiguration

  


=cut

