package Paws::XRay::Segment;
  use Moose;
  has Document => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::Segment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::Segment object:

  $service_obj->Method(Att1 => { Document => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::Segment object:

  $result = $service_obj->Method(...);
  $result->Att1->Document

=head1 DESCRIPTION

A segment from a trace that has been ingested by the X-Ray service. The
segment can be compiled from documents uploaded with PutTraceSegments,
or an C<inferred> segment for a downstream service, generated from a
subsegment sent by the service that called it.

For the full segment document schema, see AWS X-Ray Segment Documents
(https://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html)
in the I<AWS X-Ray Developer Guide>.

=head1 ATTRIBUTES


=head2 Document => Str

  The segment document.


=head2 Id => Str

  The segment's ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

