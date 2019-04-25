package Paws::MediaLive::CaptionDestinationSettings;
  use Moose;
  has AribDestinationSettings => (is => 'ro', isa => 'Paws::MediaLive::AribDestinationSettings', request_name => 'aribDestinationSettings', traits => ['NameInRequest']);
  has BurnInDestinationSettings => (is => 'ro', isa => 'Paws::MediaLive::BurnInDestinationSettings', request_name => 'burnInDestinationSettings', traits => ['NameInRequest']);
  has DvbSubDestinationSettings => (is => 'ro', isa => 'Paws::MediaLive::DvbSubDestinationSettings', request_name => 'dvbSubDestinationSettings', traits => ['NameInRequest']);
  has EmbeddedDestinationSettings => (is => 'ro', isa => 'Paws::MediaLive::EmbeddedDestinationSettings', request_name => 'embeddedDestinationSettings', traits => ['NameInRequest']);
  has EmbeddedPlusScte20DestinationSettings => (is => 'ro', isa => 'Paws::MediaLive::EmbeddedPlusScte20DestinationSettings', request_name => 'embeddedPlusScte20DestinationSettings', traits => ['NameInRequest']);
  has RtmpCaptionInfoDestinationSettings => (is => 'ro', isa => 'Paws::MediaLive::RtmpCaptionInfoDestinationSettings', request_name => 'rtmpCaptionInfoDestinationSettings', traits => ['NameInRequest']);
  has Scte20PlusEmbeddedDestinationSettings => (is => 'ro', isa => 'Paws::MediaLive::Scte20PlusEmbeddedDestinationSettings', request_name => 'scte20PlusEmbeddedDestinationSettings', traits => ['NameInRequest']);
  has Scte27DestinationSettings => (is => 'ro', isa => 'Paws::MediaLive::Scte27DestinationSettings', request_name => 'scte27DestinationSettings', traits => ['NameInRequest']);
  has SmpteTtDestinationSettings => (is => 'ro', isa => 'Paws::MediaLive::SmpteTtDestinationSettings', request_name => 'smpteTtDestinationSettings', traits => ['NameInRequest']);
  has TeletextDestinationSettings => (is => 'ro', isa => 'Paws::MediaLive::TeletextDestinationSettings', request_name => 'teletextDestinationSettings', traits => ['NameInRequest']);
  has TtmlDestinationSettings => (is => 'ro', isa => 'Paws::MediaLive::TtmlDestinationSettings', request_name => 'ttmlDestinationSettings', traits => ['NameInRequest']);
  has WebvttDestinationSettings => (is => 'ro', isa => 'Paws::MediaLive::WebvttDestinationSettings', request_name => 'webvttDestinationSettings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CaptionDestinationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::CaptionDestinationSettings object:

  $service_obj->Method(Att1 => { AribDestinationSettings => $value, ..., WebvttDestinationSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::CaptionDestinationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AribDestinationSettings

=head1 DESCRIPTION

Placeholder documentation for CaptionDestinationSettings

=head1 ATTRIBUTES


=head2 AribDestinationSettings => L<Paws::MediaLive::AribDestinationSettings>

  


=head2 BurnInDestinationSettings => L<Paws::MediaLive::BurnInDestinationSettings>

  


=head2 DvbSubDestinationSettings => L<Paws::MediaLive::DvbSubDestinationSettings>

  


=head2 EmbeddedDestinationSettings => L<Paws::MediaLive::EmbeddedDestinationSettings>

  


=head2 EmbeddedPlusScte20DestinationSettings => L<Paws::MediaLive::EmbeddedPlusScte20DestinationSettings>

  


=head2 RtmpCaptionInfoDestinationSettings => L<Paws::MediaLive::RtmpCaptionInfoDestinationSettings>

  


=head2 Scte20PlusEmbeddedDestinationSettings => L<Paws::MediaLive::Scte20PlusEmbeddedDestinationSettings>

  


=head2 Scte27DestinationSettings => L<Paws::MediaLive::Scte27DestinationSettings>

  


=head2 SmpteTtDestinationSettings => L<Paws::MediaLive::SmpteTtDestinationSettings>

  


=head2 TeletextDestinationSettings => L<Paws::MediaLive::TeletextDestinationSettings>

  


=head2 TtmlDestinationSettings => L<Paws::MediaLive::TtmlDestinationSettings>

  


=head2 WebvttDestinationSettings => L<Paws::MediaLive::WebvttDestinationSettings>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

