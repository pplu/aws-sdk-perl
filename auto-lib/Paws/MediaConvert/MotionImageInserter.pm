package Paws::MediaConvert::MotionImageInserter;
  use Moose;
  has Framerate => (is => 'ro', isa => 'Paws::MediaConvert::MotionImageInsertionFramerate', request_name => 'framerate', traits => ['NameInRequest']);
  has Input => (is => 'ro', isa => 'Str', request_name => 'input', traits => ['NameInRequest']);
  has InsertionMode => (is => 'ro', isa => 'Str', request_name => 'insertionMode', traits => ['NameInRequest']);
  has Offset => (is => 'ro', isa => 'Paws::MediaConvert::MotionImageInsertionOffset', request_name => 'offset', traits => ['NameInRequest']);
  has Playback => (is => 'ro', isa => 'Str', request_name => 'playback', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::MotionImageInserter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::MotionImageInserter object:

  $service_obj->Method(Att1 => { Framerate => $value, ..., StartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::MotionImageInserter object:

  $result = $service_obj->Method(...);
  $result->Att1->Framerate

=head1 DESCRIPTION

Overlay motion graphics on top of your video at the time that you
specify.

=head1 ATTRIBUTES


=head2 Framerate => L<Paws::MediaConvert::MotionImageInsertionFramerate>

  If your motion graphic asset is a .mov file, keep this setting
unspecified. If your motion graphic asset is a series of .png files,
specify the frame rate of the overlay in frames per second, as a
fraction. For example, specify 24 fps as 24/1. Make sure that the
number of images in your series matches the frame rate and your
intended overlay duration. For example, if you want a 30-second overlay
at 30 fps, you should have 900 .png images. This overlay frame rate
doesn't need to match the frame rate of the underlying video.


=head2 Input => Str

  Specify the .mov file or series of .png files that you want to overlay
on your video. For .png files, provide the file name of the first file
in the series. Make sure that the names of the .png files end with
sequential numbers that specify the order that they are played in. For
example, overlay_000.png, overlay_001.png, overlay_002.png, and so on.
The sequence must start at zero, and each image file name must have the
same number of digits. Pad your initial file names with enough zeros to
complete the sequence. For example, if the first image is
overlay_0.png, there can be only 10 images in the sequence, with the
last image being overlay_9.png. But if the first image is
overlay_00.png, there can be 100 images in the sequence.


=head2 InsertionMode => Str

  Choose the type of motion graphic asset that you are providing for your
overlay. You can choose either a .mov file or a series of .png files.


=head2 Offset => L<Paws::MediaConvert::MotionImageInsertionOffset>

  Use Offset to specify the placement of your motion graphic overlay on
the video frame. Specify in pixels, from the upper-left corner of the
frame. If you don't specify an offset, the service scales your overlay
to the full size of the frame. Otherwise, the service inserts the
overlay at its native resolution and scales the size up or down with
any video scaling.


=head2 Playback => Str

  Specify whether your motion graphic overlay repeats on a loop or plays
only once.


=head2 StartTime => Str

  Specify when the motion overlay begins. Use timecode format
(HH:MM:SS:FF or HH:MM:SS;FF). Make sure that the timecode you provide
here takes into account how you have set up your timecode configuration
under both job settings and input settings. The simplest way to do that
is to set both to start at 0. If you need to set up your job to follow
timecodes embedded in your source that don't start at zero, make sure
that you specify a start time that is after the first embedded
timecode. For more information, see
https://docs.aws.amazon.com/mediaconvert/latest/ug/setting-up-timecode.html
Find job-wide and input timecode configuration settings in your JSON
job settings specification at settingsE<gt>timecodeConfigE<gt>source
and settingsE<gt>inputsE<gt>timecodeSource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

