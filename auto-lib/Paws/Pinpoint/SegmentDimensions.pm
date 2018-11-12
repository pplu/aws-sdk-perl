package Paws::Pinpoint::SegmentDimensions;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::Pinpoint::MapOfAttributeDimension');
  has Behavior => (is => 'ro', isa => 'Paws::Pinpoint::SegmentBehaviors');
  has Demographic => (is => 'ro', isa => 'Paws::Pinpoint::SegmentDemographics');
  has Location => (is => 'ro', isa => 'Paws::Pinpoint::SegmentLocation');
  has Metrics => (is => 'ro', isa => 'Paws::Pinpoint::MapOfMetricDimension');
  has UserAttributes => (is => 'ro', isa => 'Paws::Pinpoint::MapOfAttributeDimension');
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

Segment dimensions

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::Pinpoint::MapOfAttributeDimension>

  Custom segment attributes.


=head2 Behavior => L<Paws::Pinpoint::SegmentBehaviors>

  The segment behaviors attributes.


=head2 Demographic => L<Paws::Pinpoint::SegmentDemographics>

  The segment demographics attributes.


=head2 Location => L<Paws::Pinpoint::SegmentLocation>

  The segment location attributes.


=head2 Metrics => L<Paws::Pinpoint::MapOfMetricDimension>

  Custom segment metrics.


=head2 UserAttributes => L<Paws::Pinpoint::MapOfAttributeDimension>

  Custom segment user attributes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

