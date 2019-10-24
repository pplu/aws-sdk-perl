
package Paws::IoT::DescribeDefaultAuthorizerResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_AuthorizerDescription/;
  has AuthorizerDescription => (is => 'ro', isa => IoT_AuthorizerDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AuthorizerDescription' => {
                                            'class' => 'Paws::IoT::AuthorizerDescription',
                                            'type' => 'IoT_AuthorizerDescription'
                                          }
             },
  'NameInRequest' => {
                       'AuthorizerDescription' => 'authorizerDescription'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeDefaultAuthorizerResponse

=head1 ATTRIBUTES


=head2 AuthorizerDescription => IoT_AuthorizerDescription

The default authorizer's description.


=head2 _request_id => Str


=cut

