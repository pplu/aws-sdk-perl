
package Paws::XRay::PutTraceSegments;
  use Moose;
  has TraceSegmentDocuments => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutTraceSegments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/TraceSegments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::PutTraceSegmentsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::PutTraceSegments - Arguments for method PutTraceSegments on Paws::XRay

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutTraceSegments on the 
AWS X-Ray service. Use the attributes of this class
as arguments to method PutTraceSegments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutTraceSegments.

As an example:

  $service_obj->PutTraceSegments(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> TraceSegmentDocuments => ArrayRef[Str|Undef]

A JSON document defining one or more segments or subsegments. Segments
must include the following fields.

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





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutTraceSegments in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

