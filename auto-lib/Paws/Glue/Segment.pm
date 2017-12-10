package Paws::Glue::Segment;
  use Moose;
  has SegmentNumber => (is => 'ro', isa => 'Int', required => 1);
  has TotalSegments => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Segment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Segment object:

  $service_obj->Method(Att1 => { SegmentNumber => $value, ..., TotalSegments => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Segment object:

  $result = $service_obj->Method(...);
  $result->Att1->SegmentNumber

=head1 DESCRIPTION

Defines a non-overlapping region of a table's partitions, allowing
multiple requests to be executed in parallel.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SegmentNumber => Int

  The zero-based index number of the this segment. For example, if the
total number of segments is 4, SegmentNumber values will range from
zero through three.


=head2 B<REQUIRED> TotalSegments => Int

  The total numer of segments.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

