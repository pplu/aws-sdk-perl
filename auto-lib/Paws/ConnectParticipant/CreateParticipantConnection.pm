
package Paws::ConnectParticipant::CreateParticipantConnection;
  use Moose;
  has ParticipantToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Bearer', required => 1);
  has Type => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateParticipantConnection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/participant/connection');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectParticipant::CreateParticipantConnectionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectParticipant::CreateParticipantConnection - Arguments for method CreateParticipantConnection on L<Paws::ConnectParticipant>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateParticipantConnection on the
L<Amazon Connect Participant Service|Paws::ConnectParticipant> service. Use the attributes of this class
as arguments to method CreateParticipantConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateParticipantConnection.

=head1 SYNOPSIS

    my $participant.connect = Paws->service('ConnectParticipant');
    my $CreateParticipantConnectionResponse =
      $participant . connect->CreateParticipantConnection(
      ParticipantToken => 'MyParticipantToken',
      Type             => [
        'WEBSOCKET', ...    # values: WEBSOCKET, CONNECTION_CREDENTIALS
      ],

      );

    # Results:
    my $ConnectionCredentials =
      $CreateParticipantConnectionResponse->ConnectionCredentials;
    my $Websocket = $CreateParticipantConnectionResponse->Websocket;

# Returns a L<Paws::ConnectParticipant::CreateParticipantConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/participant.connect/CreateParticipantConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ParticipantToken => Str

This is a header parameter.

The Participant Token as obtained from StartChatContact
(https://docs.aws.amazon.com/connect/latest/APIReference/API_StartChatContact.html)
API response.



=head2 B<REQUIRED> Type => ArrayRef[Str|Undef]

Type of connection information required.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateParticipantConnection in L<Paws::ConnectParticipant>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

