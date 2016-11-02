
package Paws::DS::VerifyTrustResult;
  use Moose;
  has TrustId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::VerifyTrustResult

=head1 ATTRIBUTES


=head2 TrustId => Str

The unique Trust ID of the trust relationship that was verified.


=head2 _request_id => Str


=cut

1;