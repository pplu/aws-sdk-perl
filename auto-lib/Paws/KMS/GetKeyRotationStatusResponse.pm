
package Paws::KMS::GetKeyRotationStatusResponse;
  use Moose;
  has KeyRotationEnabled => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GetKeyRotationStatusResponse

=head1 ATTRIBUTES


=head2 KeyRotationEnabled => Bool

A Boolean value that specifies whether key rotation is enabled.


=head2 _request_id => Str


=cut

1;