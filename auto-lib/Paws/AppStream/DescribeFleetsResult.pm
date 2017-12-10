
package Paws::AppStream::DescribeFleetsResult;
  use Moose;
  has Fleets => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::Fleet]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeFleetsResult

=head1 ATTRIBUTES


=head2 Fleets => ArrayRef[L<Paws::AppStream::Fleet>]

Information about the fleets.


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 _request_id => Str


=cut

1;