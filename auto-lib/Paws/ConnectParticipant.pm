package Paws::ConnectParticipant;
  use Moose;
  sub service { 'participant.connect' }
  sub signing_name { 'execute-api' }
  sub version { '2018-09-07' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateParticipantConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectParticipant::CreateParticipantConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisconnectParticipant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectParticipant::DisconnectParticipant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTranscript {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectParticipant::GetTranscript', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendEvent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectParticipant::SendEvent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectParticipant::SendMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateParticipantConnection DisconnectParticipant GetTranscript SendEvent SendMessage / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectParticipant - Perl Interface to AWS Amazon Connect Participant Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ConnectParticipant');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Connect is a cloud-based contact center solution that makes it
easy to set up and manage a customer contact center and provide
reliable customer engagement at any scale.

Amazon Connect enables customer contacts through voice or chat.

The APIs described here are used by chat participants, such as agents
and customers.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/participant.connect-2018-09-07>


=head1 METHODS

=head2 CreateParticipantConnection

=over

=item ParticipantToken => Str

=item Type => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ConnectParticipant::CreateParticipantConnection>

Returns: a L<Paws::ConnectParticipant::CreateParticipantConnectionResponse> instance

Creates the participant's connection. Note that ParticipantToken is
used for invoking this API instead of ConnectionToken.

The participant token is valid for the lifetime of the participant
E<ndash> until the they are part of a contact.

The response URL for C<WEBSOCKET> Type has a connect expiry timeout of
100s. Clients must manually connect to the returned websocket URL and
subscribe to the desired topic.

For chat, you need to publish the following on the established
websocket connection:

C<{"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}>

Upon websocket URL expiry, as specified in the response
ConnectionExpiry parameter, clients need to call this API again to
obtain a new websocket URL and perform the same steps as before.


=head2 DisconnectParticipant

=over

=item ConnectionToken => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::ConnectParticipant::DisconnectParticipant>

Returns: a L<Paws::ConnectParticipant::DisconnectParticipantResponse> instance

Disconnects a participant. Note that ConnectionToken is used for
invoking this API instead of ParticipantToken.


=head2 GetTranscript

=over

=item ConnectionToken => Str

=item [ContactId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ScanDirection => Str]

=item [SortOrder => Str]

=item [StartPosition => L<Paws::ConnectParticipant::StartPosition>]


=back

Each argument is described in detail in: L<Paws::ConnectParticipant::GetTranscript>

Returns: a L<Paws::ConnectParticipant::GetTranscriptResponse> instance

Retrieves a transcript of the session. Note that ConnectionToken is
used for invoking this API instead of ParticipantToken.


=head2 SendEvent

=over

=item ConnectionToken => Str

=item ContentType => Str

=item [ClientToken => Str]

=item [Content => Str]


=back

Each argument is described in detail in: L<Paws::ConnectParticipant::SendEvent>

Returns: a L<Paws::ConnectParticipant::SendEventResponse> instance

Sends an event. Note that ConnectionToken is used for invoking this API
instead of ParticipantToken.


=head2 SendMessage

=over

=item ConnectionToken => Str

=item Content => Str

=item ContentType => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::ConnectParticipant::SendMessage>

Returns: a L<Paws::ConnectParticipant::SendMessageResponse> instance

Sends a message. Note that ConnectionToken is used for invoking this
API instead of ParticipantToken.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

