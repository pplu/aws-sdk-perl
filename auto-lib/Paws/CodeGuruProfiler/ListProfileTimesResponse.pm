
package Paws::CodeGuruProfiler::ListProfileTimesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ProfileTimes => (is => 'ro', isa => 'ArrayRef[Paws::CodeGuruProfiler::ProfileTime]', traits => ['NameInRequest'], request_name => 'profileTimes', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::ListProfileTimesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListProfileTimes>
request. When the results of a C<ListProfileTimes> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 B<REQUIRED> ProfileTimes => ArrayRef[L<Paws::CodeGuruProfiler::ProfileTime>]

The list of start times of the available profiles for the aggregation
period in the specified time range.


=head2 _request_id => Str


=cut

