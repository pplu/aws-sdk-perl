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

Include one instance of (InputClipping) for each input clip.

=head1 ATTRIBUTES


=head2 EndTimecode => Str

  Set End timecode (EndTimecode) to the end of the portion of the input
you are clipping. The frame corresponding to the End timecode value is
included in the clip. Start timecode or End timecode may be left blank,
but not both. When choosing this value, take into account your setting
for Input timecode source. For example, if you have embedded timecodes
that start at 01:00:00:00 and you want your clip to begin five minutes
into the video, use 01:00:05:00.


=head2 StartTimecode => Str

  Set Start timecode (StartTimecode) to the beginning of the portion of
the input you are clipping. The frame corresponding to the Start
timecode value is included in the clip. Start timecode or End timecode
may be left blank, but not both. When choosing this value, take into
account your setting for Input timecode source. For example, if you
have embedded timecodes that start at 01:00:00:00 and you want your
clip to begin five minutes into the video, use 01:00:05:00.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

