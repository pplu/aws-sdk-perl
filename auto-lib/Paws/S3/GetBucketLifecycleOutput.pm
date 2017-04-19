
package Paws::S3::GetBucketLifecycleOutput;
  use Moose;
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::S3::Rule]', traits => ['NameInRequest'], request_name => 'Rule');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketLifecycleOutput

=head1 ATTRIBUTES


=head2 Rules => ArrayRef[L<Paws::S3::Rule>]






=cut

