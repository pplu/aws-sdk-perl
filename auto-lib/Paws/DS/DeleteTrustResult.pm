
package Paws::DS::DeleteTrustResult;
  use Moose;
  has TrustId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::DeleteTrustResult

=head1 ATTRIBUTES


=head2 TrustId => Str

The Trust ID of the trust relationship that was deleted.


=head2 _request_id => Str


=cut

1;