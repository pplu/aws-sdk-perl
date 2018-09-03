package Paws::MediaConvert::H264QvbrSettings;
  use Moose;
  has MaxAverageBitrate => (is => 'ro', isa => 'Int', request_name => 'maxAverageBitrate', traits => ['NameInRequest']);
  has QvbrQualityLevel => (is => 'ro', isa => 'Int', request_name => 'qvbrQualityLevel', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::H264QvbrSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::H264QvbrSettings object:

  $service_obj->Method(Att1 => { MaxAverageBitrate => $value, ..., QvbrQualityLevel => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::H264QvbrSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxAverageBitrate

=head1 DESCRIPTION

Settings for quality-defined variable bitrate encoding with the H.264
codec. Required when you set Rate control mode to QVBR. Not valid when
you set Rate control mode to a value other than QVBR, or when you don't
define Rate control mode.

=head1 ATTRIBUTES


=head2 MaxAverageBitrate => Int

  Use this setting only when Rate control mode is QVBR and Quality tuning
level is Multi-pass HQ. For Max average bitrate values suited to the
complexity of your input video, the service limits the average bitrate
of the video part of this output to the value you choose. That is, the
total size of the video element is less than or equal to the value you
set multiplied by the number of seconds of encoded output.


=head2 QvbrQualityLevel => Int

  Required when you use QVBR rate control mode. That is, when you specify
qvbrSettings within h264Settings. Specify the target quality level for
this output, from 1 to 10. Use higher numbers for greater quality.
Level 10 results in nearly lossless compression. The quality level for
most broadcast-quality transcodes is between 6 and 9.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

