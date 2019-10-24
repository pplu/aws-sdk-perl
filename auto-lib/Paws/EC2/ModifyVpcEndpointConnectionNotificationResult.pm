
package Paws::EC2::ModifyVpcEndpointConnectionNotificationResult;
  use Moo;

  use Types::Standard qw/Str Bool/;
  use Paws::EC2::Types qw//;
  has ReturnValue => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReturnValue' => {
                                  'type' => 'Bool'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ReturnValue' => 'return'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVpcEndpointConnectionNotificationResult

=head1 ATTRIBUTES


=head2 ReturnValue => Bool

Returns C<true> if the request succeeds; otherwise, it returns an
error.


=head2 _request_id => Str


=cut

