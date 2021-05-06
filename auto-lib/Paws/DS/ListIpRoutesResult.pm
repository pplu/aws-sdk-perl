
package Paws::DS::ListIpRoutesResult;
  use Moose;
  has IpRoutesInfo => (is => 'ro', isa => 'ArrayRef[Paws::DS::IpRouteInfo]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::ListIpRoutesResult

=head1 ATTRIBUTES


=head2 IpRoutesInfo => ArrayRef[L<Paws::DS::IpRouteInfo>]

A list of IpRoutes.


=head2 NextToken => Str

If not null, more results are available. Pass this value for the
I<NextToken> parameter in a subsequent call to ListIpRoutes to retrieve
the next set of items.


=head2 _request_id => Str


=cut

1;