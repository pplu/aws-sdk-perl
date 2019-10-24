# Generated from default/object.tt
package Paws::MediaConvert::CaptionSourceSettings;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw/MediaConvert_FileSourceSettings MediaConvert_EmbeddedSourceSettings MediaConvert_DvbSubSourceSettings MediaConvert_AncillarySourceSettings MediaConvert_TeletextSourceSettings MediaConvert_TrackSourceSettings/;
  has AncillarySourceSettings => (is => 'ro', isa => MediaConvert_AncillarySourceSettings);
  has DvbSubSourceSettings => (is => 'ro', isa => MediaConvert_DvbSubSourceSettings);
  has EmbeddedSourceSettings => (is => 'ro', isa => MediaConvert_EmbeddedSourceSettings);
  has FileSourceSettings => (is => 'ro', isa => MediaConvert_FileSourceSettings);
  has SourceType => (is => 'ro', isa => Str);
  has TeletextSourceSettings => (is => 'ro', isa => MediaConvert_TeletextSourceSettings);
  has TrackSourceSettings => (is => 'ro', isa => MediaConvert_TrackSourceSettings);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TeletextSourceSettings' => {
                                             'class' => 'Paws::MediaConvert::TeletextSourceSettings',
                                             'type' => 'MediaConvert_TeletextSourceSettings'
                                           },
               'DvbSubSourceSettings' => {
                                           'class' => 'Paws::MediaConvert::DvbSubSourceSettings',
                                           'type' => 'MediaConvert_DvbSubSourceSettings'
                                         },
               'SourceType' => {
                                 'type' => 'Str'
                               },
               'FileSourceSettings' => {
                                         'class' => 'Paws::MediaConvert::FileSourceSettings',
                                         'type' => 'MediaConvert_FileSourceSettings'
                                       },
               'TrackSourceSettings' => {
                                          'class' => 'Paws::MediaConvert::TrackSourceSettings',
                                          'type' => 'MediaConvert_TrackSourceSettings'
                                        },
               'AncillarySourceSettings' => {
                                              'class' => 'Paws::MediaConvert::AncillarySourceSettings',
                                              'type' => 'MediaConvert_AncillarySourceSettings'
                                            },
               'EmbeddedSourceSettings' => {
                                             'class' => 'Paws::MediaConvert::EmbeddedSourceSettings',
                                             'type' => 'MediaConvert_EmbeddedSourceSettings'
                                           }
             },
  'NameInRequest' => {
                       'TeletextSourceSettings' => 'teletextSourceSettings',
                       'DvbSubSourceSettings' => 'dvbSubSourceSettings',
                       'SourceType' => 'sourceType',
                       'FileSourceSettings' => 'fileSourceSettings',
                       'TrackSourceSettings' => 'trackSourceSettings',
                       'AncillarySourceSettings' => 'ancillarySourceSettings',
                       'EmbeddedSourceSettings' => 'embeddedSourceSettings'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::CaptionSourceSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::CaptionSourceSettings object:

  $service_obj->Method(Att1 => { AncillarySourceSettings => $value, ..., TrackSourceSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::CaptionSourceSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AncillarySourceSettings

=head1 DESCRIPTION

Source settings (SourceSettings) contains the group of settings for
captions in the input.

=head1 ATTRIBUTES


=head2 AncillarySourceSettings => MediaConvert_AncillarySourceSettings

  Settings for ancillary captions source.


=head2 DvbSubSourceSettings => MediaConvert_DvbSubSourceSettings

  DVB Sub Source Settings


=head2 EmbeddedSourceSettings => MediaConvert_EmbeddedSourceSettings

  Settings for embedded captions Source


=head2 FileSourceSettings => MediaConvert_FileSourceSettings

  Settings for File-based Captions in Source


=head2 SourceType => Str

  Use Source (SourceType) to identify the format of your input captions.
The service cannot auto-detect caption format.


=head2 TeletextSourceSettings => MediaConvert_TeletextSourceSettings

  Settings specific to Teletext caption sources, including Page number.


=head2 TrackSourceSettings => MediaConvert_TrackSourceSettings

  Settings specific to caption sources that are specfied by track number.
Sources include IMSC in IMF.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

