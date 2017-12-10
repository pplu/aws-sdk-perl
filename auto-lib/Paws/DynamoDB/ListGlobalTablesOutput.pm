
package Paws::DynamoDB::ListGlobalTablesOutput;
  use Moose;
  has GlobalTables => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::GlobalTable]');
  has LastEvaluatedGlobalTableName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ListGlobalTablesOutput

=head1 ATTRIBUTES


=head2 GlobalTables => ArrayRef[L<Paws::DynamoDB::GlobalTable>]

List of global table names.


=head2 LastEvaluatedGlobalTableName => Str

Last evaluated global table name.


=head2 _request_id => Str


=cut

1;