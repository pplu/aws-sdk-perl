
package Paws::ApiGateway::TestInvokeAuthorizerResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::ApiGateway::Types qw/ApiGateway_MapOfStringToList ApiGateway_MapOfStringToString/;
  has Authorization => (is => 'ro', isa => ApiGateway_MapOfStringToList);
  has Claims => (is => 'ro', isa => ApiGateway_MapOfStringToString);
  has ClientStatus => (is => 'ro', isa => Int);
  has Latency => (is => 'ro', isa => Int);
  has Log => (is => 'ro', isa => Str);
  has Policy => (is => 'ro', isa => Str);
  has PrincipalId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Authorization' => 'authorization',
                       'Claims' => 'claims',
                       'ClientStatus' => 'clientStatus',
                       'PrincipalId' => 'principalId',
                       'Latency' => 'latency',
                       'Log' => 'log',
                       'Policy' => 'policy'
                     },
  'types' => {
               'Claims' => {
                             'class' => 'Paws::ApiGateway::MapOfStringToString',
                             'type' => 'ApiGateway_MapOfStringToString'
                           },
               'Latency' => {
                              'type' => 'Int'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ClientStatus' => {
                                   'type' => 'Int'
                                 },
               'Authorization' => {
                                    'class' => 'Paws::ApiGateway::MapOfStringToList',
                                    'type' => 'ApiGateway_MapOfStringToList'
                                  },
               'Policy' => {
                             'type' => 'Str'
                           },
               'Log' => {
                          'type' => 'Str'
                        },
               'PrincipalId' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::TestInvokeAuthorizerResponse

=head1 ATTRIBUTES


=head2 Authorization => ApiGateway_MapOfStringToList




=head2 Claims => ApiGateway_MapOfStringToString

The open identity claims
(https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims),
with any supported custom attributes, returned from the Cognito Your
User Pool configured for the API.


=head2 ClientStatus => Int

The HTTP status code that the client would have received. Value is 0 if
the authorizer succeeded.


=head2 Latency => Int

The execution latency of the test authorizer request.


=head2 Log => Str

The API Gateway execution log for the test authorizer request.


=head2 Policy => Str

The JSON policy document returned by the Authorizer


=head2 PrincipalId => Str

The principal identity returned by the Authorizer


=head2 _request_id => Str


=cut

