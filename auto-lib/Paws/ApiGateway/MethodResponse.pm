
package Paws::ApiGateway::MethodResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGateway::Types qw/ApiGateway_MapOfStringToBoolean ApiGateway_MapOfStringToString/;
  has ResponseModels => (is => 'ro', isa => ApiGateway_MapOfStringToString);
  has ResponseParameters => (is => 'ro', isa => ApiGateway_MapOfStringToBoolean);
  has StatusCode => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StatusCode' => {
                                 'type' => 'Str'
                               },
               'ResponseModels' => {
                                     'class' => 'Paws::ApiGateway::MapOfStringToString',
                                     'type' => 'ApiGateway_MapOfStringToString'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResponseParameters' => {
                                         'class' => 'Paws::ApiGateway::MapOfStringToBoolean',
                                         'type' => 'ApiGateway_MapOfStringToBoolean'
                                       }
             },
  'NameInRequest' => {
                       'StatusCode' => 'statusCode',
                       'ResponseModels' => 'responseModels',
                       'ResponseParameters' => 'responseParameters'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::MethodResponse

=head1 ATTRIBUTES


=head2 ResponseModels => ApiGateway_MapOfStringToString

Specifies the Model resources used for the response's content-type.
Response models are represented as a key/value map, with a content-type
as the key and a Model name as the value.


=head2 ResponseParameters => ApiGateway_MapOfStringToBoolean

A key-value map specifying required or optional response parameters
that API Gateway can send back to the caller. A key defines a method
response header and the value specifies whether the associated method
response header is required or not. The expression of the key must
match the pattern C<method.response.header.{name}>, where C<name> is a
valid and unique header name. API Gateway passes certain integration
response data to the method response headers specified here according
to the mapping you prescribe in the API's IntegrationResponse. The
integration response data that can be mapped include an integration
response header expressed in C<integration.response.header.{name}>, a
static value enclosed within a pair of single quotes (e.g.,
C<'application/json'>), or a JSON expression from the back-end response
payload in the form of C<integration.response.body.{JSON-expression}>,
where C<JSON-expression> is a valid JSON expression without the C<$>
prefix.)


=head2 StatusCode => Str

The method response's status code.


=head2 _request_id => Str


=cut

