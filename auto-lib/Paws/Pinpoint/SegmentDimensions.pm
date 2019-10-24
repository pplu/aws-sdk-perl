# Generated from default/object.tt
package Paws::Pinpoint::SegmentDimensions;
  use Moo;
  use Types::Standard qw//;
  use Paws::Pinpoint::Types qw/Pinpoint_SegmentDemographics Pinpoint_SegmentBehaviors Pinpoint_MapOfAttributeDimension Pinpoint_MapOfMetricDimension Pinpoint_SegmentLocation/;
  has Attributes => (is => 'ro', isa => Pinpoint_MapOfAttributeDimension);
  has Behavior => (is => 'ro', isa => Pinpoint_SegmentBehaviors);
  has Demographic => (is => 'ro', isa => Pinpoint_SegmentDemographics);
  has Location => (is => 'ro', isa => Pinpoint_SegmentLocation);
  has Metrics => (is => 'ro', isa => Pinpoint_MapOfMetricDimension);
  has UserAttributes => (is => 'ro', isa => Pinpoint_MapOfAttributeDimension);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attributes' => {
                                 'class' => 'Paws::Pinpoint::MapOfAttributeDimension',
                                 'type' => 'Pinpoint_MapOfAttributeDimension'
                               },
               'UserAttributes' => {
                                     'class' => 'Paws::Pinpoint::MapOfAttributeDimension',
                                     'type' => 'Pinpoint_MapOfAttributeDimension'
                                   },
               'Behavior' => {
                               'class' => 'Paws::Pinpoint::SegmentBehaviors',
                               'type' => 'Pinpoint_SegmentBehaviors'
                             },
               'Location' => {
                               'class' => 'Paws::Pinpoint::SegmentLocation',
                               'type' => 'Pinpoint_SegmentLocation'
                             },
               'Metrics' => {
                              'class' => 'Paws::Pinpoint::MapOfMetricDimension',
                              'type' => 'Pinpoint_MapOfMetricDimension'
                            },
               'Demographic' => {
                                  'class' => 'Paws::Pinpoint::SegmentDemographics',
                                  'type' => 'Pinpoint_SegmentDemographics'
                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SegmentDimensions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SegmentDimensions object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., UserAttributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SegmentDimensions object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

Specifies the dimension settings for a segment.

=head1 ATTRIBUTES


=head2 Attributes => Pinpoint_MapOfAttributeDimension

  One or more custom attributes to use as criteria for the segment.


=head2 Behavior => Pinpoint_SegmentBehaviors

  The behavior-based criteria, such as how recently users have used your
app, for the segment.


=head2 Demographic => Pinpoint_SegmentDemographics

  The demographic-based criteria, such as device platform, for the
segment.


=head2 Location => Pinpoint_SegmentLocation

  The location-based criteria, such as region or GPS coordinates, for the
segment.


=head2 Metrics => Pinpoint_MapOfMetricDimension

  One or more custom metrics to use as criteria for the segment.


=head2 UserAttributes => Pinpoint_MapOfAttributeDimension

  One or more custom user attributes to use as criteria for the segment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

