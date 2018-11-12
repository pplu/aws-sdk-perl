package Paws::Pinpoint::SegmentReference;
  use Moose;
  has Id => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SegmentReference

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SegmentReference object:

  $service_obj->Method(Att1 => { Id => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SegmentReference object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Segment reference.

=head1 ATTRIBUTES


=head2 Id => Str

  A unique identifier for the segment.


=head2 Version => Int

  If specified contains a specific version of the segment included.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

