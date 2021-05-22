
package Paws::CodeGuruProfiler::UpdateProfilingGroupResponse;
  use Moose;
  has ProfilingGroup => (is => 'ro', isa => 'Paws::CodeGuruProfiler::ProfilingGroupDescription', traits => ['NameInRequest'], request_name => 'profilingGroup', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ProfilingGroup');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::UpdateProfilingGroupResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfilingGroup => L<Paws::CodeGuruProfiler::ProfilingGroupDescription>

A C<ProfilingGroupDescription>
(https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html)
that contains information about the returned updated profiling group.


=head2 _request_id => Str


=cut

