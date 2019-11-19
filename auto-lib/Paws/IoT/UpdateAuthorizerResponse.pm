
package Paws::IoT::UpdateAuthorizerResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has AuthorizerArn => (is => 'ro', isa => Str);
  has AuthorizerName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'AuthorizerName' => 'authorizerName',
                       'AuthorizerArn' => 'authorizerArn'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AuthorizerArn' => {
                                    'type' => 'Str'
                                  },
               'AuthorizerName' => {
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

Paws::IoT::UpdateAuthorizerResponse

=head1 ATTRIBUTES


=head2 AuthorizerArn => Str

The authorizer ARN.


=head2 AuthorizerName => Str

The authorizer name.


=head2 _request_id => Str


=cut

