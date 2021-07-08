
package Paws::S3Control::GetBucketPolicyResult;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetBucketPolicyResult

=head1 ATTRIBUTES


=head2 Policy => Str

The policy of the Outposts bucket.




=cut

