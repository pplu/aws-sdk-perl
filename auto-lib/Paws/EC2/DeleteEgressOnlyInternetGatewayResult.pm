
package Paws::EC2::DeleteEgressOnlyInternetGatewayResult;
  use Moo;

  use Types::Standard qw/Str Bool/;
  use Paws::EC2::Types qw//;
  has ReturnCode => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ReturnCode' => 'returnCode'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ReturnCode' => {
                                 'type' => 'Bool'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteEgressOnlyInternetGatewayResult

=head1 ATTRIBUTES


=head2 ReturnCode => Bool

Returns C<true> if the request succeeds; otherwise, it returns an
error.


=head2 _request_id => Str


=cut

