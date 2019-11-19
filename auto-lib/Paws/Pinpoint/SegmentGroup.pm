# Generated from default/object.tt
package Paws::Pinpoint::SegmentGroup;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_SegmentReference Pinpoint_SegmentDimensions/;
  has Dimensions => (is => 'ro', isa => ArrayRef[Pinpoint_SegmentDimensions]);
  has SourceSegments => (is => 'ro', isa => ArrayRef[Pinpoint_SegmentReference]);
  has SourceType => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SourceType' => {
                                 'type' => 'Str'
                               },
               'Dimensions' => {
                                 'type' => 'ArrayRef[Pinpoint_SegmentDimensions]',
                                 'class' => 'Paws::Pinpoint::SegmentDimensions'
                               },
               'SourceSegments' => {
                                     'class' => 'Paws::Pinpoint::SegmentReference',
                                     'type' => 'ArrayRef[Pinpoint_SegmentReference]'
                                   },
               'Type' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


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

Specifies the base segments and dimensions for a segment, and the
relationships between these base segments and dimensions.

=head1 ATTRIBUTES


=head2 Dimensions => ArrayRef[Pinpoint_SegmentDimensions]

  An array that defines the dimensions for the segment.


=head2 SourceSegments => ArrayRef[Pinpoint_SegmentReference]

  The base segment to build the segment on. A base segment, also referred
to as a I<source segment>, defines the initial population of endpoints
for a segment. When you add dimensions to a segment, Amazon Pinpoint
filters the base segment by using the dimensions that you specify.

You can specify more than one dimensional segment or only one imported
segment. If you specify an imported segment, the Amazon Pinpoint
console displays a segment size estimate that indicates the size of the
imported segment without any filters applied to it.


=head2 SourceType => Str

  Specifies how to handle multiple base segments for the segment. For
example, if you specify three base segments for the segment, whether
the resulting segment is based on all, any, or none of the base
segments.


=head2 Type => Str

  Specifies how to handle multiple dimensions for the segment. For
example, if you specify three dimensions for the segment, whether the
resulting segment includes endpoints that match all, any, or none of
the dimensions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

