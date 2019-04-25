package Paws::MediaLive::OutputSettings;
  use Moose;
  has ArchiveOutputSettings => (is => 'ro', isa => 'Paws::MediaLive::ArchiveOutputSettings', request_name => 'archiveOutputSettings', traits => ['NameInRequest']);
  has FrameCaptureOutputSettings => (is => 'ro', isa => 'Paws::MediaLive::FrameCaptureOutputSettings', request_name => 'frameCaptureOutputSettings', traits => ['NameInRequest']);
  has HlsOutputSettings => (is => 'ro', isa => 'Paws::MediaLive::HlsOutputSettings', request_name => 'hlsOutputSettings', traits => ['NameInRequest']);
  has MsSmoothOutputSettings => (is => 'ro', isa => 'Paws::MediaLive::MsSmoothOutputSettings', request_name => 'msSmoothOutputSettings', traits => ['NameInRequest']);
  has RtmpOutputSettings => (is => 'ro', isa => 'Paws::MediaLive::RtmpOutputSettings', request_name => 'rtmpOutputSettings', traits => ['NameInRequest']);
  has UdpOutputSettings => (is => 'ro', isa => 'Paws::MediaLive::UdpOutputSettings', request_name => 'udpOutputSettings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::OutputSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::OutputSettings object:

  $service_obj->Method(Att1 => { ArchiveOutputSettings => $value, ..., UdpOutputSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::OutputSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->ArchiveOutputSettings

=head1 DESCRIPTION

Placeholder documentation for OutputSettings

=head1 ATTRIBUTES


=head2 ArchiveOutputSettings => L<Paws::MediaLive::ArchiveOutputSettings>

  


=head2 FrameCaptureOutputSettings => L<Paws::MediaLive::FrameCaptureOutputSettings>

  


=head2 HlsOutputSettings => L<Paws::MediaLive::HlsOutputSettings>

  


=head2 MsSmoothOutputSettings => L<Paws::MediaLive::MsSmoothOutputSettings>

  


=head2 RtmpOutputSettings => L<Paws::MediaLive::RtmpOutputSettings>

  


=head2 UdpOutputSettings => L<Paws::MediaLive::UdpOutputSettings>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

