package Paws::MediaLive::Scte35DescriptorSettings;
  use Moose;
  has SegmentationDescriptorScte35DescriptorSettings => (is => 'ro', isa => 'Paws::MediaLive::Scte35SegmentationDescriptor', request_name => 'segmentationDescriptorScte35DescriptorSettings', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::Scte35DescriptorSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::Scte35DescriptorSettings object:

  $service_obj->Method(Att1 => { SegmentationDescriptorScte35DescriptorSettings => $value, ..., SegmentationDescriptorScte35DescriptorSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::Scte35DescriptorSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->SegmentationDescriptorScte35DescriptorSettings

=head1 DESCRIPTION

SCTE-35 Descriptor settings.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SegmentationDescriptorScte35DescriptorSettings => L<Paws::MediaLive::Scte35SegmentationDescriptor>

  SCTE-35 Segmentation Descriptor.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

