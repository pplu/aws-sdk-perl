
package Paws::CodeGuruProfiler::ListProfilingGroupsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ProfilingGroupNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'profilingGroupNames', required => 1);
  has ProfilingGroups => (is => 'ro', isa => 'ArrayRef[Paws::CodeGuruProfiler::ProfilingGroupDescription]', traits => ['NameInRequest'], request_name => 'profilingGroups');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::ListProfilingGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListProfilingGroups>
request. When the results of a C<ListProfilingGroups> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 B<REQUIRED> ProfilingGroupNames => ArrayRef[Str|Undef]

A returned list of profiling group names. A list of the names is
returned only if C<includeDescription> is C<false>, otherwise a list of
C<ProfilingGroupDescription>
(https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html)
objects is returned.


=head2 ProfilingGroups => ArrayRef[L<Paws::CodeGuruProfiler::ProfilingGroupDescription>]

A returned list C<ProfilingGroupDescription>
(https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html)
objects. A list of C<ProfilingGroupDescription>
(https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html)
objects is returned only if C<includeDescription> is C<true>, otherwise
a list of profiling group names is returned.


=head2 _request_id => Str


=cut

