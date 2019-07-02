
package Paws::EC2::DescribeTrafficMirrorFiltersResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has TrafficMirrorFilters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TrafficMirrorFilter]', request_name => 'trafficMirrorFilterSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTrafficMirrorFiltersResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. The value is
C<null> when there are no more results to return.


=head2 TrafficMirrorFilters => ArrayRef[L<Paws::EC2::TrafficMirrorFilter>]

Information about one or more Traffic Mirror filters.


=head2 _request_id => Str


=cut

