
package Paws::ApiGatewayManagement::GetConnectionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayManagement::Types qw/ApiGatewayManagement_Identity/;
  has ConnectedAt => (is => 'ro', isa => Str);
  has Identity => (is => 'ro', isa => ApiGatewayManagement_Identity);
  has LastActiveAt => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastActiveAt' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ConnectedAt' => {
                                  'type' => 'Str'
                                },
               'Identity' => {
                               'type' => 'ApiGatewayManagement_Identity',
                               'class' => 'Paws::ApiGatewayManagement::Identity'
                             }
             },
  'NameInRequest' => {
                       'LastActiveAt' => 'lastActiveAt',
                       'Identity' => 'identity',
                       'ConnectedAt' => 'connectedAt'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayManagement::GetConnectionResponse

=head1 ATTRIBUTES


=head2 ConnectedAt => Str

The time in ISO 8601 format for when the connection was established.


=head2 Identity => ApiGatewayManagement_Identity




=head2 LastActiveAt => Str

The time in ISO 8601 format for when the connection was last active.


=head2 _request_id => Str


=cut

