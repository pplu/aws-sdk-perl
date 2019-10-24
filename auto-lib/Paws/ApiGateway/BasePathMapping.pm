
package Paws::ApiGateway::BasePathMapping;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGateway::Types qw//;
  has BasePath => (is => 'ro', isa => Str);
  has RestApiId => (is => 'ro', isa => Str);
  has Stage => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RestApiId' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Stage' => {
                            'type' => 'Str'
                          },
               'BasePath' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'RestApiId' => 'restApiId',
                       'Stage' => 'stage',
                       'BasePath' => 'basePath'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::BasePathMapping

=head1 ATTRIBUTES


=head2 BasePath => Str

The base path name that callers of the API must provide as part of the
URL after the domain name.


=head2 RestApiId => Str

The string identifier of the associated RestApi.


=head2 Stage => Str

The name of the associated stage.


=head2 _request_id => Str


=cut

