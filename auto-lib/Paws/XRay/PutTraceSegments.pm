
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

A string containing a JSON document defining one or more segments or
subsegments.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutTraceSegments in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

