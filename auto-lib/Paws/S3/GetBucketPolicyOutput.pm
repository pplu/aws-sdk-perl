
package Paws::S3::GetBucketPolicyOutput;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketPolicyOutput

=head1 ATTRIBUTES


=head2 Policy => Str

The bucket policy as a JSON document.




=cut

