package Paws::MediaConvert::AudioCodecSettings;
  use Moose;
  has AacSettings => (is => 'ro', isa => 'Paws::MediaConvert::AacSettings', request_name => 'aacSettings', traits => ['NameInRequest']);
  has Ac3Settings => (is => 'ro', isa => 'Paws::MediaConvert::Ac3Settings', request_name => 'ac3Settings', traits => ['NameInRequest']);
  has AiffSettings => (is => 'ro', isa => 'Paws::MediaConvert::AiffSettings', request_name => 'aiffSettings', traits => ['NameInRequest']);
  has Codec => (is => 'ro', isa => 'Str', request_name => 'codec', traits => ['NameInRequest']);
  has Eac3Settings => (is => 'ro', isa => 'Paws::MediaConvert::Eac3Settings', request_name => 'eac3Settings', traits => ['NameInRequest']);
  has Mp2Settings => (is => 'ro', isa => 'Paws::MediaConvert::Mp2Settings', request_name => 'mp2Settings', traits => ['NameInRequest']);
  has WavSettings => (is => 'ro', isa => 'Paws::MediaConvert::WavSettings', request_name => 'wavSettings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::AudioCodecSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::AudioCodecSettings object:

  $service_obj->Method(Att1 => { AacSettings => $value, ..., WavSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::AudioCodecSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AacSettings

=head1 DESCRIPTION

Audio codec settings (CodecSettings) under (AudioDescriptions) contains
the group of settings related to audio encoding. The settings in this
group vary depending on the value you choose for Audio codec (Codec).
For each codec enum you choose, define the corresponding settings
object. The following lists the codec enum, settings object pairs. *
AAC, AacSettings * MP2, Mp2Settings * WAV, WavSettings * AIFF,
AiffSettings * AC3, Ac3Settings * EAC3, Eac3Settings

=head1 ATTRIBUTES


=head2 AacSettings => L<Paws::MediaConvert::AacSettings>

  


=head2 Ac3Settings => L<Paws::MediaConvert::Ac3Settings>

  


=head2 AiffSettings => L<Paws::MediaConvert::AiffSettings>

  


=head2 Codec => Str

  


=head2 Eac3Settings => L<Paws::MediaConvert::Eac3Settings>

  


=head2 Mp2Settings => L<Paws::MediaConvert::Mp2Settings>

  


=head2 WavSettings => L<Paws::MediaConvert::WavSettings>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

