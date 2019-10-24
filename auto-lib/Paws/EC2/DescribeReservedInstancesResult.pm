
package Paws::EC2::DescribeReservedInstancesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ReservedInstances/;
  has ReservedInstances => (is => 'ro', isa => ArrayRef[EC2_ReservedInstances]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ReservedInstances' => {
                                        'class' => 'Paws::EC2::ReservedInstances',
                                        'type' => 'ArrayRef[EC2_ReservedInstances]'
                                      }
             },
  'NameInRequest' => {
                       'ReservedInstances' => 'reservedInstancesSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeReservedInstancesResult

=head1 ATTRIBUTES


=head2 ReservedInstances => ArrayRef[EC2_ReservedInstances]

A list of Reserved Instances.


=head2 _request_id => Str


=cut

