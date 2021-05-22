
package Paws::Config::GetStoredQueryResponse;
  use Moose;
  has StoredQuery => (is => 'ro', isa => 'Paws::Config::StoredQuery');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetStoredQueryResponse

=head1 ATTRIBUTES


=head2 StoredQuery => L<Paws::Config::StoredQuery>

Returns a C<StoredQuery> object.


=head2 _request_id => Str


=cut

1;