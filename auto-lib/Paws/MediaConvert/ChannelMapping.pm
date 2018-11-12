package Paws::MediaConvert::ChannelMapping;
  use Moose;
  has OutputChannels => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::OutputChannelMapping]', request_name => 'outputChannels', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ChannelMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::ChannelMapping object:

  $service_obj->Method(Att1 => { OutputChannels => $value, ..., OutputChannels => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::ChannelMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->OutputChannels

=head1 DESCRIPTION

Channel mapping (ChannelMapping) contains the group of fields that hold
the remixing value for each channel. Units are in dB. Acceptable values
are within the range from -60 (mute) through 6. A setting of 0 passes
the input channel unchanged to the output channel (no attenuation or
amplification).

=head1 ATTRIBUTES


=head2 OutputChannels => ArrayRef[L<Paws::MediaConvert::OutputChannelMapping>]

  List of output channels



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

