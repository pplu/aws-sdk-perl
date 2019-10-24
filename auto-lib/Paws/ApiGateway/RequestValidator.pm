
package Paws::ApiGateway::RequestValidator;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::ApiGateway::Types qw//;
  has Id => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has ValidateRequestBody => (is => 'ro', isa => Bool);
  has ValidateRequestParameters => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ValidateRequestParameters' => {
                                                'type' => 'Bool'
                                              },
               'ValidateRequestBody' => {
                                          'type' => 'Bool'
                                        },
               'Id' => {
                         'type' => 'Str'
                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'ValidateRequestParameters' => 'validateRequestParameters',
                       'ValidateRequestBody' => 'validateRequestBody',
                       'Id' => 'id',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::RequestValidator

=head1 ATTRIBUTES


=head2 Id => Str

The identifier of this RequestValidator.


=head2 Name => Str

The name of this RequestValidator


=head2 ValidateRequestBody => Bool

A Boolean flag to indicate whether to validate a request body according
to the configured Model schema.


=head2 ValidateRequestParameters => Bool

A Boolean flag to indicate whether to validate request parameters
(C<true>) or not (C<false>).


=head2 _request_id => Str


=cut

