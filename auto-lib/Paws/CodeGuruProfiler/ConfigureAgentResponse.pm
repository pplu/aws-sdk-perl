
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

The configuration for the agent to use.


=head2 _request_id => Str


=cut

