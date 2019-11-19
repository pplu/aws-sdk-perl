# Generated from default/object.tt
package Paws::MediaConvert::InputTemplate;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::MediaConvert::Types qw/MediaConvert_Rectangle MediaConvert___mapOfCaptionSelector MediaConvert_InputClipping MediaConvert___mapOfAudioSelector MediaConvert_VideoSelector MediaConvert_ImageInserter MediaConvert___mapOfAudioSelectorGroup/;
  has AudioSelectorGroups => (is => 'ro', isa => MediaConvert___mapOfAudioSelectorGroup);
  has AudioSelectors => (is => 'ro', isa => MediaConvert___mapOfAudioSelector);
  has CaptionSelectors => (is => 'ro', isa => MediaConvert___mapOfCaptionSelector);
  has Crop => (is => 'ro', isa => MediaConvert_Rectangle);
  has DeblockFilter => (is => 'ro', isa => Str);
  has DenoiseFilter => (is => 'ro', isa => Str);
  has FilterEnable => (is => 'ro', isa => Str);
  has FilterStrength => (is => 'ro', isa => Int);
  has ImageInserter => (is => 'ro', isa => MediaConvert_ImageInserter);
  has InputClippings => (is => 'ro', isa => ArrayRef[MediaConvert_InputClipping]);
  has Position => (is => 'ro', isa => MediaConvert_Rectangle);
  has ProgramNumber => (is => 'ro', isa => Int);
  has PsiControl => (is => 'ro', isa => Str);
  has TimecodeSource => (is => 'ro', isa => Str);
  has TimecodeStart => (is => 'ro', isa => Str);
  has VideoSelector => (is => 'ro', isa => MediaConvert_VideoSelector);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'InputClippings' => 'inputClippings',
                       'DeblockFilter' => 'deblockFilter',
                       'ProgramNumber' => 'programNumber',
                       'VideoSelector' => 'videoSelector',
                       'FilterStrength' => 'filterStrength',
                       'CaptionSelectors' => 'captionSelectors',
                       'TimecodeSource' => 'timecodeSource',
                       'Position' => 'position',
                       'PsiControl' => 'psiControl',
                       'AudioSelectorGroups' => 'audioSelectorGroups',
                       'FilterEnable' => 'filterEnable',
                       'ImageInserter' => 'imageInserter',
                       'AudioSelectors' => 'audioSelectors',
                       'Crop' => 'crop',
                       'TimecodeStart' => 'timecodeStart',
                       'DenoiseFilter' => 'denoiseFilter'
                     },
  'types' => {
               'AudioSelectorGroups' => {
                                          'class' => 'Paws::MediaConvert::__mapOfAudioSelectorGroup',
                                          'type' => 'MediaConvert___mapOfAudioSelectorGroup'
                                        },
               'FilterEnable' => {
                                   'type' => 'Str'
                                 },
               'ImageInserter' => {
                                    'type' => 'MediaConvert_ImageInserter',
                                    'class' => 'Paws::MediaConvert::ImageInserter'
                                  },
               'AudioSelectors' => {
                                     'class' => 'Paws::MediaConvert::__mapOfAudioSelector',
                                     'type' => 'MediaConvert___mapOfAudioSelector'
                                   },
               'Crop' => {
                           'type' => 'MediaConvert_Rectangle',
                           'class' => 'Paws::MediaConvert::Rectangle'
                         },
               'DenoiseFilter' => {
                                    'type' => 'Str'
                                  },
               'TimecodeStart' => {
                                    'type' => 'Str'
                                  },
               'DeblockFilter' => {
                                    'type' => 'Str'
                                  },
               'InputClippings' => {
                                     'class' => 'Paws::MediaConvert::InputClipping',
                                     'type' => 'ArrayRef[MediaConvert_InputClipping]'
                                   },
               'ProgramNumber' => {
                                    'type' => 'Int'
                                  },
               'VideoSelector' => {
                                    'class' => 'Paws::MediaConvert::VideoSelector',
                                    'type' => 'MediaConvert_VideoSelector'
                                  },
               'FilterStrength' => {
                                     'type' => 'Int'
                                   },
               'CaptionSelectors' => {
                                       'type' => 'MediaConvert___mapOfCaptionSelector',
                                       'class' => 'Paws::MediaConvert::__mapOfCaptionSelector'
                                     },
               'TimecodeSource' => {
                                     'type' => 'Str'
                                   },
               'Position' => {
                               'class' => 'Paws::MediaConvert::Rectangle',
                               'type' => 'MediaConvert_Rectangle'
                             },
               'PsiControl' => {
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

Paws::MediaConvert::InputTemplate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::InputTemplate object:

  $service_obj->Method(Att1 => { AudioSelectorGroups => $value, ..., VideoSelector => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::InputTemplate object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioSelectorGroups

=head1 DESCRIPTION

Specified video input in a template.

=head1 ATTRIBUTES


=head2 AudioSelectorGroups => MediaConvert___mapOfAudioSelectorGroup

  Specifies set of audio selectors within an input to combine. An input
may have multiple audio selector groups. See "Audio Selector
Group":#inputs-audio_selector_group for more information.


=head2 AudioSelectors => MediaConvert___mapOfAudioSelector

  Use Audio selectors (AudioSelectors) to specify a track or set of
tracks from the input that you will use in your outputs. You can use
mutiple Audio selectors per input.


=head2 CaptionSelectors => MediaConvert___mapOfCaptionSelector

  Use Captions selectors (CaptionSelectors) to specify the captions data
from the input that you will use in your outputs. You can use mutiple
captions selectors per input.


=head2 Crop => MediaConvert_Rectangle

  Use Cropping selection (crop) to specify the video area that the
service will include in the output video frame. If you specify a value
here, it will override any value that you specify in the output setting
Cropping selection (crop).


=head2 DeblockFilter => Str

  Enable Deblock (InputDeblockFilter) to produce smoother motion in the
output. Default is disabled. Only manaully controllable for MPEG2 and
uncompressed video inputs.


=head2 DenoiseFilter => Str

  Enable Denoise (InputDenoiseFilter) to filter noise from the input.
Default is disabled. Only applicable to MPEG2, H.264, H.265, and
uncompressed video inputs.


=head2 FilterEnable => Str

  Use Filter enable (InputFilterEnable) to specify how the transcoding
service applies the denoise and deblock filters. You must also enable
the filters separately, with Denoise (InputDenoiseFilter) and Deblock
(InputDeblockFilter). * Auto - The transcoding service determines
whether to apply filtering, depending on input type and quality. *
Disable - The input is not filtered. This is true even if you use the
API to enable them in (InputDeblockFilter) and (InputDeblockFilter). *
Force - The in put is filtered regardless of input type.


=head2 FilterStrength => Int

  Use Filter strength (FilterStrength) to adjust the magnitude the input
filter settings (Deblock and Denoise). The range is -5 to 5. Default is
0.


=head2 ImageInserter => MediaConvert_ImageInserter

  Enable the image inserter feature to include a graphic overlay on your
video. Enable or disable this feature for each input individually. This
setting is disabled by default.


=head2 InputClippings => ArrayRef[MediaConvert_InputClipping]

  (InputClippings) contains sets of start and end times that together
specify a portion of the input to be used in the outputs. If you
provide only a start time, the clip will be the entire input from that
point to the end. If you provide only an end time, it will be the
entire input up to that point. When you specify more than one input
clip, the transcoding service creates the job outputs by stringing the
clips together in the order you specify them.


=head2 Position => MediaConvert_Rectangle

  Use Selection placement (position) to define the video area in your
output frame. The area outside of the rectangle that you specify here
is black. If you specify a value here, it will override any value that
you specify in the output setting Selection placement (position). If
you specify a value here, this will override any AFD values in your
input, even if you set Respond to AFD (RespondToAfd) to Respond
(RESPOND). If you specify a value here, this will ignore anything that
you specify for the setting Scaling Behavior (scalingBehavior).


=head2 ProgramNumber => Int

  Use Program (programNumber) to select a specific program from within a
multi-program transport stream. Note that Quad 4K is not currently
supported. Default is the first program within the transport stream. If
the program you specify doesn't exist, the transcoding service will use
this default.


=head2 PsiControl => Str

  Set PSI control (InputPsiControl) for transport stream inputs to
specify which data the demux process to scans. * Ignore PSI - Scan all
PIDs for audio and video. * Use PSI - Scan only PSI data.


=head2 TimecodeSource => Str

  Use this Timecode source setting, located under the input settings
(InputTimecodeSource), to specify how the service counts input video
frames. This input frame count affects only the behavior of features
that apply to a single input at a time, such as input clipping and
synchronizing some captions formats. Choose Embedded (EMBEDDED) to use
the timecodes in your input video. Choose Start at zero (ZEROBASED) to
start the first frame at zero. Choose Specified start (SPECIFIEDSTART)
to start the first frame at the timecode that you specify in the
setting Start timecode (timecodeStart). If you don't specify a value
for Timecode source, the service will use Embedded by default. For more
information about timecodes, see
https://docs.aws.amazon.com/console/mediaconvert/timecode.


=head2 TimecodeStart => Str

  Specify the timecode that you want the service to use for this input's
initial frame. To use this setting, you must set the Timecode source
setting, located under the input settings (InputTimecodeSource), to
Specified start (SPECIFIEDSTART). For more information about timecodes,
see https://docs.aws.amazon.com/console/mediaconvert/timecode.


=head2 VideoSelector => MediaConvert_VideoSelector

  Selector for video.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

