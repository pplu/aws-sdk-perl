package Paws::CodeGuruProfiler::ProfilingStatus;
  use Moose;
  has LatestAgentOrchestratedAt => (is => 'ro', isa => 'Str', request_name => 'latestAgentOrchestratedAt', traits => ['NameInRequest']);
  has LatestAgentProfileReportedAt => (is => 'ro', isa => 'Str', request_name => 'latestAgentProfileReportedAt', traits => ['NameInRequest']);
  has LatestAggregatedProfile => (is => 'ro', isa => 'Paws::CodeGuruProfiler::AggregatedProfileTime', request_name => 'latestAggregatedProfile', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::ProfilingStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeGuruProfiler::ProfilingStatus object:

  $service_obj->Method(Att1 => { LatestAgentOrchestratedAt => $value, ..., LatestAggregatedProfile => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeGuruProfiler::ProfilingStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->LatestAgentOrchestratedAt

=head1 DESCRIPTION

The status of profiling of a profiling group.

=head1 ATTRIBUTES


=head2 LatestAgentOrchestratedAt => Str

  Timestamp of when the last interaction of the agent with configureAgent
API for orchestration.


=head2 LatestAgentProfileReportedAt => Str

  Timestamp of when the latest agent profile was successfully reported.


=head2 LatestAggregatedProfile => L<Paws::CodeGuruProfiler::AggregatedProfileTime>

  The time range of latest aggregated profile available.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

