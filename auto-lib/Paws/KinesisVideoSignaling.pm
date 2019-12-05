package Paws::KinesisVideoSignaling;
  use Moose;
  sub service { 'kinesisvideo' }
  sub signing_name { 'kinesisvideo' }
  sub version { '2019-12-04' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub GetIceServerConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisVideoSignaling::GetIceServerConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendAlexaOfferToMaster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisVideoSignaling::SendAlexaOfferToMaster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/GetIceServerConfig SendAlexaOfferToMaster / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoSignaling - Perl Interface to AWS Amazon Kinesis Video Signaling Channels

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('KinesisVideoSignaling');
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

Kinesis Video Streams Signaling Service is a intermediate service that
establishes a communication channel for discovering peers, transmitting
offers and answers in order to establish peer-to-peer connection in
webRTC technology.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2019-12-04>


=head1 METHODS

=head2 GetIceServerConfig

=over

=item ChannelARN => Str

=item [ClientId => Str]

=item [Service => Str]

=item [Username => Str]


=back

Each argument is described in detail in: L<Paws::KinesisVideoSignaling::GetIceServerConfig>

Returns: a L<Paws::KinesisVideoSignaling::GetIceServerConfigResponse> instance

Gets the Interactive Connectivity Establishment (ICE) server
configuration information, including URIs, username, and password which
can be used to configure the WebRTC connection. The ICE component uses
this configuration information to setup the WebRTC connection,
including authenticating with the Traversal Using Relays around NAT
(TURN) relay server.

TURN is a protocol that is used to improve the connectivity of
peer-to-peer applications. By providing a cloud-based relay service,
TURN ensures that a connection can be established even when one or more
peers are incapable of a direct peer-to-peer connection. For more
information, see A REST API For Access To TURN Services
(https://tools.ietf.org/html/draft-uberti-rtcweb-turn-rest-00).

You can invoke this API to establish a fallback mechanism in case
either of the peers is unable to establish a direct peer-to-peer
connection over a signaling channel. You must specify either a
signaling channel ARN or the client ID in order to invoke this API.


=head2 SendAlexaOfferToMaster

=over

=item ChannelARN => Str

=item MessagePayload => Str

=item SenderClientId => Str


=back

Each argument is described in detail in: L<Paws::KinesisVideoSignaling::SendAlexaOfferToMaster>

Returns: a L<Paws::KinesisVideoSignaling::SendAlexaOfferToMasterResponse> instance

This API allows you to connect WebRTC-enabled devices with Alexa
display devices. When invoked, it sends the Alexa Session Description
Protocol (SDP) offer to the master peer. The offer is delivered as soon
as the master is connected to the specified signaling channel. This API
returns the SDP answer from the connected master. If the master is not
connected to the signaling channel, redelivery requests are made until
the message expires.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

