
package Paws::ApiGateway::TestInvokeMethodResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::ApiGateway::Types qw/ApiGateway_MapOfStringToList ApiGateway_MapOfStringToString/;
  has Body => (is => 'ro', isa => Str);
  has Headers => (is => 'ro', isa => ApiGateway_MapOfStringToString);
  has Latency => (is => 'ro', isa => Int);
  has Log => (is => 'ro', isa => Str);
  has MultiValueHeaders => (is => 'ro', isa => ApiGateway_MapOfStringToList);
  has Status => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Log' => {
                          'type' => 'Str'
                        },
               'Headers' => {
                              'type' => 'ApiGateway_MapOfStringToString',
                              'class' => 'Paws::ApiGateway::MapOfStringToString'
                            },
               'Body' => {
                           'type' => 'Str'
                         },
               'MultiValueHeaders' => {
                                        'class' => 'Paws::ApiGateway::MapOfStringToList',
                                        'type' => 'ApiGateway_MapOfStringToList'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Int'
                           },
               'Latency' => {
                              'type' => 'Int'
                            }
             },
  'NameInRequest' => {
                       'Body' => 'body',
                       'Headers' => 'headers',
                       'Latency' => 'latency',
                       'Log' => 'log',
                       'MultiValueHeaders' => 'multiValueHeaders',
                       'Status' => 'status'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::TestInvokeMethodResponse

=head1 ATTRIBUTES


=head2 Body => Str

The body of the HTTP response.


=head2 Headers => ApiGateway_MapOfStringToString

The headers of the HTTP response.


=head2 Latency => Int

The execution latency of the test invoke request.


=head2 Log => Str

The API Gateway execution log for the test invoke request.


=head2 MultiValueHeaders => ApiGateway_MapOfStringToList

The headers of the HTTP response as a map from string to list of
values.


=head2 Status => Int

The HTTP status code.


=head2 _request_id => Str


=cut

