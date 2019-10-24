# Generated from default/object.tt
package Paws::MediaLive::OutputSettings;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaLive::Types qw/MediaLive_HlsOutputSettings MediaLive_MediaPackageOutputSettings MediaLive_ArchiveOutputSettings MediaLive_UdpOutputSettings MediaLive_RtmpOutputSettings MediaLive_MsSmoothOutputSettings MediaLive_FrameCaptureOutputSettings/;
  has ArchiveOutputSettings => (is => 'ro', isa => MediaLive_ArchiveOutputSettings);
  has FrameCaptureOutputSettings => (is => 'ro', isa => MediaLive_FrameCaptureOutputSettings);
  has HlsOutputSettings => (is => 'ro', isa => MediaLive_HlsOutputSettings);
  has MediaPackageOutputSettings => (is => 'ro', isa => MediaLive_MediaPackageOutputSettings);
  has MsSmoothOutputSettings => (is => 'ro', isa => MediaLive_MsSmoothOutputSettings);
  has RtmpOutputSettings => (is => 'ro', isa => MediaLive_RtmpOutputSettings);
  has UdpOutputSettings => (is => 'ro', isa => MediaLive_UdpOutputSettings);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RtmpOutputSettings' => {
                                         'class' => 'Paws::MediaLive::RtmpOutputSettings',
                                         'type' => 'MediaLive_RtmpOutputSettings'
                                       },
               'ArchiveOutputSettings' => {
                                            'class' => 'Paws::MediaLive::ArchiveOutputSettings',
                                            'type' => 'MediaLive_ArchiveOutputSettings'
                                          },
               'MsSmoothOutputSettings' => {
                                             'class' => 'Paws::MediaLive::MsSmoothOutputSettings',
                                             'type' => 'MediaLive_MsSmoothOutputSettings'
                                           },
               'MediaPackageOutputSettings' => {
                                                 'class' => 'Paws::MediaLive::MediaPackageOutputSettings',
                                                 'type' => 'MediaLive_MediaPackageOutputSettings'
                                               },
               'HlsOutputSettings' => {
                                        'class' => 'Paws::MediaLive::HlsOutputSettings',
                                        'type' => 'MediaLive_HlsOutputSettings'
                                      },
               'FrameCaptureOutputSettings' => {
                                                 'class' => 'Paws::MediaLive::FrameCaptureOutputSettings',
                                                 'type' => 'MediaLive_FrameCaptureOutputSettings'
                                               },
               'UdpOutputSettings' => {
                                        'class' => 'Paws::MediaLive::UdpOutputSettings',
                                        'type' => 'MediaLive_UdpOutputSettings'
                                      }
             },
  'NameInRequest' => {
                       'RtmpOutputSettings' => 'rtmpOutputSettings',
                       'ArchiveOutputSettings' => 'archiveOutputSettings',
                       'MsSmoothOutputSettings' => 'msSmoothOutputSettings',
                       'MediaPackageOutputSettings' => 'mediaPackageOutputSettings',
                       'HlsOutputSettings' => 'hlsOutputSettings',
                       'FrameCaptureOutputSettings' => 'frameCaptureOutputSettings',
                       'UdpOutputSettings' => 'udpOutputSettings'
                     }
}
;
    return $Params_map;
  }


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

Output Settings

=head1 ATTRIBUTES


=head2 ArchiveOutputSettings => MediaLive_ArchiveOutputSettings

  


=head2 FrameCaptureOutputSettings => MediaLive_FrameCaptureOutputSettings

  


=head2 HlsOutputSettings => MediaLive_HlsOutputSettings

  


=head2 MediaPackageOutputSettings => MediaLive_MediaPackageOutputSettings

  


=head2 MsSmoothOutputSettings => MediaLive_MsSmoothOutputSettings

  


=head2 RtmpOutputSettings => MediaLive_RtmpOutputSettings

  


=head2 UdpOutputSettings => MediaLive_UdpOutputSettings

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

