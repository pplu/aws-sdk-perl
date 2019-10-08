
package Paws::EC2::ModifyReservedInstancesResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has ReservedInstancesModificationId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReservedInstancesModificationId' => {
                                                      'type' => 'Str'
                                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ReservedInstancesModificationId' => 'reservedInstancesModificationId'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyReservedInstancesResult

=head1 ATTRIBUTES


=head2 ReservedInstancesModificationId => Str

The ID for the modification.


=head2 _request_id => Str


=cut

