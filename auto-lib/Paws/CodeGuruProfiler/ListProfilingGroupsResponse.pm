
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




=head2 B<REQUIRED> ProfilingGroupNames => ArrayRef[Str|Undef]




=head2 ProfilingGroups => ArrayRef[L<Paws::CodeGuruProfiler::ProfilingGroupDescription>]




=head2 _request_id => Str


=cut

