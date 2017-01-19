
package Paws::DynamoDB::ListTablesOutput;
  use Moose;
  has LastEvaluatedTableName => (is => 'ro', isa => 'Str');
  has TableNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ListTablesOutput

=head1 ATTRIBUTES


=head2 LastEvaluatedTableName => Str

The name of the last table in the current page of results. Use this
value as the C<ExclusiveStartTableName> in a new request to obtain the
next page of results, until all the table names are returned.

If you do not receive a C<LastEvaluatedTableName> value in the
response, this means that there are no more table names to be
retrieved.


=head2 TableNames => ArrayRef[Str|Undef]

The names of the tables associated with the current account at the
current endpoint. The maximum size of this array is 100.

If C<LastEvaluatedTableName> also appears in the output, you can use
this value as the C<ExclusiveStartTableName> parameter in a subsequent
C<ListTables> request and obtain the next page of results.


=head2 _request_id => Str


=cut

1;