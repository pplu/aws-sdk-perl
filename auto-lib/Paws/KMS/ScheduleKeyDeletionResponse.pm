
package Paws::KMS::ScheduleKeyDeletionResponse;
  use Moose;
  has DeletionDate => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ScheduleKeyDeletionResponse

=head1 ATTRIBUTES


=head2 DeletionDate => Str

The date and time after which AWS KMS deletes the customer master key
(CMK).


=head2 KeyId => Str

The Amazon Resource Name (key ARN
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN))
of the CMK whose deletion is scheduled.


=head2 _request_id => Str


=cut

1;