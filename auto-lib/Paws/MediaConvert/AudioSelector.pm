package Paws::MediaConvert::AudioSelector;
  use Moose;
  has DefaultSelection => (is => 'ro', isa => 'Str', request_name => 'defaultSelection', traits => ['NameInRequest']);
  has ExternalAudioFileInput => (is => 'ro', isa => 'Str', request_name => 'externalAudioFileInput', traits => ['NameInRequest']);
  has LanguageCode => (is => 'ro', isa => 'Str', request_name => 'languageCode', traits => ['NameInRequest']);
  has Offset => (is => 'ro', isa => 'Int', request_name => 'offset', traits => ['NameInRequest']);
  has Pids => (is => 'ro', isa => 'ArrayRef[Int]', request_name => 'pids', traits => ['NameInRequest']);
  has ProgramSelection => (is => 'ro', isa => 'Int', request_name => 'programSelection', traits => ['NameInRequest']);
  has RemixSettings => (is => 'ro', isa => 'Paws::MediaConvert::RemixSettings', request_name => 'remixSettings', traits => ['NameInRequest']);
  has SelectorType => (is => 'ro', isa => 'Str', request_name => 'selectorType', traits => ['NameInRequest']);
  has Tracks => (is => 'ro', isa => 'ArrayRef[Int]', request_name => 'tracks', traits => ['NameInRequest']);
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

  $service_obj->Method(Att1 => { DefaultSelection => $value, ..., Tracks => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::AudioSelector object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultSelection

=head1 DESCRIPTION

Selector for Audio

=head1 ATTRIBUTES


=head2 DefaultSelection => Str

  


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

  Applies only when input streams contain Dolby E. Enter the program ID
(according to the metadata in the audio) of the Dolby E program to
extract from the specified track. One program extracted per audio
selector. To select multiple programs, create multiple selectors with
the same Track and different Program numbers. "All channels" means to
ignore the program IDs and include all the channels in this selector;
useful if metadata is known to be incorrect.


=head2 RemixSettings => L<Paws::MediaConvert::RemixSettings>

  Advanced audio remixing settings.


=head2 SelectorType => Str

  


=head2 Tracks => ArrayRef[Int]

  Identify the channel to include in this selector by entering the
1-based track index. To combine several tracks, enter a comma-separated
list, e.g. "1,2,3" for tracks 1-3.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

