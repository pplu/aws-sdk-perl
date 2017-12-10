package Paws::XRay::UnprocessedTraceSegment;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::UnprocessedTraceSegment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::UnprocessedTraceSegment object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::UnprocessedTraceSegment object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Information about a segment that failed processing.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The error that caused processing to fail.


=head2 Id => Str

  The segment's ID.


=head2 Message => Str

  The error message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

