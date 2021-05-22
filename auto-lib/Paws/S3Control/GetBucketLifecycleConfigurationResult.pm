
package Paws::S3Control::GetBucketLifecycleConfigurationResult;
  use Moose;
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::LifecycleRule]', request_name => 'Rule', traits => ['NameInRequest']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetBucketLifecycleConfigurationResult

=head1 ATTRIBUTES


=head2 Rules => ArrayRef[L<Paws::S3Control::LifecycleRule>]

Container for the lifecycle rule of the Outposts bucket.




=cut

