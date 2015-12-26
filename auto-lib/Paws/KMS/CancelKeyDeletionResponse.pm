
package Paws::KMS::CancelKeyDeletionResponse;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::KMS::CancelKeyDeletionResponse

=head1 ATTRIBUTES


=head2 KeyId => Str

The unique identifier of the master key for which deletion is canceled.




=cut

1;