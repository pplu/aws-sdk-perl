package Paws::XRay;
  use Moose;
  sub service { 'xray' }
  sub signing_name { 'xray' }
  sub version { '2016-04-12' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchGetTraces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::BatchGetTraces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::CreateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSamplingRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::CreateSamplingRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::DeleteGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSamplingRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::DeleteSamplingRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEncryptionConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetEncryptionConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSamplingRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetSamplingRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSamplingStatisticSummaries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetSamplingStatisticSummaries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSamplingTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetSamplingTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceGraph {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetServiceGraph', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTraceGraph {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetTraceGraph', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTraceSummaries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetTraceSummaries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEncryptionConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::PutEncryptionConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutTelemetryRecords {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::PutTelemetryRecords', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutTraceSegments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::PutTraceSegments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::UpdateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSamplingRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::UpdateSamplingRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub BatchGetAllTraces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->BatchGetTraces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->BatchGetTraces(@_, NextToken => $next_result->NextToken);
        push @{ $result->Traces }, @{ $next_result->Traces };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Traces') foreach (@{ $result->Traces });
        $result = $self->BatchGetTraces(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Traces') foreach (@{ $result->Traces });
    }

    return undef
  }
  sub GetAllGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->Groups }, @{ $next_result->Groups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Groups') foreach (@{ $result->Groups });
        $result = $self->GetGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Groups') foreach (@{ $result->Groups });
    }

    return undef
  }
  sub GetAllSamplingRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetSamplingRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetSamplingRules(@_, NextToken => $next_result->NextToken);
        push @{ $result->SamplingRuleRecords }, @{ $next_result->SamplingRuleRecords };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SamplingRuleRecords') foreach (@{ $result->SamplingRuleRecords });
        $result = $self->GetSamplingRules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SamplingRuleRecords') foreach (@{ $result->SamplingRuleRecords });
    }

    return undef
  }
  sub GetAllSamplingStatisticSummaries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetSamplingStatisticSummaries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetSamplingStatisticSummaries(@_, NextToken => $next_result->NextToken);
        push @{ $result->SamplingStatisticSummaries }, @{ $next_result->SamplingStatisticSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SamplingStatisticSummaries') foreach (@{ $result->SamplingStatisticSummaries });
        $result = $self->GetSamplingStatisticSummaries(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SamplingStatisticSummaries') foreach (@{ $result->SamplingStatisticSummaries });
    }

    return undef
  }
  sub GetAllServiceGraph {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetServiceGraph(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetServiceGraph(@_, NextToken => $next_result->NextToken);
        push @{ $result->Services }, @{ $next_result->Services };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Services') foreach (@{ $result->Services });
        $result = $self->GetServiceGraph(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Services') foreach (@{ $result->Services });
    }

    return undef
  }
  sub GetAllTraceGraph {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTraceGraph(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTraceGraph(@_, NextToken => $next_result->NextToken);
        push @{ $result->Services }, @{ $next_result->Services };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Services') foreach (@{ $result->Services });
        $result = $self->GetTraceGraph(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Services') foreach (@{ $result->Services });
    }

    return undef
  }
  sub GetAllTraceSummaries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTraceSummaries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTraceSummaries(@_, NextToken => $next_result->NextToken);
        push @{ $result->TraceSummaries }, @{ $next_result->TraceSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TraceSummaries') foreach (@{ $result->TraceSummaries });
        $result = $self->GetTraceSummaries(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TraceSummaries') foreach (@{ $result->TraceSummaries });
    }

    return undef
  }


  sub operations { qw/BatchGetTraces CreateGroup CreateSamplingRule DeleteGroup DeleteSamplingRule GetEncryptionConfig GetGroup GetGroups GetSamplingRules GetSamplingStatisticSummaries GetSamplingTargets GetServiceGraph GetTraceGraph GetTraceSummaries PutEncryptionConfig PutTelemetryRecords PutTraceSegments UpdateGroup UpdateSamplingRule / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay - Perl Interface to AWS AWS X-Ray

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('XRay');
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

AWS X-Ray provides APIs for managing debug traces and retrieving
service maps and other data created by processing those traces.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12>


=head1 METHODS

=head2 BatchGetTraces

=over

=item TraceIds => ArrayRef[Str|Undef]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::XRay::BatchGetTraces>

Returns: a L<Paws::XRay::BatchGetTracesResult> instance

Retrieves a list of traces specified by ID. Each trace is a collection
of segment documents that originates from a single request. Use
C<GetTraceSummaries> to get a list of trace IDs.


=head2 CreateGroup

=over

=item GroupName => Str

=item [FilterExpression => Str]


=back

Each argument is described in detail in: L<Paws::XRay::CreateGroup>

Returns: a L<Paws::XRay::CreateGroupResult> instance

Creates a group resource with a name and a filter expression.


=head2 CreateSamplingRule

=over

=item SamplingRule => L<Paws::XRay::SamplingRule>


=back

Each argument is described in detail in: L<Paws::XRay::CreateSamplingRule>

Returns: a L<Paws::XRay::CreateSamplingRuleResult> instance

Creates a rule to control sampling behavior for instrumented
applications. Services retrieve rules with GetSamplingRules, and
evaluate each rule in ascending order of I<priority> for each request.
If a rule matches, the service records a trace, borrowing it from the
reservoir size. After 10 seconds, the service reports back to X-Ray
with GetSamplingTargets to get updated versions of each in-use rule.
The updated rule contains a trace quota that the service can use
instead of borrowing from the reservoir.


=head2 DeleteGroup

=over

=item [GroupARN => Str]

=item [GroupName => Str]


=back

Each argument is described in detail in: L<Paws::XRay::DeleteGroup>

Returns: a L<Paws::XRay::DeleteGroupResult> instance

Deletes a group resource.


=head2 DeleteSamplingRule

=over

=item [RuleARN => Str]

=item [RuleName => Str]


=back

Each argument is described in detail in: L<Paws::XRay::DeleteSamplingRule>

Returns: a L<Paws::XRay::DeleteSamplingRuleResult> instance

Deletes a sampling rule.


=head2 GetEncryptionConfig






Each argument is described in detail in: L<Paws::XRay::GetEncryptionConfig>

Returns: a L<Paws::XRay::GetEncryptionConfigResult> instance

Retrieves the current encryption configuration for X-Ray data.


=head2 GetGroup

=over

=item [GroupARN => Str]

=item [GroupName => Str]


=back

Each argument is described in detail in: L<Paws::XRay::GetGroup>

Returns: a L<Paws::XRay::GetGroupResult> instance

Retrieves group resource details.


=head2 GetGroups

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::XRay::GetGroups>

Returns: a L<Paws::XRay::GetGroupsResult> instance

Retrieves all active group details.


=head2 GetSamplingRules

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::XRay::GetSamplingRules>

Returns: a L<Paws::XRay::GetSamplingRulesResult> instance

Retrieves all sampling rules.


=head2 GetSamplingStatisticSummaries

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::XRay::GetSamplingStatisticSummaries>

Returns: a L<Paws::XRay::GetSamplingStatisticSummariesResult> instance

Retrieves information about recent sampling results for all sampling
rules.


=head2 GetSamplingTargets

=over

=item SamplingStatisticsDocuments => ArrayRef[L<Paws::XRay::SamplingStatisticsDocument>]


=back

Each argument is described in detail in: L<Paws::XRay::GetSamplingTargets>

Returns: a L<Paws::XRay::GetSamplingTargetsResult> instance

Requests a sampling quota for rules that the service is using to sample
requests.


=head2 GetServiceGraph

=over

=item EndTime => Str

=item StartTime => Str

=item [GroupARN => Str]

=item [GroupName => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::XRay::GetServiceGraph>

Returns: a L<Paws::XRay::GetServiceGraphResult> instance

Retrieves a document that describes services that process incoming
requests, and downstream services that they call as a result. Root
services process incoming requests and make calls to downstream
services. Root services are applications that use the AWS X-Ray SDK.
Downstream services can be other applications, AWS resources, HTTP web
APIs, or SQL databases.


=head2 GetTraceGraph

=over

=item TraceIds => ArrayRef[Str|Undef]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::XRay::GetTraceGraph>

Returns: a L<Paws::XRay::GetTraceGraphResult> instance

Retrieves a service graph for one or more specific trace IDs.


=head2 GetTraceSummaries

=over

=item EndTime => Str

=item StartTime => Str

=item [FilterExpression => Str]

=item [NextToken => Str]

=item [Sampling => Bool]


=back

Each argument is described in detail in: L<Paws::XRay::GetTraceSummaries>

Returns: a L<Paws::XRay::GetTraceSummariesResult> instance

Retrieves IDs and metadata for traces available for a specified time
frame using an optional filter. To get the full traces, pass the trace
IDs to C<BatchGetTraces>.

A filter expression can target traced requests that hit specific
service nodes or edges, have errors, or come from a known user. For
example, the following filter expression targets traces that pass
through C<api.example.com>:

C<service("api.example.com")>

This filter expression finds traces that have an annotation named
C<account> with the value C<12345>:

C<annotation.account = "12345">

For a full list of indexed fields and keywords that you can use in
filter expressions, see Using Filter Expressions
(http://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html)
in the I<AWS X-Ray Developer Guide>.


=head2 PutEncryptionConfig

=over

=item Type => Str

=item [KeyId => Str]


=back

Each argument is described in detail in: L<Paws::XRay::PutEncryptionConfig>

Returns: a L<Paws::XRay::PutEncryptionConfigResult> instance

Updates the encryption configuration for X-Ray data.


=head2 PutTelemetryRecords

=over

=item TelemetryRecords => ArrayRef[L<Paws::XRay::TelemetryRecord>]

=item [EC2InstanceId => Str]

=item [Hostname => Str]

=item [ResourceARN => Str]


=back

Each argument is described in detail in: L<Paws::XRay::PutTelemetryRecords>

Returns: a L<Paws::XRay::PutTelemetryRecordsResult> instance

Used by the AWS X-Ray daemon to upload telemetry.


=head2 PutTraceSegments

=over

=item TraceSegmentDocuments => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::XRay::PutTraceSegments>

Returns: a L<Paws::XRay::PutTraceSegmentsResult> instance

Uploads segment documents to AWS X-Ray. The X-Ray SDK generates segment
documents and sends them to the X-Ray daemon, which uploads them in
batches. A segment document can be a completed segment, an in-progress
segment, or an array of subsegments.

Segments must include the following fields. For the full segment
document schema, see AWS X-Ray Segment Documents
(https://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html)
in the I<AWS X-Ray Developer Guide>.

B<Required Segment Document Fields>

=over

=item *

C<name> - The name of the service that handled the request.

=item *

C<id> - A 64-bit identifier for the segment, unique among segments in
the same trace, in 16 hexadecimal digits.

=item *

C<trace_id> - A unique identifier that connects all segments and
subsegments originating from a single client request.

=item *

C<start_time> - Time the segment or subsegment was created, in floating
point seconds in epoch time, accurate to milliseconds. For example,
C<1480615200.010> or C<1.480615200010E9>.

=item *

C<end_time> - Time the segment or subsegment was closed. For example,
C<1480615200.090> or C<1.480615200090E9>. Specify either an C<end_time>
or C<in_progress>.

=item *

C<in_progress> - Set to C<true> instead of specifying an C<end_time> to
record that a segment has been started, but is not complete. Send an in
progress segment when your application receives a request that will
take a long time to serve, to trace the fact that the request was
received. When the response is sent, send the complete segment to
overwrite the in-progress segment.

=back

A C<trace_id> consists of three numbers separated by hyphens. For
example, 1-58406520-a006649127e371903a2de979. This includes:

B<Trace ID Format>

=over

=item *

The version number, i.e. C<1>.

=item *

The time of the original request, in Unix epoch time, in 8 hexadecimal
digits. For example, 10:00AM December 2nd, 2016 PST in epoch time is
C<1480615200> seconds, or C<58406520> in hexadecimal.

=item *

A 96-bit identifier for the trace, globally unique, in 24 hexadecimal
digits.

=back



=head2 UpdateGroup

=over

=item [FilterExpression => Str]

=item [GroupARN => Str]

=item [GroupName => Str]


=back

Each argument is described in detail in: L<Paws::XRay::UpdateGroup>

Returns: a L<Paws::XRay::UpdateGroupResult> instance

Updates a group resource.


=head2 UpdateSamplingRule

=over

=item SamplingRuleUpdate => L<Paws::XRay::SamplingRuleUpdate>


=back

Each argument is described in detail in: L<Paws::XRay::UpdateSamplingRule>

Returns: a L<Paws::XRay::UpdateSamplingRuleResult> instance

Modifies a sampling rule's configuration.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 BatchGetAllTraces(sub { },TraceIds => ArrayRef[Str|Undef], [NextToken => Str])

=head2 BatchGetAllTraces(TraceIds => ArrayRef[Str|Undef], [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Traces, passing the object as the first parameter, and the string 'Traces' as the second parameter 

If not, it will return a a L<Paws::XRay::BatchGetTracesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllGroups(sub { },[NextToken => Str])

=head2 GetAllGroups([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Groups, passing the object as the first parameter, and the string 'Groups' as the second parameter 

If not, it will return a a L<Paws::XRay::GetGroupsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllSamplingRules(sub { },[NextToken => Str])

=head2 GetAllSamplingRules([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SamplingRuleRecords, passing the object as the first parameter, and the string 'SamplingRuleRecords' as the second parameter 

If not, it will return a a L<Paws::XRay::GetSamplingRulesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllSamplingStatisticSummaries(sub { },[NextToken => Str])

=head2 GetAllSamplingStatisticSummaries([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SamplingStatisticSummaries, passing the object as the first parameter, and the string 'SamplingStatisticSummaries' as the second parameter 

If not, it will return a a L<Paws::XRay::GetSamplingStatisticSummariesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllServiceGraph(sub { },EndTime => Str, StartTime => Str, [GroupARN => Str, GroupName => Str, NextToken => Str])

=head2 GetAllServiceGraph(EndTime => Str, StartTime => Str, [GroupARN => Str, GroupName => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Services, passing the object as the first parameter, and the string 'Services' as the second parameter 

If not, it will return a a L<Paws::XRay::GetServiceGraphResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTraceGraph(sub { },TraceIds => ArrayRef[Str|Undef], [NextToken => Str])

=head2 GetAllTraceGraph(TraceIds => ArrayRef[Str|Undef], [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Services, passing the object as the first parameter, and the string 'Services' as the second parameter 

If not, it will return a a L<Paws::XRay::GetTraceGraphResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTraceSummaries(sub { },EndTime => Str, StartTime => Str, [FilterExpression => Str, NextToken => Str, Sampling => Bool])

=head2 GetAllTraceSummaries(EndTime => Str, StartTime => Str, [FilterExpression => Str, NextToken => Str, Sampling => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TraceSummaries, passing the object as the first parameter, and the string 'TraceSummaries' as the second parameter 

If not, it will return a a L<Paws::XRay::GetTraceSummariesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

