
package Paws::DS::CreateTrustResult;
  use Moose;
  has TrustId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::CreateTrustResult

=head1 ATTRIBUTES


=head2 TrustId => Str

A unique identifier for the trust relationship that was created.


=head2 _request_id => Str


=cut

1;