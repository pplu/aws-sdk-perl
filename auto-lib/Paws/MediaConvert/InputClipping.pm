package Paws::MediaConvert::InputClipping;
  use Moose;
  has EndTimecode => (is => 'ro', isa => 'Str', request_name => 'endTimecode', traits => ['NameInRequest']);
  has StartTimecode => (is => 'ro', isa => 'Str', request_name => 'startTimecode', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::InputClipping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::InputClipping object:

  $service_obj->Method(Att1 => { EndTimecode => $value, ..., StartTimecode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::InputClipping object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTimecode

=head1 DESCRIPTION

To transcode only portions of your input (clips), include one Input
clipping (one instance of InputClipping in the JSON job file) for each
input clip. All input clips you specify will be included in every
output of the job.

=head1 ATTRIBUTES


=head2 EndTimecode => Str

  Set End timecode (EndTimecode) to the end of the portion of the input
you are clipping. The frame corresponding to the End timecode value is
included in the clip. Start timecode or End timecode may be left blank,
but not both. Use the format HH:MM:SS:FF or HH:MM:SS;FF, where HH is
the hour, MM is the minute, SS is the second, and FF is the frame
number. When choosing this value, take into account your setting for
timecode source under input settings (InputTimecodeSource). For
example, if you have embedded timecodes that start at 01:00:00:00 and
you want your clip to end six minutes into the video, use 01:06:00:00.


=head2 StartTimecode => Str

  Set Start timecode (StartTimecode) to the beginning of the portion of
the input you are clipping. The frame corresponding to the Start
timecode value is included in the clip. Start timecode or End timecode
may be left blank, but not both. Use the format HH:MM:SS:FF or
HH:MM:SS;FF, where HH is the hour, MM is the minute, SS is the second,
and FF is the frame number. When choosing this value, take into account
your setting for Input timecode source. For example, if you have
embedded timecodes that start at 01:00:00:00 and you want your clip to
begin five minutes into the video, use 01:05:00:00.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

