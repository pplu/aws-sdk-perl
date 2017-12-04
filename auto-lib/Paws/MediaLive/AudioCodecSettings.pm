package Paws::MediaLive::AudioCodecSettings;
  use Moose;
  has AacSettings => (is => 'ro', isa => 'Paws::MediaLive::AacSettings', request_name => 'aacSettings', traits => ['NameInRequest']);
  has Ac3Settings => (is => 'ro', isa => 'Paws::MediaLive::Ac3Settings', request_name => 'ac3Settings', traits => ['NameInRequest']);
  has Eac3Settings => (is => 'ro', isa => 'Paws::MediaLive::Eac3Settings', request_name => 'eac3Settings', traits => ['NameInRequest']);
  has Mp2Settings => (is => 'ro', isa => 'Paws::MediaLive::Mp2Settings', request_name => 'mp2Settings', traits => ['NameInRequest']);
  has PassThroughSettings => (is => 'ro', isa => 'Paws::MediaLive::PassThroughSettings', request_name => 'passThroughSettings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::AudioCodecSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::AudioCodecSettings object:

  $service_obj->Method(Att1 => { AacSettings => $value, ..., PassThroughSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::AudioCodecSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AacSettings

=head1 DESCRIPTION

Placeholder documentation for AudioCodecSettings

=head1 ATTRIBUTES


=head2 AacSettings => L<Paws::MediaLive::AacSettings>

  


=head2 Ac3Settings => L<Paws::MediaLive::Ac3Settings>

  


=head2 Eac3Settings => L<Paws::MediaLive::Eac3Settings>

  


=head2 Mp2Settings => L<Paws::MediaLive::Mp2Settings>

  


=head2 PassThroughSettings => L<Paws::MediaLive::PassThroughSettings>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

