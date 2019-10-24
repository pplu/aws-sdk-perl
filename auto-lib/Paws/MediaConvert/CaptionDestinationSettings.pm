# Generated from default/object.tt
package Paws::MediaConvert::CaptionDestinationSettings;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw/MediaConvert_SccDestinationSettings MediaConvert_EmbeddedDestinationSettings MediaConvert_DvbSubDestinationSettings MediaConvert_TeletextDestinationSettings MediaConvert_BurninDestinationSettings MediaConvert_TtmlDestinationSettings/;
  has BurninDestinationSettings => (is => 'ro', isa => MediaConvert_BurninDestinationSettings);
  has DestinationType => (is => 'ro', isa => Str);
  has DvbSubDestinationSettings => (is => 'ro', isa => MediaConvert_DvbSubDestinationSettings);
  has EmbeddedDestinationSettings => (is => 'ro', isa => MediaConvert_EmbeddedDestinationSettings);
  has SccDestinationSettings => (is => 'ro', isa => MediaConvert_SccDestinationSettings);
  has TeletextDestinationSettings => (is => 'ro', isa => MediaConvert_TeletextDestinationSettings);
  has TtmlDestinationSettings => (is => 'ro', isa => MediaConvert_TtmlDestinationSettings);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SccDestinationSettings' => {
                                             'class' => 'Paws::MediaConvert::SccDestinationSettings',
                                             'type' => 'MediaConvert_SccDestinationSettings'
                                           },
               'DvbSubDestinationSettings' => {
                                                'class' => 'Paws::MediaConvert::DvbSubDestinationSettings',
                                                'type' => 'MediaConvert_DvbSubDestinationSettings'
                                              },
               'TtmlDestinationSettings' => {
                                              'class' => 'Paws::MediaConvert::TtmlDestinationSettings',
                                              'type' => 'MediaConvert_TtmlDestinationSettings'
                                            },
               'TeletextDestinationSettings' => {
                                                  'class' => 'Paws::MediaConvert::TeletextDestinationSettings',
                                                  'type' => 'MediaConvert_TeletextDestinationSettings'
                                                },
               'EmbeddedDestinationSettings' => {
                                                  'class' => 'Paws::MediaConvert::EmbeddedDestinationSettings',
                                                  'type' => 'MediaConvert_EmbeddedDestinationSettings'
                                                },
               'DestinationType' => {
                                      'type' => 'Str'
                                    },
               'BurninDestinationSettings' => {
                                                'class' => 'Paws::MediaConvert::BurninDestinationSettings',
                                                'type' => 'MediaConvert_BurninDestinationSettings'
                                              }
             },
  'NameInRequest' => {
                       'SccDestinationSettings' => 'sccDestinationSettings',
                       'DvbSubDestinationSettings' => 'dvbSubDestinationSettings',
                       'TtmlDestinationSettings' => 'ttmlDestinationSettings',
                       'TeletextDestinationSettings' => 'teletextDestinationSettings',
                       'EmbeddedDestinationSettings' => 'embeddedDestinationSettings',
                       'DestinationType' => 'destinationType',
                       'BurninDestinationSettings' => 'burninDestinationSettings'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::CaptionDestinationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::CaptionDestinationSettings object:

  $service_obj->Method(Att1 => { BurninDestinationSettings => $value, ..., TtmlDestinationSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::CaptionDestinationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->BurninDestinationSettings

=head1 DESCRIPTION

Specific settings required by destination type. Note that
burnin_destination_settings are not available if the source of the
caption data is Embedded or Teletext.

=head1 ATTRIBUTES


=head2 BurninDestinationSettings => MediaConvert_BurninDestinationSettings

  Burn-In Destination Settings.


=head2 DestinationType => Str

  Specify the format for this set of captions on this output. The default
format is embedded without SCTE-20. Other options are embedded with
SCTE-20, burn-in, DVB-sub, SCC, SRT, teletext, TTML, and web-VTT. If
you are using SCTE-20, choose SCTE-20 plus embedded
(SCTE20_PLUS_EMBEDDED) to create an output that complies with the
SCTE-43 spec. To create a non-compliant output where the embedded
captions come first, choose Embedded plus SCTE-20
(EMBEDDED_PLUS_SCTE20).


=head2 DvbSubDestinationSettings => MediaConvert_DvbSubDestinationSettings

  DVB-Sub Destination Settings


=head2 EmbeddedDestinationSettings => MediaConvert_EmbeddedDestinationSettings

  Settings specific to embedded/ancillary caption outputs, including
608/708 Channel destination number.


=head2 SccDestinationSettings => MediaConvert_SccDestinationSettings

  Settings for SCC caption output.


=head2 TeletextDestinationSettings => MediaConvert_TeletextDestinationSettings

  Settings for Teletext caption output


=head2 TtmlDestinationSettings => MediaConvert_TtmlDestinationSettings

  Settings specific to TTML caption outputs, including Pass style
information (TtmlStylePassthrough).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

