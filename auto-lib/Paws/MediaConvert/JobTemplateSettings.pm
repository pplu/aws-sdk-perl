package Paws::MediaConvert::JobTemplateSettings;
  use Moose;
  has AdAvailOffset => (is => 'ro', isa => 'Int', request_name => 'adAvailOffset', traits => ['NameInRequest']);
  has AvailBlanking => (is => 'ro', isa => 'Paws::MediaConvert::AvailBlanking', request_name => 'availBlanking', traits => ['NameInRequest']);
  has Esam => (is => 'ro', isa => 'Paws::MediaConvert::EsamSettings', request_name => 'esam', traits => ['NameInRequest']);
  has Inputs => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::InputTemplate]', request_name => 'inputs', traits => ['NameInRequest']);
  has MotionImageInserter => (is => 'ro', isa => 'Paws::MediaConvert::MotionImageInserter', request_name => 'motionImageInserter', traits => ['NameInRequest']);
  has NielsenConfiguration => (is => 'ro', isa => 'Paws::MediaConvert::NielsenConfiguration', request_name => 'nielsenConfiguration', traits => ['NameInRequest']);
  has OutputGroups => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::OutputGroup]', request_name => 'outputGroups', traits => ['NameInRequest']);
  has TimecodeConfig => (is => 'ro', isa => 'Paws::MediaConvert::TimecodeConfig', request_name => 'timecodeConfig', traits => ['NameInRequest']);
  has TimedMetadataInsertion => (is => 'ro', isa => 'Paws::MediaConvert::TimedMetadataInsertion', request_name => 'timedMetadataInsertion', traits => ['NameInRequest']);
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


=head2 AvailBlanking => L<Paws::MediaConvert::AvailBlanking>

  Settings for ad avail blanking. Video can be blanked or overlaid with
an image, and audio muted during SCTE-35 triggered ad avails.


=head2 Esam => L<Paws::MediaConvert::EsamSettings>

  Settings for Event Signaling And Messaging (ESAM).


=head2 Inputs => ArrayRef[L<Paws::MediaConvert::InputTemplate>]

  Use Inputs (inputs) to define the source file used in the transcode
job. There can only be one input in a job template. Using the API, you
can include multiple inputs when referencing a job template.


=head2 MotionImageInserter => L<Paws::MediaConvert::MotionImageInserter>

  Overlay motion graphics on top of your video. The motion graphics that
you specify here appear on all outputs in all output groups.


=head2 NielsenConfiguration => L<Paws::MediaConvert::NielsenConfiguration>

  Settings for Nielsen Configuration


=head2 OutputGroups => ArrayRef[L<Paws::MediaConvert::OutputGroup>]

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


=head2 TimecodeConfig => L<Paws::MediaConvert::TimecodeConfig>

  Contains settings used to acquire and adjust timecode information from
inputs.


=head2 TimedMetadataInsertion => L<Paws::MediaConvert::TimedMetadataInsertion>

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

