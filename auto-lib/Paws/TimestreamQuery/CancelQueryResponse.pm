
package Paws::TimestreamQuery::CancelQueryResponse;
  use Moose;
  has CancellationMessage => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::CancelQueryResponse

=head1 ATTRIBUTES


=head2 CancellationMessage => Str

A C<CancellationMessage> is returned when a C<CancelQuery> request for
the query specified by C<QueryId> has already been issued.


=head2 _request_id => Str


=cut

1;