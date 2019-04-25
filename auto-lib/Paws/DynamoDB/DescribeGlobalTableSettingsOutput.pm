
package Paws::DynamoDB::DescribeGlobalTableSettingsOutput;
  use Moose;
  has GlobalTableName => (is => 'ro', isa => 'Str');
  has ReplicaSettings => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ReplicaSettingsDescription]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeGlobalTableSettingsOutput

=head1 ATTRIBUTES


=head2 GlobalTableName => Str

The name of the global table.


=head2 ReplicaSettings => ArrayRef[L<Paws::DynamoDB::ReplicaSettingsDescription>]

The region specific settings for the global table.


=head2 _request_id => Str


=cut

1;