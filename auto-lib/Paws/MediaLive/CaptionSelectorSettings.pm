# Generated from default/object.tt
package Paws::MediaLive::CaptionSelectorSettings;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaLive::Types qw/MediaLive_TeletextSourceSettings MediaLive_AribSourceSettings MediaLive_EmbeddedSourceSettings MediaLive_DvbSubSourceSettings MediaLive_Scte27SourceSettings MediaLive_Scte20SourceSettings/;
  has AribSourceSettings => (is => 'ro', isa => MediaLive_AribSourceSettings);
  has DvbSubSourceSettings => (is => 'ro', isa => MediaLive_DvbSubSourceSettings);
  has EmbeddedSourceSettings => (is => 'ro', isa => MediaLive_EmbeddedSourceSettings);
  has Scte20SourceSettings => (is => 'ro', isa => MediaLive_Scte20SourceSettings);
  has Scte27SourceSettings => (is => 'ro', isa => MediaLive_Scte27SourceSettings);
  has TeletextSourceSettings => (is => 'ro', isa => MediaLive_TeletextSourceSettings);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TeletextSourceSettings' => {
                                             'class' => 'Paws::MediaLive::TeletextSourceSettings',
                                             'type' => 'MediaLive_TeletextSourceSettings'
                                           },
               'Scte27SourceSettings' => {
                                           'class' => 'Paws::MediaLive::Scte27SourceSettings',
                                           'type' => 'MediaLive_Scte27SourceSettings'
                                         },
               'DvbSubSourceSettings' => {
                                           'class' => 'Paws::MediaLive::DvbSubSourceSettings',
                                           'type' => 'MediaLive_DvbSubSourceSettings'
                                         },
               'AribSourceSettings' => {
                                         'class' => 'Paws::MediaLive::AribSourceSettings',
                                         'type' => 'MediaLive_AribSourceSettings'
                                       },
               'Scte20SourceSettings' => {
                                           'class' => 'Paws::MediaLive::Scte20SourceSettings',
                                           'type' => 'MediaLive_Scte20SourceSettings'
                                         },
               'EmbeddedSourceSettings' => {
                                             'class' => 'Paws::MediaLive::EmbeddedSourceSettings',
                                             'type' => 'MediaLive_EmbeddedSourceSettings'
                                           }
             },
  'NameInRequest' => {
                       'TeletextSourceSettings' => 'teletextSourceSettings',
                       'Scte27SourceSettings' => 'scte27SourceSettings',
                       'DvbSubSourceSettings' => 'dvbSubSourceSettings',
                       'AribSourceSettings' => 'aribSourceSettings',
                       'Scte20SourceSettings' => 'scte20SourceSettings',
                       'EmbeddedSourceSettings' => 'embeddedSourceSettings'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CaptionSelectorSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::CaptionSelectorSettings object:

  $service_obj->Method(Att1 => { AribSourceSettings => $value, ..., TeletextSourceSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::CaptionSelectorSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AribSourceSettings

=head1 DESCRIPTION

Caption Selector Settings

=head1 ATTRIBUTES


=head2 AribSourceSettings => MediaLive_AribSourceSettings

  


=head2 DvbSubSourceSettings => MediaLive_DvbSubSourceSettings

  


=head2 EmbeddedSourceSettings => MediaLive_EmbeddedSourceSettings

  


=head2 Scte20SourceSettings => MediaLive_Scte20SourceSettings

  


=head2 Scte27SourceSettings => MediaLive_Scte27SourceSettings

  


=head2 TeletextSourceSettings => MediaLive_TeletextSourceSettings

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

