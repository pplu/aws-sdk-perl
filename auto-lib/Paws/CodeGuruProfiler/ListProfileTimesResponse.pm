
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




=head2 B<REQUIRED> ProfileTimes => ArrayRef[L<Paws::CodeGuruProfiler::ProfileTime>]

List of start times of the available profiles for the aggregation
period in the specified time range.


=head2 _request_id => Str


=cut

