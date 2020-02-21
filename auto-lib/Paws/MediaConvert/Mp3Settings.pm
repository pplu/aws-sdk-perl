package Paws::MediaConvert::Mp3Settings;
  use Moose;
  has Bitrate => (is => 'ro', isa => 'Int', request_name => 'bitrate', traits => ['NameInRequest']);
  has Channels => (is => 'ro', isa => 'Int', request_name => 'channels', traits => ['NameInRequest']);
  has RateControlMode => (is => 'ro', isa => 'Str', request_name => 'rateControlMode', traits => ['NameInRequest']);
  has SampleRate => (is => 'ro', isa => 'Int', request_name => 'sampleRate', traits => ['NameInRequest']);
  has VbrQuality => (is => 'ro', isa => 'Int', request_name => 'vbrQuality', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Mp3Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Mp3Settings object:

  $service_obj->Method(Att1 => { Bitrate => $value, ..., VbrQuality => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Mp3Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->Bitrate

=head1 DESCRIPTION

Required when you set Codec, under AudioDescriptionsE<gt>CodecSettings,
to the value MP3.

=head1 ATTRIBUTES


=head2 Bitrate => Int

  Specify the average bitrate in bits per second.


=head2 Channels => Int

  Specify the number of channels in this output audio track. Choosing
Mono on the console gives you 1 output channel; choosing Stereo gives
you 2. In the API, valid values are 1 and 2.


=head2 RateControlMode => Str

  Specify whether the service encodes this MP3 audio output with a
constant bitrate (CBR) or a variable bitrate (VBR).


=head2 SampleRate => Int

  Sample rate in hz.


=head2 VbrQuality => Int

  Required when you set Bitrate control mode (rateControlMode) to VBR.
Specify the audio quality of this MP3 output from 0 (highest quality)
to 9 (lowest quality).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

