package Paws::XRay::Trace;
  use Moose;
  has Duration => (is => 'ro', isa => 'Num');
  has Id => (is => 'ro', isa => 'Str');
  has Segments => (is => 'ro', isa => 'ArrayRef[Paws::XRay::Segment]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::Trace

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::Trace object:

  $service_obj->Method(Att1 => { Duration => $value, ..., Segments => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::Trace object:

  $result = $service_obj->Method(...);
  $result->Att1->Duration

=head1 DESCRIPTION

A collection of segment documents with matching trace IDs.

=head1 ATTRIBUTES


=head2 Duration => Num

  The length of time in seconds between the start time of the root
segment and the end time of the last segment that completed.


=head2 Id => Str

  The unique identifier for the request that generated the trace's
segments and subsegments.


=head2 Segments => ArrayRef[L<Paws::XRay::Segment>]

  Segment documents for the segments and subsegments that comprise the
trace.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

