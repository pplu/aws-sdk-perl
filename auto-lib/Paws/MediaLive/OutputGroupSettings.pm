# Generated from default/object.tt
package Paws::MediaLive::OutputGroupSettings;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaLive::Types qw/MediaLive_MediaPackageGroupSettings MediaLive_FrameCaptureGroupSettings MediaLive_UdpGroupSettings MediaLive_ArchiveGroupSettings MediaLive_RtmpGroupSettings MediaLive_MsSmoothGroupSettings MediaLive_HlsGroupSettings/;
  has ArchiveGroupSettings => (is => 'ro', isa => MediaLive_ArchiveGroupSettings);
  has FrameCaptureGroupSettings => (is => 'ro', isa => MediaLive_FrameCaptureGroupSettings);
  has HlsGroupSettings => (is => 'ro', isa => MediaLive_HlsGroupSettings);
  has MediaPackageGroupSettings => (is => 'ro', isa => MediaLive_MediaPackageGroupSettings);
  has MsSmoothGroupSettings => (is => 'ro', isa => MediaLive_MsSmoothGroupSettings);
  has RtmpGroupSettings => (is => 'ro', isa => MediaLive_RtmpGroupSettings);
  has UdpGroupSettings => (is => 'ro', isa => MediaLive_UdpGroupSettings);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MsSmoothGroupSettings' => {
                                            'class' => 'Paws::MediaLive::MsSmoothGroupSettings',
                                            'type' => 'MediaLive_MsSmoothGroupSettings'
                                          },
               'ArchiveGroupSettings' => {
                                           'class' => 'Paws::MediaLive::ArchiveGroupSettings',
                                           'type' => 'MediaLive_ArchiveGroupSettings'
                                         },
               'RtmpGroupSettings' => {
                                        'class' => 'Paws::MediaLive::RtmpGroupSettings',
                                        'type' => 'MediaLive_RtmpGroupSettings'
                                      },
               'FrameCaptureGroupSettings' => {
                                                'class' => 'Paws::MediaLive::FrameCaptureGroupSettings',
                                                'type' => 'MediaLive_FrameCaptureGroupSettings'
                                              },
               'UdpGroupSettings' => {
                                       'class' => 'Paws::MediaLive::UdpGroupSettings',
                                       'type' => 'MediaLive_UdpGroupSettings'
                                     },
               'MediaPackageGroupSettings' => {
                                                'class' => 'Paws::MediaLive::MediaPackageGroupSettings',
                                                'type' => 'MediaLive_MediaPackageGroupSettings'
                                              },
               'HlsGroupSettings' => {
                                       'class' => 'Paws::MediaLive::HlsGroupSettings',
                                       'type' => 'MediaLive_HlsGroupSettings'
                                     }
             },
  'NameInRequest' => {
                       'MsSmoothGroupSettings' => 'msSmoothGroupSettings',
                       'ArchiveGroupSettings' => 'archiveGroupSettings',
                       'RtmpGroupSettings' => 'rtmpGroupSettings',
                       'FrameCaptureGroupSettings' => 'frameCaptureGroupSettings',
                       'UdpGroupSettings' => 'udpGroupSettings',
                       'MediaPackageGroupSettings' => 'mediaPackageGroupSettings',
                       'HlsGroupSettings' => 'hlsGroupSettings'
                     }
}
;
    return $Params_map;
  }


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

Output Group Settings

=head1 ATTRIBUTES


=head2 ArchiveGroupSettings => MediaLive_ArchiveGroupSettings

  


=head2 FrameCaptureGroupSettings => MediaLive_FrameCaptureGroupSettings

  


=head2 HlsGroupSettings => MediaLive_HlsGroupSettings

  


=head2 MediaPackageGroupSettings => MediaLive_MediaPackageGroupSettings

  


=head2 MsSmoothGroupSettings => MediaLive_MsSmoothGroupSettings

  


=head2 RtmpGroupSettings => MediaLive_RtmpGroupSettings

  


=head2 UdpGroupSettings => MediaLive_UdpGroupSettings

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

