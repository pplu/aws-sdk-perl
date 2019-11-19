# Generated from default/object.tt
package Paws::MediaLive::CaptionDestinationSettings;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaLive::Types qw/MediaLive_EmbeddedPlusScte20DestinationSettings MediaLive_Scte27DestinationSettings MediaLive_TtmlDestinationSettings MediaLive_SmpteTtDestinationSettings MediaLive_DvbSubDestinationSettings MediaLive_TeletextDestinationSettings MediaLive_WebvttDestinationSettings MediaLive_RtmpCaptionInfoDestinationSettings MediaLive_Scte20PlusEmbeddedDestinationSettings MediaLive_AribDestinationSettings MediaLive_EmbeddedDestinationSettings MediaLive_BurnInDestinationSettings/;
  has AribDestinationSettings => (is => 'ro', isa => MediaLive_AribDestinationSettings);
  has BurnInDestinationSettings => (is => 'ro', isa => MediaLive_BurnInDestinationSettings);
  has DvbSubDestinationSettings => (is => 'ro', isa => MediaLive_DvbSubDestinationSettings);
  has EmbeddedDestinationSettings => (is => 'ro', isa => MediaLive_EmbeddedDestinationSettings);
  has EmbeddedPlusScte20DestinationSettings => (is => 'ro', isa => MediaLive_EmbeddedPlusScte20DestinationSettings);
  has RtmpCaptionInfoDestinationSettings => (is => 'ro', isa => MediaLive_RtmpCaptionInfoDestinationSettings);
  has Scte20PlusEmbeddedDestinationSettings => (is => 'ro', isa => MediaLive_Scte20PlusEmbeddedDestinationSettings);
  has Scte27DestinationSettings => (is => 'ro', isa => MediaLive_Scte27DestinationSettings);
  has SmpteTtDestinationSettings => (is => 'ro', isa => MediaLive_SmpteTtDestinationSettings);
  has TeletextDestinationSettings => (is => 'ro', isa => MediaLive_TeletextDestinationSettings);
  has TtmlDestinationSettings => (is => 'ro', isa => MediaLive_TtmlDestinationSettings);
  has WebvttDestinationSettings => (is => 'ro', isa => MediaLive_WebvttDestinationSettings);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DvbSubDestinationSettings' => {
                                                'class' => 'Paws::MediaLive::DvbSubDestinationSettings',
                                                'type' => 'MediaLive_DvbSubDestinationSettings'
                                              },
               'TtmlDestinationSettings' => {
                                              'type' => 'MediaLive_TtmlDestinationSettings',
                                              'class' => 'Paws::MediaLive::TtmlDestinationSettings'
                                            },
               'BurnInDestinationSettings' => {
                                                'class' => 'Paws::MediaLive::BurnInDestinationSettings',
                                                'type' => 'MediaLive_BurnInDestinationSettings'
                                              },
               'AribDestinationSettings' => {
                                              'type' => 'MediaLive_AribDestinationSettings',
                                              'class' => 'Paws::MediaLive::AribDestinationSettings'
                                            },
               'SmpteTtDestinationSettings' => {
                                                 'class' => 'Paws::MediaLive::SmpteTtDestinationSettings',
                                                 'type' => 'MediaLive_SmpteTtDestinationSettings'
                                               },
               'EmbeddedDestinationSettings' => {
                                                  'class' => 'Paws::MediaLive::EmbeddedDestinationSettings',
                                                  'type' => 'MediaLive_EmbeddedDestinationSettings'
                                                },
               'EmbeddedPlusScte20DestinationSettings' => {
                                                            'class' => 'Paws::MediaLive::EmbeddedPlusScte20DestinationSettings',
                                                            'type' => 'MediaLive_EmbeddedPlusScte20DestinationSettings'
                                                          },
               'RtmpCaptionInfoDestinationSettings' => {
                                                         'type' => 'MediaLive_RtmpCaptionInfoDestinationSettings',
                                                         'class' => 'Paws::MediaLive::RtmpCaptionInfoDestinationSettings'
                                                       },
               'WebvttDestinationSettings' => {
                                                'class' => 'Paws::MediaLive::WebvttDestinationSettings',
                                                'type' => 'MediaLive_WebvttDestinationSettings'
                                              },
               'TeletextDestinationSettings' => {
                                                  'type' => 'MediaLive_TeletextDestinationSettings',
                                                  'class' => 'Paws::MediaLive::TeletextDestinationSettings'
                                                },
               'Scte27DestinationSettings' => {
                                                'type' => 'MediaLive_Scte27DestinationSettings',
                                                'class' => 'Paws::MediaLive::Scte27DestinationSettings'
                                              },
               'Scte20PlusEmbeddedDestinationSettings' => {
                                                            'type' => 'MediaLive_Scte20PlusEmbeddedDestinationSettings',
                                                            'class' => 'Paws::MediaLive::Scte20PlusEmbeddedDestinationSettings'
                                                          }
             },
  'NameInRequest' => {
                       'TeletextDestinationSettings' => 'teletextDestinationSettings',
                       'Scte27DestinationSettings' => 'scte27DestinationSettings',
                       'Scte20PlusEmbeddedDestinationSettings' => 'scte20PlusEmbeddedDestinationSettings',
                       'EmbeddedPlusScte20DestinationSettings' => 'embeddedPlusScte20DestinationSettings',
                       'RtmpCaptionInfoDestinationSettings' => 'rtmpCaptionInfoDestinationSettings',
                       'WebvttDestinationSettings' => 'webvttDestinationSettings',
                       'DvbSubDestinationSettings' => 'dvbSubDestinationSettings',
                       'EmbeddedDestinationSettings' => 'embeddedDestinationSettings',
                       'TtmlDestinationSettings' => 'ttmlDestinationSettings',
                       'BurnInDestinationSettings' => 'burnInDestinationSettings',
                       'SmpteTtDestinationSettings' => 'smpteTtDestinationSettings',
                       'AribDestinationSettings' => 'aribDestinationSettings'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CaptionDestinationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::CaptionDestinationSettings object:

  $service_obj->Method(Att1 => { AribDestinationSettings => $value, ..., WebvttDestinationSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::CaptionDestinationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AribDestinationSettings

=head1 DESCRIPTION

Caption Destination Settings

=head1 ATTRIBUTES


=head2 AribDestinationSettings => MediaLive_AribDestinationSettings

  


=head2 BurnInDestinationSettings => MediaLive_BurnInDestinationSettings

  


=head2 DvbSubDestinationSettings => MediaLive_DvbSubDestinationSettings

  


=head2 EmbeddedDestinationSettings => MediaLive_EmbeddedDestinationSettings

  


=head2 EmbeddedPlusScte20DestinationSettings => MediaLive_EmbeddedPlusScte20DestinationSettings

  


=head2 RtmpCaptionInfoDestinationSettings => MediaLive_RtmpCaptionInfoDestinationSettings

  


=head2 Scte20PlusEmbeddedDestinationSettings => MediaLive_Scte20PlusEmbeddedDestinationSettings

  


=head2 Scte27DestinationSettings => MediaLive_Scte27DestinationSettings

  


=head2 SmpteTtDestinationSettings => MediaLive_SmpteTtDestinationSettings

  


=head2 TeletextDestinationSettings => MediaLive_TeletextDestinationSettings

  


=head2 TtmlDestinationSettings => MediaLive_TtmlDestinationSettings

  


=head2 WebvttDestinationSettings => MediaLive_WebvttDestinationSettings

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

