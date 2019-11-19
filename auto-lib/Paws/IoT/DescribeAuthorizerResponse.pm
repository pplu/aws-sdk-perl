
package Paws::IoT::DescribeAuthorizerResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_AuthorizerDescription/;
  has AuthorizerDescription => (is => 'ro', isa => IoT_AuthorizerDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AuthorizerDescription' => {
                                            'type' => 'IoT_AuthorizerDescription',
                                            'class' => 'Paws::IoT::AuthorizerDescription'
                                          },
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::IoT::DescribeAuthorizerResponse

=head1 ATTRIBUTES


=head2 AuthorizerDescription => IoT_AuthorizerDescription

The authorizer description.


=head2 _request_id => Str


=cut

