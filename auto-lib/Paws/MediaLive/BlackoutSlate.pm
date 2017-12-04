package Paws::MediaLive::BlackoutSlate;
  use Moose;
  has BlackoutSlateImage => (is => 'ro', isa => 'Paws::MediaLive::InputLocation', request_name => 'blackoutSlateImage', traits => ['NameInRequest']);
  has NetworkEndBlackout => (is => 'ro', isa => 'Str', request_name => 'networkEndBlackout', traits => ['NameInRequest']);
  has NetworkEndBlackoutImage => (is => 'ro', isa => 'Paws::MediaLive::InputLocation', request_name => 'networkEndBlackoutImage', traits => ['NameInRequest']);
  has NetworkId => (is => 'ro', isa => 'Str', request_name => 'networkId', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::BlackoutSlate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::BlackoutSlate object:

  $service_obj->Method(Att1 => { BlackoutSlateImage => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::BlackoutSlate object:

  $result = $service_obj->Method(...);
  $result->Att1->BlackoutSlateImage

=head1 DESCRIPTION

Placeholder documentation for BlackoutSlate

=head1 ATTRIBUTES


=head2 BlackoutSlateImage => L<Paws::MediaLive::InputLocation>

  Blackout slate image to be used. Leave empty for solid black. Only bmp
and png images are supported.


=head2 NetworkEndBlackout => Str

  Setting to enabled causes the encoder to blackout the video, audio, and
captions, and raise the "Network Blackout Image" slate when an
SCTE104/35 Network End Segmentation Descriptor is encountered. The
blackout will be lifted when the Network Start Segmentation Descriptor
is encountered. The Network End and Network Start descriptors must
contain a network ID that matches the value entered in "Network ID".


=head2 NetworkEndBlackoutImage => L<Paws::MediaLive::InputLocation>

  Path to local file to use as Network End Blackout image. Image will be
scaled to fill the entire output raster.


=head2 NetworkId => Str

  Provides Network ID that matches EIDR ID format (e.g.,
"10.XXXX/XXXX-XXXX-XXXX-XXXX-XXXX-C").


=head2 State => Str

  When set to enabled, causes video, audio and captions to be blanked
when indicated by program metadata.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

