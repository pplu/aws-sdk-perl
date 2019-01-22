package Paws::MediaConvert::CaptionDestinationSettings;
  use Moose;
  has BurninDestinationSettings => (is => 'ro', isa => 'Paws::MediaConvert::BurninDestinationSettings', request_name => 'burninDestinationSettings', traits => ['NameInRequest']);
  has DestinationType => (is => 'ro', isa => 'Str', request_name => 'destinationType', traits => ['NameInRequest']);
  has DvbSubDestinationSettings => (is => 'ro', isa => 'Paws::MediaConvert::DvbSubDestinationSettings', request_name => 'dvbSubDestinationSettings', traits => ['NameInRequest']);
  has EmbeddedDestinationSettings => (is => 'ro', isa => 'Paws::MediaConvert::EmbeddedDestinationSettings', request_name => 'embeddedDestinationSettings', traits => ['NameInRequest']);
  has SccDestinationSettings => (is => 'ro', isa => 'Paws::MediaConvert::SccDestinationSettings', request_name => 'sccDestinationSettings', traits => ['NameInRequest']);
  has TeletextDestinationSettings => (is => 'ro', isa => 'Paws::MediaConvert::TeletextDestinationSettings', request_name => 'teletextDestinationSettings', traits => ['NameInRequest']);
  has TtmlDestinationSettings => (is => 'ro', isa => 'Paws::MediaConvert::TtmlDestinationSettings', request_name => 'ttmlDestinationSettings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::CaptionDestinationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::CaptionDestinationSettings object:

  $service_obj->Method(Att1 => { BurninDestinationSettings => $value, ..., TtmlDestinationSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::CaptionDestinationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->BurninDestinationSettings

=head1 DESCRIPTION

Specific settings required by destination type. Note that
burnin_destination_settings are not available if the source of the
caption data is Embedded or Teletext.

=head1 ATTRIBUTES


=head2 BurninDestinationSettings => L<Paws::MediaConvert::BurninDestinationSettings>

  


=head2 DestinationType => Str

  


=head2 DvbSubDestinationSettings => L<Paws::MediaConvert::DvbSubDestinationSettings>

  


=head2 EmbeddedDestinationSettings => L<Paws::MediaConvert::EmbeddedDestinationSettings>

  


=head2 SccDestinationSettings => L<Paws::MediaConvert::SccDestinationSettings>

  


=head2 TeletextDestinationSettings => L<Paws::MediaConvert::TeletextDestinationSettings>

  


=head2 TtmlDestinationSettings => L<Paws::MediaConvert::TtmlDestinationSettings>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

