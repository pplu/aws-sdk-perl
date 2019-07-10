package Paws::Chime::VoiceConnector;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OutboundHostName => (is => 'ro', isa => 'Str');
  has RequireEncryption => (is => 'ro', isa => 'Bool');
  has UpdatedTimestamp => (is => 'ro', isa => 'Str');
  has VoiceConnectorId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::VoiceConnector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::VoiceConnector object:

  $service_obj->Method(Att1 => { CreatedTimestamp => $value, ..., VoiceConnectorId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::VoiceConnector object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTimestamp

=head1 DESCRIPTION

The Amazon Chime Voice Connector configuration, including outbound host
name and encryption settings.

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

  The Amazon Chime Voice Connector creation timestamp, in ISO 8601
format.


=head2 Name => Str

  The name of the Amazon Chime Voice Connector.


=head2 OutboundHostName => Str

  The outbound host name for the Amazon Chime Voice Connector.


=head2 RequireEncryption => Bool

  Designates whether encryption is required for the Amazon Chime Voice
Connector.


=head2 UpdatedTimestamp => Str

  The updated Amazon Chime Voice Connector timestamp, in ISO 8601 format.


=head2 VoiceConnectorId => Str

  The Amazon Chime Voice Connector ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

