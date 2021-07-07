
package Paws::KMS::ReplicateKeyResponse;
  use Moose;
  has ReplicaKeyMetadata => (is => 'ro', isa => 'Paws::KMS::KeyMetadata');
  has ReplicaPolicy => (is => 'ro', isa => 'Str');
  has ReplicaTags => (is => 'ro', isa => 'ArrayRef[Paws::KMS::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ReplicateKeyResponse

=head1 ATTRIBUTES


=head2 ReplicaKeyMetadata => L<Paws::KMS::KeyMetadata>

Displays details about the new replica CMK, including its Amazon
Resource Name (key ARN
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN))
and key state
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html).
It also includes the ARN and AWS Region of its primary key and other
replica keys.


=head2 ReplicaPolicy => Str

The key policy of the new replica key. The value is a key policy
document in JSON format.


=head2 ReplicaTags => ArrayRef[L<Paws::KMS::Tag>]

The tags on the new replica key. The value is a list of tag key and tag
value pairs.


=head2 _request_id => Str


=cut

1;