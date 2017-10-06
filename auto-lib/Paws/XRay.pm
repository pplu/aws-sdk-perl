package Paws::XRay;
  use Moose;
  sub service { 'xray' }
  sub version { '2016-04-12' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller', 'Paws::Net::RestJsonResponse';

  
  sub BatchGetTraces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::BatchGetTraces', @_);
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
  


  sub operations { qw/BatchGetTraces GetServiceGraph GetTraceGraph GetTraceSummaries PutTelemetryRecords PutTraceSegments / }

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

=head1 METHODS

=head2 BatchGetTraces(TraceIds => ArrayRef[Str|Undef], [NextToken => Str])

Each argument is described in detail in: L<Paws::XRay::BatchGetTraces>

Returns: a L<Paws::XRay::BatchGetTracesResult> instance

  Retrieves a list of traces specified by ID. Each trace is a collection
of segment documents that originates from a single request. Use
C<GetTraceSummaries> to get a list of trace IDs.


=head2 GetServiceGraph(EndTime => Str, StartTime => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::XRay::GetServiceGraph>

Returns: a L<Paws::XRay::GetServiceGraphResult> instance

  Retrieves a document that describes services that process incoming
requests, and downstream services that they call as a result. Root
services process incoming requests and make calls to downstream
services. Root services are applications that use the AWS X-Ray SDK.
Downstream services can be other applications, AWS resources, HTTP web
APIs, or SQL databases.


=head2 GetTraceGraph(TraceIds => ArrayRef[Str|Undef], [NextToken => Str])

Each argument is described in detail in: L<Paws::XRay::GetTraceGraph>

Returns: a L<Paws::XRay::GetTraceGraphResult> instance

  Retrieves a service graph for one or more specific trace IDs.


=head2 GetTraceSummaries(EndTime => Str, StartTime => Str, [FilterExpression => Str, NextToken => Str, Sampling => Bool])

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


=head2 PutTelemetryRecords(TelemetryRecords => ArrayRef[L<Paws::XRay::TelemetryRecord>], [EC2InstanceId => Str, Hostname => Str, ResourceARN => Str])

Each argument is described in detail in: L<Paws::XRay::PutTelemetryRecords>

Returns: a L<Paws::XRay::PutTelemetryRecordsResult> instance

  Used by the AWS X-Ray daemon to upload telemetry.


=head2 PutTraceSegments(TraceSegmentDocuments => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::XRay::PutTraceSegments>

Returns: a L<Paws::XRay::PutTraceSegmentsResult> instance

  Uploads segment documents to AWS X-Ray. The X-Ray SDK generates segment
documents and sends them to the X-Ray daemon, which uploads them in
batches. A segment document can be a completed segment, an in-progress
segment, or an array of subsegments.

Segments must include the following fields. For the full segment
document schema, see AWS X-Ray Segment Documents
(http://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html)
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





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

