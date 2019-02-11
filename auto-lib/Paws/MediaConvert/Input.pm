package Paws::MediaConvert::Input;
  use Moose;
  has AudioSelectorGroups => (is => 'ro', isa => 'Paws::MediaConvert::__mapOfAudioSelectorGroup', request_name => 'audioSelectorGroups', traits => ['NameInRequest']);
  has AudioSelectors => (is => 'ro', isa => 'Paws::MediaConvert::__mapOfAudioSelector', request_name => 'audioSelectors', traits => ['NameInRequest']);
  has CaptionSelectors => (is => 'ro', isa => 'Paws::MediaConvert::__mapOfCaptionSelector', request_name => 'captionSelectors', traits => ['NameInRequest']);
  has DeblockFilter => (is => 'ro', isa => 'Str', request_name => 'deblockFilter', traits => ['NameInRequest']);
  has DecryptionSettings => (is => 'ro', isa => 'Paws::MediaConvert::InputDecryptionSettings', request_name => 'decryptionSettings', traits => ['NameInRequest']);
  has DenoiseFilter => (is => 'ro', isa => 'Str', request_name => 'denoiseFilter', traits => ['NameInRequest']);
  has FileInput => (is => 'ro', isa => 'Str', request_name => 'fileInput', traits => ['NameInRequest']);
  has FilterEnable => (is => 'ro', isa => 'Str', request_name => 'filterEnable', traits => ['NameInRequest']);
  has FilterStrength => (is => 'ro', isa => 'Int', request_name => 'filterStrength', traits => ['NameInRequest']);
  has ImageInserter => (is => 'ro', isa => 'Paws::MediaConvert::ImageInserter', request_name => 'imageInserter', traits => ['NameInRequest']);
  has InputClippings => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::InputClipping]', request_name => 'inputClippings', traits => ['NameInRequest']);
  has ProgramNumber => (is => 'ro', isa => 'Int', request_name => 'programNumber', traits => ['NameInRequest']);
  has PsiControl => (is => 'ro', isa => 'Str', request_name => 'psiControl', traits => ['NameInRequest']);
  has SupplementalImps => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'supplementalImps', traits => ['NameInRequest']);
  has TimecodeSource => (is => 'ro', isa => 'Str', request_name => 'timecodeSource', traits => ['NameInRequest']);
  has VideoSelector => (is => 'ro', isa => 'Paws::MediaConvert::VideoSelector', request_name => 'videoSelector', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Input

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Input object:

  $service_obj->Method(Att1 => { AudioSelectorGroups => $value, ..., VideoSelector => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Input object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioSelectorGroups

=head1 DESCRIPTION

Specifies media input

=head1 ATTRIBUTES


=head2 AudioSelectorGroups => L<Paws::MediaConvert::__mapOfAudioSelectorGroup>

  Specifies set of audio selectors within an input to combine. An input
may have multiple audio selector groups. See "Audio Selector
Group":#inputs-audio_selector_group for more information.


=head2 AudioSelectors => L<Paws::MediaConvert::__mapOfAudioSelector>

  Use Audio selectors (AudioSelectors) to specify a track or set of
tracks from the input that you will use in your outputs. You can use
mutiple Audio selectors per input.


=head2 CaptionSelectors => L<Paws::MediaConvert::__mapOfCaptionSelector>

  Use Captions selectors (CaptionSelectors) to specify the captions data
from the input that you will use in your outputs. You can use mutiple
captions selectors per input.


=head2 DeblockFilter => Str

  


=head2 DecryptionSettings => L<Paws::MediaConvert::InputDecryptionSettings>

  Settings for decrypting any input files that are encrypted.


=head2 DenoiseFilter => Str

  


=head2 FileInput => Str

  Specify the source file for your transcoding job. You can use multiple
inputs in a single job. The service concatenates these inputs, in the
order that you specify them in the job, to create the outputs. If your
input format is IMF, specify your input by providing the path to your
CPL. For example, "s3://bucket/vf/cpl.xml". If the CPL is in an
incomplete IMP, make sure to use *Supplemental IMPs* (SupplementalImps)
to specify any supplemental IMPs that contain assets referenced by the
CPL.


=head2 FilterEnable => Str

  


=head2 FilterStrength => Int

  Use Filter strength (FilterStrength) to adjust the magnitude the input
filter settings (Deblock and Denoise). The range is -5 to 5. Default is
0.


=head2 ImageInserter => L<Paws::MediaConvert::ImageInserter>

  Enable the image inserter feature to include a graphic overlay on your
video. Enable or disable this feature for each input individually. This
setting is disabled by default.


=head2 InputClippings => ArrayRef[L<Paws::MediaConvert::InputClipping>]

  (InputClippings) contains sets of start and end times that together
specify a portion of the input to be used in the outputs. If you
provide only a start time, the clip will be the entire input from that
point to the end. If you provide only an end time, it will be the
entire input up to that point. When you specify more than one input
clip, the transcoding service creates the job outputs by stringing the
clips together in the order you specify them.


=head2 ProgramNumber => Int

  Use Program (programNumber) to select a specific program from within a
multi-program transport stream. Note that Quad 4K is not currently
supported. Default is the first program within the transport stream. If
the program you specify doesn't exist, the transcoding service will use
this default.


=head2 PsiControl => Str

  


=head2 SupplementalImps => ArrayRef[Str|Undef]

  Provide a list of any necessary supplemental IMPs. You need
supplemental IMPs if the CPL that you're using for your input is in an
incomplete IMP. Specify either the supplemental IMP directories with a
trailing slash or the ASSETMAP.xml files. For example
["s3://bucket/ov/", "s3://bucket/vf2/ASSETMAP.xml"]. You don't need to
specify the IMP that contains your input CPL, because the service
automatically detects it.


=head2 TimecodeSource => Str

  


=head2 VideoSelector => L<Paws::MediaConvert::VideoSelector>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

