package Paws::MediaConvert::TimecodeConfig;
  use Moose;
  has Anchor => (is => 'ro', isa => 'Str', request_name => 'anchor', traits => ['NameInRequest']);
  has Source => (is => 'ro', isa => 'Str', request_name => 'source', traits => ['NameInRequest']);
  has Start => (is => 'ro', isa => 'Str', request_name => 'start', traits => ['NameInRequest']);
  has TimestampOffset => (is => 'ro', isa => 'Str', request_name => 'timestampOffset', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::TimecodeConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::TimecodeConfig object:

  $service_obj->Method(Att1 => { Anchor => $value, ..., TimestampOffset => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::TimecodeConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Anchor

=head1 DESCRIPTION

These settings control how the service handles timecodes throughout the
job. These settings don't affect input clipping.

=head1 ATTRIBUTES


=head2 Anchor => Str

  If you use an editing platform that relies on an anchor timecode, use
Anchor Timecode (Anchor) to specify a timecode that will match the
input video frame to the output video frame. Use 24-hour format with
frame number, (HH:MM:SS:FF) or (HH:MM:SS;FF). This setting ignores
frame rate conversion. System behavior for Anchor Timecode varies
depending on your setting for Source (TimecodeSource). * If Source
(TimecodeSource) is set to Specified Start (SPECIFIEDSTART), the first
input frame is the specified value in Start Timecode (Start). Anchor
Timecode (Anchor) and Start Timecode (Start) are used calculate output
timecode. * If Source (TimecodeSource) is set to Start at 0 (ZEROBASED)
the first frame is 00:00:00:00. * If Source (TimecodeSource) is set to
Embedded (EMBEDDED), the first frame is the timecode value on the first
input frame of the input.


=head2 Source => Str

  


=head2 Start => Str

  Only use when you set Source (TimecodeSource) to Specified start
(SPECIFIEDSTART). Use Start timecode (Start) to specify the timecode
for the initial frame. Use 24-hour format with frame number,
(HH:MM:SS:FF) or (HH:MM:SS;FF).


=head2 TimestampOffset => Str

  Only applies to outputs that support program-date-time stamp. Use
Timestamp offset (TimestampOffset) to overwrite the timecode date
without affecting the time and frame number. Provide the new date as a
string in the format "yyyy-mm-dd". To use Time stamp offset, you must
also enable Insert program-date-time (InsertProgramDateTime) in the
output settings. For example, if the date part of your timecodes is
2002-1-25 and you want to change it to one year later, set Timestamp
offset (TimestampOffset) to 2003-1-25.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

