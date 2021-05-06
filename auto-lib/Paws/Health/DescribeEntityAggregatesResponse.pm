
package Paws::Health::DescribeEntityAggregatesResponse;
  use Moose;
  has EntityAggregates => (is => 'ro', isa => 'ArrayRef[Paws::Health::EntityAggregate]', traits => ['NameInRequest'], request_name => 'entityAggregates' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeEntityAggregatesResponse

=head1 ATTRIBUTES


=head2 EntityAggregates => ArrayRef[L<Paws::Health::EntityAggregate>]

The number of entities that are affected by each of the specified
events.


=head2 _request_id => Str


=cut

1;