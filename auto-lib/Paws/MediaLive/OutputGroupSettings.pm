package Paws::MediaLive::OutputGroupSettings;
  use Moose;
  has ArchiveGroupSettings => (is => 'ro', isa => 'Paws::MediaLive::ArchiveGroupSettings', request_name => 'archiveGroupSettings', traits => ['NameInRequest']);
  has FrameCaptureGroupSettings => (is => 'ro', isa => 'Paws::MediaLive::FrameCaptureGroupSettings', request_name => 'frameCaptureGroupSettings', traits => ['NameInRequest']);
  has HlsGroupSettings => (is => 'ro', isa => 'Paws::MediaLive::HlsGroupSettings', request_name => 'hlsGroupSettings', traits => ['NameInRequest']);
  has MsSmoothGroupSettings => (is => 'ro', isa => 'Paws::MediaLive::MsSmoothGroupSettings', request_name => 'msSmoothGroupSettings', traits => ['NameInRequest']);
  has RtmpGroupSettings => (is => 'ro', isa => 'Paws::MediaLive::RtmpGroupSettings', request_name => 'rtmpGroupSettings', traits => ['NameInRequest']);
  has UdpGroupSettings => (is => 'ro', isa => 'Paws::MediaLive::UdpGroupSettings', request_name => 'udpGroupSettings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::OutputGroupSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::OutputGroupSettings object:

  $service_obj->Method(Att1 => { ArchiveGroupSettings => $value, ..., UdpGroupSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::OutputGroupSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->ArchiveGroupSettings

=head1 DESCRIPTION

Placeholder documentation for OutputGroupSettings

=head1 ATTRIBUTES


=head2 ArchiveGroupSettings => L<Paws::MediaLive::ArchiveGroupSettings>

  


=head2 FrameCaptureGroupSettings => L<Paws::MediaLive::FrameCaptureGroupSettings>

  


=head2 HlsGroupSettings => L<Paws::MediaLive::HlsGroupSettings>

  


=head2 MsSmoothGroupSettings => L<Paws::MediaLive::MsSmoothGroupSettings>

  


=head2 RtmpGroupSettings => L<Paws::MediaLive::RtmpGroupSettings>

  


=head2 UdpGroupSettings => L<Paws::MediaLive::UdpGroupSettings>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

