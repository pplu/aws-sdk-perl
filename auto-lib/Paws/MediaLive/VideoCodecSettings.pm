package Paws::MediaLive::VideoCodecSettings;
  use Moose;
  has FrameCaptureSettings => (is => 'ro', isa => 'Paws::MediaLive::FrameCaptureSettings', request_name => 'frameCaptureSettings', traits => ['NameInRequest']);
  has H264Settings => (is => 'ro', isa => 'Paws::MediaLive::H264Settings', request_name => 'h264Settings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::VideoCodecSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::VideoCodecSettings object:

  $service_obj->Method(Att1 => { FrameCaptureSettings => $value, ..., H264Settings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::VideoCodecSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->FrameCaptureSettings

=head1 DESCRIPTION

Placeholder documentation for VideoCodecSettings

=head1 ATTRIBUTES


=head2 FrameCaptureSettings => L<Paws::MediaLive::FrameCaptureSettings>

  


=head2 H264Settings => L<Paws::MediaLive::H264Settings>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

