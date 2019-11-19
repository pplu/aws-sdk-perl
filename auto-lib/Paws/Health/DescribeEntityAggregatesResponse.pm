# Generated from json/callresult_class.tt

package Paws::Health::DescribeEntityAggregatesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Health::Types qw/Health_EntityAggregate/;
  has EntityAggregates => (is => 'ro', isa => ArrayRef[Health_EntityAggregate]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'EntityAggregates' => 'entityAggregates'
                     },
  'types' => {
               'EntityAggregates' => {
                                       'class' => 'Paws::Health::EntityAggregate',
                                       'type' => 'ArrayRef[Health_EntityAggregate]'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeEntityAggregatesResponse

=head1 ATTRIBUTES


=head2 EntityAggregates => ArrayRef[Health_EntityAggregate]

The number of entities that are affected by each of the specified
events.


=head2 _request_id => Str


=cut

1;