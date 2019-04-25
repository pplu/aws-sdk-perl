
package Paws::DS::UpdateTrustResult;
  use Moose;
  has RequestId => (is => 'ro', isa => 'Str');
  has TrustId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::UpdateTrustResult

=head1 ATTRIBUTES


=head2 RequestId => Str




=head2 TrustId => Str

Identifier of the trust relationship.


=head2 _request_id => Str


=cut

1;