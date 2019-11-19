# Generated from default/object.tt
package Paws::MediaConvert::AudioSelector;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::MediaConvert::Types qw/MediaConvert_RemixSettings/;
  has CustomLanguageCode => (is => 'ro', isa => Str);
  has DefaultSelection => (is => 'ro', isa => Str);
  has ExternalAudioFileInput => (is => 'ro', isa => Str);
  has LanguageCode => (is => 'ro', isa => Str);
  has Offset => (is => 'ro', isa => Int);
  has Pids => (is => 'ro', isa => ArrayRef[Int]);
  has ProgramSelection => (is => 'ro', isa => Int);
  has RemixSettings => (is => 'ro', isa => MediaConvert_RemixSettings);
  has SelectorType => (is => 'ro', isa => Str);
  has Tracks => (is => 'ro', isa => ArrayRef[Int]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Offset' => 'offset',
                       'ExternalAudioFileInput' => 'externalAudioFileInput',
                       'DefaultSelection' => 'defaultSelection',
                       'Tracks' => 'tracks',
                       'CustomLanguageCode' => 'customLanguageCode',
                       'SelectorType' => 'selectorType',
                       'Pids' => 'pids',
                       'ProgramSelection' => 'programSelection',
                       'RemixSettings' => 'remixSettings',
                       'LanguageCode' => 'languageCode'
                     },
  'types' => {
               'Offset' => {
                             'type' => 'Int'
                           },
               'ExternalAudioFileInput' => {
                                             'type' => 'Str'
                                           },
               'Tracks' => {
                             'type' => 'ArrayRef[Int]'
                           },
               'DefaultSelection' => {
                                       'type' => 'Str'
                                     },
               'CustomLanguageCode' => {
                                         'type' => 'Str'
                                       },
               'SelectorType' => {
                                   'type' => 'Str'
                                 },
               'RemixSettings' => {
                                    'type' => 'MediaConvert_RemixSettings',
                                    'class' => 'Paws::MediaConvert::RemixSettings'
                                  },
               'Pids' => {
                           'type' => 'ArrayRef[Int]'
                         },
               'ProgramSelection' => {
                                       'type' => 'Int'
                                     },
               'LanguageCode' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::AudioSelector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::AudioSelector object:

  $service_obj->Method(Att1 => { CustomLanguageCode => $value, ..., Tracks => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::AudioSelector object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomLanguageCode

=head1 DESCRIPTION

Selector for Audio

=head1 ATTRIBUTES


=head2 CustomLanguageCode => Str

  Selects a specific language code from within an audio source, using the
ISO 639-2 or ISO 639-3 three-letter language code


=head2 DefaultSelection => Str

  Enable this setting on one audio selector to set it as the default for
the job. The service uses this default for outputs where it can't find
the specified input audio. If you don't set a default, those outputs
have no audio.


=head2 ExternalAudioFileInput => Str

  Specifies audio data from an external file source.


=head2 LanguageCode => Str

  Selects a specific language code from within an audio source.


=head2 Offset => Int

  Specifies a time delta in milliseconds to offset the audio from the
input video.


=head2 Pids => ArrayRef[Int]

  Selects a specific PID from within an audio source (e.g. 257 selects
PID 0x101).


=head2 ProgramSelection => Int

  Use this setting for input streams that contain Dolby E, to have the
service extract specific program data from the track. To select
multiple programs, create multiple selectors with the same Track and
different Program numbers. In the console, this setting is visible when
you set Selector type to Track. Choose the program number from the
dropdown list. If you are sending a JSON file, provide the program ID,
which is part of the audio metadata. If your input file has incorrect
metadata, you can choose All channels instead of a program number to
have the service ignore the program IDs and include all the programs in
the track.


=head2 RemixSettings => MediaConvert_RemixSettings

  Use these settings to reorder the audio channels of one input to match
those of another input. This allows you to combine the two files into a
single output, one after the other.


=head2 SelectorType => Str

  Specifies the type of the audio selector.


=head2 Tracks => ArrayRef[Int]

  Identify a track from the input audio to include in this selector by
entering the track index number. To include several tracks in a single
audio selector, specify multiple tracks as follows. Using the console,
enter a comma-separated list. For examle, type "1,2,3" to include
tracks 1 through 3. Specifying directly in your JSON job file, provide
the track numbers in an array. For example, "tracks": [1,2,3].



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

