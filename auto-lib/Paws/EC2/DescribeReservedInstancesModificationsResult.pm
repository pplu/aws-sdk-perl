
package Paws::EC2::DescribeReservedInstancesModificationsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ReservedInstancesModification/;
  has NextToken => (is => 'ro', isa => Str);
  has ReservedInstancesModifications => (is => 'ro', isa => ArrayRef[EC2_ReservedInstancesModification]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ReservedInstancesModifications' => {
                                                     'class' => 'Paws::EC2::ReservedInstancesModification',
                                                     'type' => 'ArrayRef[EC2_ReservedInstancesModification]'
                                                   }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ReservedInstancesModifications' => 'reservedInstancesModificationsSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeReservedInstancesModificationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 ReservedInstancesModifications => ArrayRef[EC2_ReservedInstancesModification]

The Reserved Instance modification information.


=head2 _request_id => Str


=cut

