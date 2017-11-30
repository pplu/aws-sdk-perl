package Paws::MediaLive::CaptionSelectorSettings;
  use Moose;
  has AribSourceSettings => (is => 'ro', isa => 'Paws::MediaLive::AribSourceSettings', request_name => 'aribSourceSettings', traits => ['NameInRequest']);
  has DvbSubSourceSettings => (is => 'ro', isa => 'Paws::MediaLive::DvbSubSourceSettings', request_name => 'dvbSubSourceSettings', traits => ['NameInRequest']);
  has EmbeddedSourceSettings => (is => 'ro', isa => 'Paws::MediaLive::EmbeddedSourceSettings', request_name => 'embeddedSourceSettings', traits => ['NameInRequest']);
  has Scte20SourceSettings => (is => 'ro', isa => 'Paws::MediaLive::Scte20SourceSettings', request_name => 'scte20SourceSettings', traits => ['NameInRequest']);
  has Scte27SourceSettings => (is => 'ro', isa => 'Paws::MediaLive::Scte27SourceSettings', request_name => 'scte27SourceSettings', traits => ['NameInRequest']);
  has TeletextSourceSettings => (is => 'ro', isa => 'Paws::MediaLive::TeletextSourceSettings', request_name => 'teletextSourceSettings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CaptionSelectorSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::CaptionSelectorSettings object:

  $service_obj->Method(Att1 => { AribSourceSettings => $value, ..., TeletextSourceSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::CaptionSelectorSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AribSourceSettings

=head1 DESCRIPTION

Placeholder documentation for CaptionSelectorSettings

=head1 ATTRIBUTES


=head2 AribSourceSettings => L<Paws::MediaLive::AribSourceSettings>

  


=head2 DvbSubSourceSettings => L<Paws::MediaLive::DvbSubSourceSettings>

  


=head2 EmbeddedSourceSettings => L<Paws::MediaLive::EmbeddedSourceSettings>

  


=head2 Scte20SourceSettings => L<Paws::MediaLive::Scte20SourceSettings>

  


=head2 Scte27SourceSettings => L<Paws::MediaLive::Scte27SourceSettings>

  


=head2 TeletextSourceSettings => L<Paws::MediaLive::TeletextSourceSettings>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

