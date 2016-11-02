
package Paws::DynamoDB::DescribeLimitsOutput;
  use Moose;
  has AccountMaxReadCapacityUnits => (is => 'ro', isa => 'Int');
  has AccountMaxWriteCapacityUnits => (is => 'ro', isa => 'Int');
  has TableMaxReadCapacityUnits => (is => 'ro', isa => 'Int');
  has TableMaxWriteCapacityUnits => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeLimitsOutput

=head1 ATTRIBUTES


=head2 AccountMaxReadCapacityUnits => Int

The maximum total read capacity units that your account allows you to
provision across all of your tables in this region.


=head2 AccountMaxWriteCapacityUnits => Int

The maximum total write capacity units that your account allows you to
provision across all of your tables in this region.


=head2 TableMaxReadCapacityUnits => Int

The maximum read capacity units that your account allows you to
provision for a new table that you are creating in this region,
including the read capacity units provisioned for its global secondary
indexes (GSIs).


=head2 TableMaxWriteCapacityUnits => Int

The maximum write capacity units that your account allows you to
provision for a new table that you are creating in this region,
including the write capacity units provisioned for its global secondary
indexes (GSIs).


=head2 _request_id => Str


=cut

1;