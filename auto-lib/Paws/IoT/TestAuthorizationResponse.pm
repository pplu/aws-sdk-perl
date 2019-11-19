
package Paws::IoT::TestAuthorizationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_AuthResult/;
  has AuthResults => (is => 'ro', isa => ArrayRef[IoT_AuthResult]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AuthResults' => {
                                  'class' => 'Paws::IoT::AuthResult',
                                  'type' => 'ArrayRef[IoT_AuthResult]'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'AuthResults' => 'authResults'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::TestAuthorizationResponse

=head1 ATTRIBUTES


=head2 AuthResults => ArrayRef[IoT_AuthResult]

The authentication results.


=head2 _request_id => Str


=cut

