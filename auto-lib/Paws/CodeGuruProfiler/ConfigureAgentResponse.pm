
package Paws::CodeGuruProfiler::ConfigureAgentResponse;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::CodeGuruProfiler::AgentConfiguration', traits => ['NameInRequest'], request_name => 'configuration', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Configuration');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::ConfigureAgentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => L<Paws::CodeGuruProfiler::AgentConfiguration>

An C<AgentConfiguration>
(https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AgentConfiguration.html)
object that specifies if an agent profiles or not and for how long to
return profiling data.


=head2 _request_id => Str


=cut

