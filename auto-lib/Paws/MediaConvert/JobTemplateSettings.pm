# Generated from default/object.tt
package Paws::MediaConvert::JobTemplateSettings;
  use Moo;
  use Types::Standard qw/Int ArrayRef/;
  use Paws::MediaConvert::Types qw/MediaConvert_MotionImageInserter MediaConvert_OutputGroup MediaConvert_TimedMetadataInsertion MediaConvert_InputTemplate MediaConvert_AvailBlanking MediaConvert_EsamSettings MediaConvert_NielsenConfiguration MediaConvert_TimecodeConfig/;
  has AdAvailOffset => (is => 'ro', isa => Int);
  has AvailBlanking => (is => 'ro', isa => MediaConvert_AvailBlanking);
  has Esam => (is => 'ro', isa => MediaConvert_EsamSettings);
  has Inputs => (is => 'ro', isa => ArrayRef[MediaConvert_InputTemplate]);
  has MotionImageInserter => (is => 'ro', isa => MediaConvert_MotionImageInserter);
  has NielsenConfiguration => (is => 'ro', isa => MediaConvert_NielsenConfiguration);
  has OutputGroups => (is => 'ro', isa => ArrayRef[MediaConvert_OutputGroup]);
  has TimecodeConfig => (is => 'ro', isa => MediaConvert_TimecodeConfig);
  has TimedMetadataInsertion => (is => 'ro', isa => MediaConvert_TimedMetadataInsertion);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AvailBlanking' => {
                                    'class' => 'Paws::MediaConvert::AvailBlanking',
                                    'type' => 'MediaConvert_AvailBlanking'
                                  },
               'NielsenConfiguration' => {
                                           'class' => 'Paws::MediaConvert::NielsenConfiguration',
                                           'type' => 'MediaConvert_NielsenConfiguration'
                                         },
               'MotionImageInserter' => {
                                          'type' => 'MediaConvert_MotionImageInserter',
                                          'class' => 'Paws::MediaConvert::MotionImageInserter'
                                        },
               'AdAvailOffset' => {
                                    'type' => 'Int'
                                  },
               'Esam' => {
                           'type' => 'MediaConvert_EsamSettings',
                           'class' => 'Paws::MediaConvert::EsamSettings'
                         },
               'OutputGroups' => {
                                   'type' => 'ArrayRef[MediaConvert_OutputGroup]',
                                   'class' => 'Paws::MediaConvert::OutputGroup'
                                 },
               'Inputs' => {
                             'type' => 'ArrayRef[MediaConvert_InputTemplate]',
                             'class' => 'Paws::MediaConvert::InputTemplate'
                           },
               'TimedMetadataInsertion' => {
                                             'class' => 'Paws::MediaConvert::TimedMetadataInsertion',
                                             'type' => 'MediaConvert_TimedMetadataInsertion'
                                           },
               'TimecodeConfig' => {
                                     'class' => 'Paws::MediaConvert::TimecodeConfig',
                                     'type' => 'MediaConvert_TimecodeConfig'
                                   }
             },
  'NameInRequest' => {
                       'Esam' => 'esam',
                       'AdAvailOffset' => 'adAvailOffset',
                       'MotionImageInserter' => 'motionImageInserter',
                       'NielsenConfiguration' => 'nielsenConfiguration',
                       'AvailBlanking' => 'availBlanking',
                       'TimecodeConfig' => 'timecodeConfig',
                       'TimedMetadataInsertion' => 'timedMetadataInsertion',
                       'Inputs' => 'inputs',
                       'OutputGroups' => 'outputGroups'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::JobTemplateSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::JobTemplateSettings object:

  $service_obj->Method(Att1 => { AdAvailOffset => $value, ..., TimedMetadataInsertion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::JobTemplateSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AdAvailOffset

=head1 DESCRIPTION

JobTemplateSettings contains all the transcode settings saved in the
template that will be applied to jobs created from it.

=head1 ATTRIBUTES


=head2 AdAvailOffset => Int

  When specified, this offset (in milliseconds) is added to the input Ad
Avail PTS time.


=head2 AvailBlanking => MediaConvert_AvailBlanking

  Settings for ad avail blanking. Video can be blanked or overlaid with
an image, and audio muted during SCTE-35 triggered ad avails.


=head2 Esam => MediaConvert_EsamSettings

  Settings for Event Signaling And Messaging (ESAM).


=head2 Inputs => ArrayRef[MediaConvert_InputTemplate]

  Use Inputs (inputs) to define the source file used in the transcode
job. There can only be one input in a job template. Using the API, you
can include multiple inputs when referencing a job template.


=head2 MotionImageInserter => MediaConvert_MotionImageInserter

  Overlay motion graphics on top of your video. The motion graphics that
you specify here appear on all outputs in all output groups.


=head2 NielsenConfiguration => MediaConvert_NielsenConfiguration

  Settings for your Nielsen configuration. If you don't do Nielsen
measurement and analytics, ignore these settings. When you enable
Nielsen configuration (nielsenConfiguration), MediaConvert enables PCM
to ID3 tagging for all outputs in the job. To enable Nielsen
configuration programmatically, include an instance of
nielsenConfiguration in your JSON job specification. Even if you don't
include any children of nielsenConfiguration, you still enable the
setting.


=head2 OutputGroups => ArrayRef[MediaConvert_OutputGroup]

  (OutputGroups) contains one group of settings for each set of outputs
that share a common package type. All unpackaged files (MPEG-4, MPEG-2
TS, Quicktime, MXF, and no container) are grouped in a single output
group as well. Required in (OutputGroups) is a group of settings that
apply to the whole group. This required object depends on the value you
set for (Type) under (OutputGroups)E<gt>(OutputGroupSettings). Type,
settings object pairs are as follows. * FILE_GROUP_SETTINGS,
FileGroupSettings * HLS_GROUP_SETTINGS, HlsGroupSettings *
DASH_ISO_GROUP_SETTINGS, DashIsoGroupSettings *
MS_SMOOTH_GROUP_SETTINGS, MsSmoothGroupSettings * CMAF_GROUP_SETTINGS,
CmafGroupSettings


=head2 TimecodeConfig => MediaConvert_TimecodeConfig

  Contains settings used to acquire and adjust timecode information from
inputs.


=head2 TimedMetadataInsertion => MediaConvert_TimedMetadataInsertion

  Enable Timed metadata insertion (TimedMetadataInsertion) to include ID3
tags in your job. To include timed metadata, you must enable it here,
enable it in each output container, and specify tags and timecodes in
ID3 insertion (Id3Insertion) objects.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

