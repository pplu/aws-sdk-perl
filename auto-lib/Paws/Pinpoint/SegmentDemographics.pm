package Paws::Pinpoint::SegmentDemographics;
  use Moose;
  has AppVersion => (is => 'ro', isa => 'Paws::Pinpoint::SetDimension');
  has Channel => (is => 'ro', isa => 'Paws::Pinpoint::SetDimension');
  has DeviceType => (is => 'ro', isa => 'Paws::Pinpoint::SetDimension');
  has Make => (is => 'ro', isa => 'Paws::Pinpoint::SetDimension');
  has Model => (is => 'ro', isa => 'Paws::Pinpoint::SetDimension');
  has Platform => (is => 'ro', isa => 'Paws::Pinpoint::SetDimension');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SegmentDemographics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SegmentDemographics object:

  $service_obj->Method(Att1 => { AppVersion => $value, ..., Platform => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SegmentDemographics object:

  $result = $service_obj->Method(...);
  $result->Att1->AppVersion

=head1 DESCRIPTION

Segment demographic dimensions

=head1 ATTRIBUTES


=head2 AppVersion => L<Paws::Pinpoint::SetDimension>

  The app version criteria for the segment.


=head2 Channel => L<Paws::Pinpoint::SetDimension>

  The channel criteria for the segment.


=head2 DeviceType => L<Paws::Pinpoint::SetDimension>

  The device type criteria for the segment.


=head2 Make => L<Paws::Pinpoint::SetDimension>

  The device make criteria for the segment.


=head2 Model => L<Paws::Pinpoint::SetDimension>

  The device model criteria for the segment.


=head2 Platform => L<Paws::Pinpoint::SetDimension>

  The device platform criteria for the segment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

