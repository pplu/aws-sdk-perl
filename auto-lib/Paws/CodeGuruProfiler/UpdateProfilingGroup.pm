
package Paws::CodeGuruProfiler::UpdateProfilingGroup;
  use Moose;
  has AgentOrchestrationConfig => (is => 'ro', isa => 'Paws::CodeGuruProfiler::AgentOrchestrationConfig', traits => ['NameInRequest'], request_name => 'agentOrchestrationConfig', required => 1);
  has ProfilingGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profilingGroupName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProfilingGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profilingGroups/{profilingGroupName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruProfiler::UpdateProfilingGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::UpdateProfilingGroup - Arguments for method UpdateProfilingGroup on L<Paws::CodeGuruProfiler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProfilingGroup on the
L<Amazon CodeGuru Profiler|Paws::CodeGuruProfiler> service. Use the attributes of this class
as arguments to method UpdateProfilingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProfilingGroup.

=head1 SYNOPSIS

    my $codeguru-profiler = Paws->service('CodeGuruProfiler');
    my $UpdateProfilingGroupResponse =
      $codeguru -profiler->UpdateProfilingGroup(
      AgentOrchestrationConfig => {
        ProfilingEnabled => 1,

      },
      ProfilingGroupName => 'MyProfilingGroupName',

      );

    # Results:
    my $ProfilingGroup = $UpdateProfilingGroupResponse->ProfilingGroup;

    # Returns a L<Paws::CodeGuruProfiler::UpdateProfilingGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-profiler/UpdateProfilingGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentOrchestrationConfig => L<Paws::CodeGuruProfiler::AgentOrchestrationConfig>

Specifies whether profiling is enabled or disabled for a profiling
group.



=head2 B<REQUIRED> ProfilingGroupName => Str

The name of the profiling group to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProfilingGroup in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

