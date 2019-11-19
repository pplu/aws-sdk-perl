
package Paws::IoT::CreateAuthorizerResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has AuthorizerArn => (is => 'ro', isa => Str);
  has AuthorizerName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AuthorizerName' => {
                                     'type' => 'Str'
                                   },
               'AuthorizerArn' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'AuthorizerName' => 'authorizerName',
                       'AuthorizerArn' => 'authorizerArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateAuthorizerResponse

=head1 ATTRIBUTES


=head2 AuthorizerArn => Str

The authorizer ARN.


=head2 AuthorizerName => Str

The authorizer's name.


=head2 _request_id => Str


=cut

