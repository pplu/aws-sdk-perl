# Generated from default/object.tt
package Paws::SSM::InventoryAggregator;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::SSM::Types qw/SSM_InventoryAggregator SSM_InventoryGroup/;
  has Aggregators => (is => 'ro', isa => ArrayRef[SSM_InventoryAggregator]);
  has Expression => (is => 'ro', isa => Str);
  has Groups => (is => 'ro', isa => ArrayRef[SSM_InventoryGroup]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Groups' => {
                             'class' => 'Paws::SSM::InventoryGroup',
                             'type' => 'ArrayRef[SSM_InventoryGroup]'
                           },
               'Expression' => {
                                 'type' => 'Str'
                               },
               'Aggregators' => {
                                  'type' => 'ArrayRef[SSM_InventoryAggregator]',
                                  'class' => 'Paws::SSM::InventoryAggregator'
                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::InventoryAggregator

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::InventoryAggregator object:

  $service_obj->Method(Att1 => { Aggregators => $value, ..., Groups => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::InventoryAggregator object:

  $result = $service_obj->Method(...);
  $result->Att1->Aggregators

=head1 DESCRIPTION

Specifies the inventory type and attribute for the aggregation
execution.

=head1 ATTRIBUTES


=head2 Aggregators => ArrayRef[SSM_InventoryAggregator]

  Nested aggregators to further refine aggregation for an inventory type.


=head2 Expression => Str

  The inventory type and attribute name for aggregation.


=head2 Groups => ArrayRef[SSM_InventoryGroup]

  A user-defined set of one or more filters on which to aggregate
inventory data. Groups return a count of resources that match and don't
match the specified criteria.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

