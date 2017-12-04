package Paws::MediaLive::Ac3Settings;
  use Moose;
  has Bitrate => (is => 'ro', isa => 'Num', request_name => 'bitrate', traits => ['NameInRequest']);
  has BitstreamMode => (is => 'ro', isa => 'Str', request_name => 'bitstreamMode', traits => ['NameInRequest']);
  has CodingMode => (is => 'ro', isa => 'Str', request_name => 'codingMode', traits => ['NameInRequest']);
  has Dialnorm => (is => 'ro', isa => 'Int', request_name => 'dialnorm', traits => ['NameInRequest']);
  has DrcProfile => (is => 'ro', isa => 'Str', request_name => 'drcProfile', traits => ['NameInRequest']);
  has LfeFilter => (is => 'ro', isa => 'Str', request_name => 'lfeFilter', traits => ['NameInRequest']);
  has MetadataControl => (is => 'ro', isa => 'Str', request_name => 'metadataControl', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::Ac3Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::Ac3Settings object:

  $service_obj->Method(Att1 => { Bitrate => $value, ..., MetadataControl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::Ac3Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->Bitrate

=head1 DESCRIPTION

Placeholder documentation for Ac3Settings

=head1 ATTRIBUTES


=head2 Bitrate => Num

  Average bitrate in bits/second. Valid bitrates depend on the coding
mode.


=head2 BitstreamMode => Str

  Specifies the bitstream mode (bsmod) for the emitted AC-3 stream. See
ATSC A/52-2012 for background on these values.


=head2 CodingMode => Str

  Dolby Digital coding mode. Determines number of channels.


=head2 Dialnorm => Int

  Sets the dialnorm for the output. If excluded and input audio is Dolby
Digital, dialnorm will be passed through.


=head2 DrcProfile => Str

  If set to filmStandard, adds dynamic range compression signaling to the
output bitstream as defined in the Dolby Digital specification.


=head2 LfeFilter => Str

  When set to enabled, applies a 120Hz lowpass filter to the LFE channel
prior to encoding. Only valid in codingMode32Lfe mode.


=head2 MetadataControl => Str

  When set to "followInput", encoder metadata will be sourced from the
DD, DD+, or DolbyE decoder that supplied this audio data. If audio was
not supplied from one of these streams, then the static metadata
settings will be used.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

