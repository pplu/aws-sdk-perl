
package Paws::MarketplaceMetering::RegisterUsageResult;
  use Moose;
  has PublicKeyRotationTimestamp => (is => 'ro', isa => 'Str');
  has Signature => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceMetering::RegisterUsageResult

=head1 ATTRIBUTES


=head2 PublicKeyRotationTimestamp => Str

(Optional) Only included when public key version has expired


=head2 Signature => Str

JWT Token


=head2 _request_id => Str


=cut

1;