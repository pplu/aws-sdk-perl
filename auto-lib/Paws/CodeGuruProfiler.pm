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

  
  sub AddNotificationChannels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::AddNotificationChannels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetFrameMetricData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::BatchGetFrameMetricData', @_);
    return $self->caller->do_call($self, $call_object);
  }
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
  sub GetFindingsReportAccountSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::GetFindingsReportAccountSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNotificationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::GetNotificationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::GetPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::GetProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::GetRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFindingsReports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::ListFindingsReports', @_);
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
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PostAgentProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::PostAgentProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::PutPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveNotificationChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::RemoveNotificationChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemovePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::RemovePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SubmitFeedback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::SubmitFeedback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProfilingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruProfiler::UpdateProfilingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllProfileTimes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProfileTimes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListProfileTimes(@_, nextToken => $next_result->nextToken);
        push @{ $result->profileTimes }, @{ $next_result->profileTimes };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'profileTimes') foreach (@{ $result->profileTimes });
        $result = $self->ListProfileTimes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'profileTimes') foreach (@{ $result->profileTimes });
    }

    return undef
  }


  sub operations { qw/AddNotificationChannels BatchGetFrameMetricData ConfigureAgent CreateProfilingGroup DeleteProfilingGroup DescribeProfilingGroup GetFindingsReportAccountSummary GetNotificationConfiguration GetPolicy GetProfile GetRecommendations ListFindingsReports ListProfileTimes ListProfilingGroups ListTagsForResource PostAgentProfile PutPermission RemoveNotificationChannel RemovePermission SubmitFeedback TagResource UntagResource UpdateProfilingGroup / }

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

This section provides documentation for the Amazon CodeGuru Profiler
API operations.

Amazon CodeGuru Profiler collects runtime performance data from your
live applications, and provides recommendations that can help you
fine-tune your application performance. Using machine learning
algorithms, CodeGuru Profiler can help you find your most expensive
lines of code and suggest ways you can improve efficiency and remove
CPU bottlenecks.

Amazon CodeGuru Profiler provides different visualizations of profiling
data to help you identify what code is running on the CPU, see how much
time is consumed, and suggest ways to reduce CPU utilization.

Amazon CodeGuru Profiler currently supports applications written in all
Java virtual machine (JVM) languages and Python. While CodeGuru
Profiler supports both visualizations and recommendations for
applications written in Java, it can also generate visualizations and a
subset of recommendations for applications written in other JVM
languages and Python.

For more information, see What is Amazon CodeGuru Profiler
(https://docs.aws.amazon.com/codeguru/latest/profiler-ug/what-is-codeguru-profiler.html)
in the I<Amazon CodeGuru Profiler User Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-profiler-2019-07-18>


=head1 METHODS

=head2 AddNotificationChannels

=over

=item Channels => ArrayRef[L<Paws::CodeGuruProfiler::Channel>]

=item ProfilingGroupName => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::AddNotificationChannels>

Returns: a L<Paws::CodeGuruProfiler::AddNotificationChannelsResponse> instance

Add up to 2 anomaly notifications channels for a profiling group.


=head2 BatchGetFrameMetricData

=over

=item ProfilingGroupName => Str

=item [EndTime => Str]

=item [FrameMetrics => ArrayRef[L<Paws::CodeGuruProfiler::FrameMetric>]]

=item [Period => Str]

=item [StartTime => Str]

=item [TargetResolution => Str]


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::BatchGetFrameMetricData>

Returns: a L<Paws::CodeGuruProfiler::BatchGetFrameMetricDataResponse> instance

Returns the time series of values for a requested list of frame metrics
from a time period.


=head2 ConfigureAgent

=over

=item ProfilingGroupName => Str

=item [FleetInstanceId => Str]

=item [Metadata => L<Paws::CodeGuruProfiler::Metadata>]


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::ConfigureAgent>

Returns: a L<Paws::CodeGuruProfiler::ConfigureAgentResponse> instance

Used by profiler agents to report their current state and to receive
remote configuration updates. For example, C<ConfigureAgent> can be
used to tell an agent whether to profile or not and for how long to
return profiling data.


=head2 CreateProfilingGroup

=over

=item ClientToken => Str

=item ProfilingGroupName => Str

=item [AgentOrchestrationConfig => L<Paws::CodeGuruProfiler::AgentOrchestrationConfig>]

=item [ComputePlatform => Str]

=item [Tags => L<Paws::CodeGuruProfiler::TagsMap>]


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::CreateProfilingGroup>

Returns: a L<Paws::CodeGuruProfiler::CreateProfilingGroupResponse> instance

Creates a profiling group.


=head2 DeleteProfilingGroup

=over

=item ProfilingGroupName => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::DeleteProfilingGroup>

Returns: a L<Paws::CodeGuruProfiler::DeleteProfilingGroupResponse> instance

Deletes a profiling group.


=head2 DescribeProfilingGroup

=over

=item ProfilingGroupName => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::DescribeProfilingGroup>

Returns: a L<Paws::CodeGuruProfiler::DescribeProfilingGroupResponse> instance

Returns a C<ProfilingGroupDescription>
(https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html)
object that contains information about the requested profiling group.


=head2 GetFindingsReportAccountSummary

=over

=item [DailyReportsOnly => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::GetFindingsReportAccountSummary>

Returns: a L<Paws::CodeGuruProfiler::GetFindingsReportAccountSummaryResponse> instance

Returns a list of C<FindingsReportSummary>
(https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_FindingsReportSummary.html)
objects that contain analysis results for all profiling groups in your
AWS account.


=head2 GetNotificationConfiguration

=over

=item ProfilingGroupName => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::GetNotificationConfiguration>

Returns: a L<Paws::CodeGuruProfiler::GetNotificationConfigurationResponse> instance

Get the current configuration for anomaly notifications for a profiling
group.


=head2 GetPolicy

=over

=item ProfilingGroupName => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::GetPolicy>

Returns: a L<Paws::CodeGuruProfiler::GetPolicyResponse> instance

Returns the JSON-formatted resource-based policy on a profiling group.


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

Gets the aggregated profile of a profiling group for a specified time
range. Amazon CodeGuru Profiler collects posted agent profiles for a
profiling group into aggregated profiles.

 <note> <p> Because aggregated profiles expire over time <code>GetProfile</code> is not idempotent. </p> </note> <p> Specify the time range for the requested aggregated profile using 1 or 2 of the following parameters: <code>startTime</code>, <code>endTime</code>, <code>period</code>. The maximum time range allowed is 7 days. If you specify all 3 parameters, an exception is thrown. If you specify only <code>period</code>, the latest aggregated profile is returned. </p> <p> Aggregated profiles are available with aggregation periods of 5 minutes, 1 hour, and 1 day, aligned to UTC. The aggregation period of an aggregated profile determines how long it is retained. For more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AggregatedProfileTime.html"> <code>AggregatedProfileTime</code> </a>. The aggregated profile's aggregation period determines how long it is retained by CodeGuru Profiler. </p> <ul> <li> <p> If the aggregation period is 5 minutes, the aggregated profile is retained for 15 days. </p> </li> <li> <p> If the aggregation period is 1 hour, the aggregated profile is retained for 60 days. </p> </li> <li> <p> If the aggregation period is 1 day, the aggregated profile is retained for 3 years. </p> </li> </ul> <p>There are two use cases for calling <code>GetProfile</code>.</p> <ol> <li> <p> If you want to return an aggregated profile that already exists, use <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ListProfileTimes.html"> <code>ListProfileTimes</code> </a> to view the time ranges of existing aggregated profiles. Use them in a <code>GetProfile</code> request to return a specific, existing aggregated profile. </p> </li> <li> <p> If you want to return an aggregated profile for a time range that doesn't align with an existing aggregated profile, then CodeGuru Profiler makes a best effort to combine existing aggregated profiles from the requested time range and return them as one aggregated profile. </p> <p> If aggregated profiles do not exist for the full time range requested, then aggregated profiles for a smaller time range are returned. For example, if the requested time range is from 00:00 to 00:20, and the existing aggregated profiles are from 00:15 and 00:25, then the aggregated profiles from 00:15 to 00:20 are returned. </p> </li> </ol>


=head2 GetRecommendations

=over

=item EndTime => Str

=item ProfilingGroupName => Str

=item StartTime => Str

=item [Locale => Str]


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::GetRecommendations>

Returns: a L<Paws::CodeGuruProfiler::GetRecommendationsResponse> instance

Returns a list of C<Recommendation>
(https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Recommendation.html)
objects that contain recommendations for a profiling group for a given
time period. A list of C<Anomaly>
(https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Anomaly.html)
objects that contains details about anomalies detected in the profiling
group for the same time period is also returned.


=head2 ListFindingsReports

=over

=item EndTime => Str

=item ProfilingGroupName => Str

=item StartTime => Str

=item [DailyReportsOnly => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::ListFindingsReports>

Returns: a L<Paws::CodeGuruProfiler::ListFindingsReportsResponse> instance

List the available reports for a given profiling group and time range.


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

Lists the start times of the available aggregated profiles of a
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

Returns a list of profiling groups. The profiling groups are returned
as C<ProfilingGroupDescription>
(https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html)
objects.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::ListTagsForResource>

Returns: a L<Paws::CodeGuruProfiler::ListTagsForResourceResponse> instance

Returns a list of the tags that are assigned to a specified resource.


=head2 PostAgentProfile

=over

=item AgentProfile => Str

=item ContentType => Str

=item ProfilingGroupName => Str

=item [ProfileToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::PostAgentProfile>

Returns: a L<Paws::CodeGuruProfiler::PostAgentProfileResponse> instance

Submits profiling data to an aggregated profile of a profiling group.
To get an aggregated profile that is created with this profiling data,
use C<GetProfile>
(https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_GetProfile.html).


=head2 PutPermission

=over

=item ActionGroup => Str

=item Principals => ArrayRef[Str|Undef]

=item ProfilingGroupName => Str

=item [RevisionId => Str]


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::PutPermission>

Returns: a L<Paws::CodeGuruProfiler::PutPermissionResponse> instance

Adds permissions to a profiling group's resource-based policy that are
provided using an action group. If a profiling group doesn't have a
resource-based policy, one is created for it using the permissions in
the action group and the roles and users in the C<principals>
parameter.

 <p> The one supported action group that can be added is <code>agentPermission</code> which grants <code>ConfigureAgent</code> and <code>PostAgent</code> permissions. For more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html">Resource-based policies in CodeGuru Profiler</a> in the <i>Amazon CodeGuru Profiler User Guide</i>, <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html"> <code>ConfigureAgent</code> </a>, and <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html"> <code>PostAgentProfile</code> </a>. </p> <p> The first time you call <code>PutPermission</code> on a profiling group, do not specify a <code>revisionId</code> because it doesn't have a resource-based policy. Subsequent calls must provide a <code>revisionId</code> to specify which revision of the resource-based policy to add the permissions to. </p> <p> The response contains the profiling group's JSON-formatted resource policy. </p>


=head2 RemoveNotificationChannel

=over

=item ChannelId => Str

=item ProfilingGroupName => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::RemoveNotificationChannel>

Returns: a L<Paws::CodeGuruProfiler::RemoveNotificationChannelResponse> instance

Remove one anomaly notifications channel for a profiling group.


=head2 RemovePermission

=over

=item ActionGroup => Str

=item ProfilingGroupName => Str

=item RevisionId => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::RemovePermission>

Returns: a L<Paws::CodeGuruProfiler::RemovePermissionResponse> instance

Removes permissions from a profiling group's resource-based policy that
are provided using an action group. The one supported action group that
can be removed is C<agentPermission> which grants C<ConfigureAgent> and
C<PostAgent> permissions. For more information, see Resource-based
policies in CodeGuru Profiler
(https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html)
in the I<Amazon CodeGuru Profiler User Guide>, C<ConfigureAgent>
(https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html),
and C<PostAgentProfile>
(https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html).


=head2 SubmitFeedback

=over

=item AnomalyInstanceId => Str

=item ProfilingGroupName => Str

=item Type => Str

=item [Comment => Str]


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::SubmitFeedback>

Returns: a L<Paws::CodeGuruProfiler::SubmitFeedbackResponse> instance

Sends feedback to CodeGuru Profiler about whether the anomaly detected
by the analysis is useful or not.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::CodeGuruProfiler::TagsMap>


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::TagResource>

Returns: a L<Paws::CodeGuruProfiler::TagResourceResponse> instance

Use to assign one or more tags to a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::UntagResource>

Returns: a L<Paws::CodeGuruProfiler::UntagResourceResponse> instance

Use to remove one or more tags from a resource.


=head2 UpdateProfilingGroup

=over

=item AgentOrchestrationConfig => L<Paws::CodeGuruProfiler::AgentOrchestrationConfig>

=item ProfilingGroupName => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruProfiler::UpdateProfilingGroup>

Returns: a L<Paws::CodeGuruProfiler::UpdateProfilingGroupResponse> instance

Updates a profiling group.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllProfileTimes(sub { },EndTime => Str, Period => Str, ProfilingGroupName => Str, StartTime => Str, [MaxResults => Int, NextToken => Str, OrderBy => Str])

=head2 ListAllProfileTimes(EndTime => Str, Period => Str, ProfilingGroupName => Str, StartTime => Str, [MaxResults => Int, NextToken => Str, OrderBy => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - profileTimes, passing the object as the first parameter, and the string 'profileTimes' as the second parameter 

If not, it will return a a L<Paws::CodeGuruProfiler::ListProfileTimesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

