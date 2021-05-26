package Paws::CodeGuruProfiler;
  use Moose;
  sub service { 'codeguru-profiler' }
  sub signing_name { 'codeguru-profiler' }
  sub version { '2019-07-18' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub ConfigureAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::ConfigureAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProfilingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::CreateProfilingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProfilingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::DeleteProfilingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProfilingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::DescribeProfilingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::GetProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProfileTimes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::ListProfileTimes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProfilingGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::ListProfilingGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PostAgentProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::PostAgentProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProfilingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::UpdateProfilingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/ConfigureAgent CreateProfilingGroup DeleteProfilingGroup DescribeProfilingGroup GetProfile ListProfileTimes ListProfilingGroups PostAgentProfile UpdateProfilingGroup / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler - Perl Interface to AWS Amazon CodeGuru Profiler

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CodeGuruProfiler');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Example service documentation.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-profiler-2019-07-18>


=head1 METHODS

=head2 ConfigureAgent

=over

=item ProfilingGroupName => Str

=item [FleetInstanceId => Str]


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::ConfigureAgent>

Returns: a L<Paws::CodeGuruProfiler::ConfigureAgentResponse> instance

Provides the configuration to use for an agent of the profiling group.


=head2 CreateProfilingGroup

=over

=item ClientToken => Str

=item ProfilingGroupName => Str

=item [AgentOrchestrationConfig => L<Paws::CodeGuruProfiler::AgentOrchestrationConfig>]


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::CreateProfilingGroup>

Returns: a L<Paws::CodeGuruProfiler::CreateProfilingGroupResponse> instance

Create a profiling group.


=head2 DeleteProfilingGroup

=over

=item ProfilingGroupName => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::DeleteProfilingGroup>

Returns: a L<Paws::CodeGuruProfiler::DeleteProfilingGroupResponse> instance

Delete a profiling group.


=head2 DescribeProfilingGroup

=over

=item ProfilingGroupName => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::DescribeProfilingGroup>

Returns: a L<Paws::CodeGuruProfiler::DescribeProfilingGroupResponse> instance

Describe a profiling group.


=head2 GetProfile

=over

=item ProfilingGroupName => Str

=item [Accept => Str]

=item [EndTime => Str]

=item [MaxDepth => Int]

=item [Period => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::GetProfile>

Returns: a L<Paws::CodeGuruProfiler::GetProfileResponse> instance

Get the aggregated profile of a profiling group for the specified time
range. If the requested time range does not align with the available
aggregated profiles, it will be expanded to attain alignment. If
aggregated profiles are available only for part of the period
requested, the profile is returned from the earliest available to the
latest within the requested time range. For instance, if the requested
time range is from 00:00 to 00:20 and the available profiles are from
00:15 to 00:25, then the returned profile will be from 00:15 to 00:20.


=head2 ListProfileTimes

=over

=item EndTime => Str

=item Period => Str

=item ProfilingGroupName => Str

=item StartTime => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OrderBy => Str]


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::ListProfileTimes>

Returns: a L<Paws::CodeGuruProfiler::ListProfileTimesResponse> instance

List the start times of the available aggregated profiles of a
profiling group for an aggregation period within the specified time
range.


=head2 ListProfilingGroups

=over

=item [IncludeDescription => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::ListProfilingGroups>

Returns: a L<Paws::CodeGuruProfiler::ListProfilingGroupsResponse> instance

List profiling groups in the account.


=head2 PostAgentProfile

=over

=item AgentProfile => Str

=item ContentType => Str

=item ProfilingGroupName => Str

=item [ProfileToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::PostAgentProfile>

Returns: a L<Paws::CodeGuruProfiler::PostAgentProfileResponse> instance

Submit profile collected by an agent belonging to a profiling group for
aggregation.


=head2 UpdateProfilingGroup

=over

=item AgentOrchestrationConfig => L<Paws::CodeGuruProfiler::AgentOrchestrationConfig>

=item ProfilingGroupName => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::UpdateProfilingGroup>

Returns: a L<Paws::CodeGuruProfiler::UpdateProfilingGroupResponse> instance

Update a profiling group.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

