package Paws::CodeGuruProfiler::ProfilingGroupDescription;
  use Moose;
  has AgentOrchestrationConfig => (is => 'ro', isa => 'Paws::CodeGuruProfiler::AgentOrchestrationConfig', request_name => 'agentOrchestrationConfig', traits => ['NameInRequest']);
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has ProfilingStatus => (is => 'ro', isa => 'Paws::CodeGuruProfiler::ProfilingStatus', request_name => 'profilingStatus', traits => ['NameInRequest']);
  has UpdatedAt => (is => 'ro', isa => 'Str', request_name => 'updatedAt', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::ProfilingGroupDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeGuruProfiler::ProfilingGroupDescription object:

  $service_obj->Method(Att1 => { AgentOrchestrationConfig => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeGuruProfiler::ProfilingGroupDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->AgentOrchestrationConfig

=head1 DESCRIPTION

The description of a profiling group.

=head1 ATTRIBUTES


=head2 AgentOrchestrationConfig => L<Paws::CodeGuruProfiler::AgentOrchestrationConfig>

  


=head2 Arn => Str

  


=head2 CreatedAt => Str

  The timestamp of when the profiling group was created.


=head2 Name => Str

  


=head2 ProfilingStatus => L<Paws::CodeGuruProfiler::ProfilingStatus>

  


=head2 UpdatedAt => Str

  The timestamp of when the profiling group was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

