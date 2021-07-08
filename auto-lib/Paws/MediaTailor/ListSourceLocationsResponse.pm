
package Paws::MediaTailor::ListSourceLocationsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::SourceLocation]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::ListSourceLocationsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::MediaTailor::SourceLocation>]

An array of source locations.


=head2 NextToken => Str

Pagination token from the list request. Use the token to fetch the next
page of results.


=head2 _request_id => Str


=cut

