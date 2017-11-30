package Paws::MediaConvert::Mp2Settings;
  use Moose;
  has Bitrate => (is => 'ro', isa => 'Int', request_name => 'bitrate', traits => ['NameInRequest']);
  has Channels => (is => 'ro', isa => 'Int', request_name => 'channels', traits => ['NameInRequest']);
  has SampleRate => (is => 'ro', isa => 'Int', request_name => 'sampleRate', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Mp2Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Mp2Settings object:

  $service_obj->Method(Att1 => { Bitrate => $value, ..., SampleRate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Mp2Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->Bitrate

=head1 DESCRIPTION

Required when you set (Codec) under
(AudioDescriptions)E<gt>(CodecSettings) to the value MP2.

=head1 ATTRIBUTES


=head2 Bitrate => Int

  Average bitrate in bits/second.


=head2 Channels => Int

  Set Channels to specify the number of channels in this output audio
track. Choosing Mono in the console will give you 1 output channel;
choosing Stereo will give you 2. In the API, valid values are 1 and 2.


=head2 SampleRate => Int

  Sample rate in hz.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

