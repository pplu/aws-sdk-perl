package Paws::Pinpoint::SegmentGroup;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Paws::Pinpoint::SegmentDimensions]');
  has SourceSegments => (is => 'ro', isa => 'ArrayRef[Paws::Pinpoint::SegmentReference]');
  has SourceType => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SegmentGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SegmentGroup object:

  $service_obj->Method(Att1 => { Dimensions => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SegmentGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->Dimensions

=head1 DESCRIPTION

Segment group definition.

=head1 ATTRIBUTES


=head2 Dimensions => ArrayRef[L<Paws::Pinpoint::SegmentDimensions>]

  List of dimensions to include or exclude.


=head2 SourceSegments => ArrayRef[L<Paws::Pinpoint::SegmentReference>]

  The base segment that you build your segment on. The source segment
defines the starting "universe" of endpoints. When you add dimensions
to the segment, it filters the source segment based on the dimensions
that you specify. You can specify more than one dimensional segment.
You can only specify one imported segment. NOTE: If you specify an
imported segment for this attribute, the segment size estimate that
appears in the Amazon Pinpoint console shows the size of the imported
segment, without any filters applied to it.


=head2 SourceType => Str

  Specify how to handle multiple source segments. For example, if you
specify three source segments, should the resulting segment be based on
any or all of the segments? Acceptable values: ANY or ALL.


=head2 Type => Str

  Specify how to handle multiple segment dimensions. For example, if you
specify three dimensions, should the resulting segment include
endpoints that are matched by all, any, or none of the dimensions?
Acceptable values: ALL, ANY, or NONE.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

