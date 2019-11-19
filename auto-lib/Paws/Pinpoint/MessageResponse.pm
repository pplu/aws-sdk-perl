
package Paws::Pinpoint::MessageResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_MapOfMessageResult Pinpoint_MapOfEndpointMessageResult/;
  has ApplicationId => (is => 'ro', isa => Str, required => 1);
  has EndpointResult => (is => 'ro', isa => Pinpoint_MapOfEndpointMessageResult);
  has RequestId => (is => 'ro', isa => Str);
  has Result => (is => 'ro', isa => Pinpoint_MapOfMessageResult);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ApplicationId' => 1
                  },
  'types' => {
               'RequestId' => {
                                'type' => 'Str'
                              },
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EndpointResult' => {
                                     'class' => 'Paws::Pinpoint::MapOfEndpointMessageResult',
                                     'type' => 'Pinpoint_MapOfEndpointMessageResult'
                                   },
               'Result' => {
                             'class' => 'Paws::Pinpoint::MapOfMessageResult',
                             'type' => 'Pinpoint_MapOfMessageResult'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::MessageResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application that was used to send the
message.


=head2 EndpointResult => Pinpoint_MapOfEndpointMessageResult

A map that contains a multipart response for each address that the
message was sent to. In the map, the endpoint ID is the key and the
result is the value.


=head2 RequestId => Str

The identifier for the original request that the message was delivered
for.


=head2 Result => Pinpoint_MapOfMessageResult

A map that contains a multipart response for each address (email
address, phone number, or push notification token) that the message was
sent to. In the map, the address is the key and the result is the
value.


=head2 _request_id => Str


=cut

