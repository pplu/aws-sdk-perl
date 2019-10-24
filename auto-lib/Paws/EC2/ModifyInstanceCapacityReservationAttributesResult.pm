
package Paws::EC2::ModifyInstanceCapacityReservationAttributesResult;
  use Moo;

  use Types::Standard qw/Str Bool/;
  use Paws::EC2::Types qw//;
  has Return => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Return' => {
                             'type' => 'Bool'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Return' => 'return'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceCapacityReservationAttributesResult

=head1 ATTRIBUTES


=head2 Return => Bool

Returns C<true> if the request succeeds; otherwise, it returns an
error.


=head2 _request_id => Str


=cut

