
package Paws::EC2::MoveAddressToVpcResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has AllocationId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AllocationId' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'AllocationId' => 'allocationId'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::MoveAddressToVpcResult

=head1 ATTRIBUTES


=head2 AllocationId => Str

The allocation ID for the Elastic IP address.


=head2 Status => Str

The status of the move of the IP address.

Valid values are: C<"MoveInProgress">, C<"InVpc">, C<"InClassic">
=head2 _request_id => Str


=cut

