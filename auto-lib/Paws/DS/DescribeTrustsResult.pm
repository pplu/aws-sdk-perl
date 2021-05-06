
package Paws::DS::DescribeTrustsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Trusts => (is => 'ro', isa => 'ArrayRef[Paws::DS::Trust]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeTrustsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If not null, more results are available. Pass this value for the
I<NextToken> parameter in a subsequent call to DescribeTrusts to
retrieve the next set of items.


=head2 Trusts => ArrayRef[L<Paws::DS::Trust>]

The list of Trust objects that were retrieved.

It is possible that this list contains less than the number of items
specified in the I<Limit> member of the request. This occurs if there
are less than the requested number of items left to retrieve, or if the
limitations of the operation have been exceeded.


=head2 _request_id => Str


=cut

1;