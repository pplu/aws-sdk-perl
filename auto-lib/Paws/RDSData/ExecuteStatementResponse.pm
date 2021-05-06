
package Paws::RDSData::ExecuteStatementResponse;
  use Moose;
  has ColumnMetadata => (is => 'ro', isa => 'ArrayRef[Paws::RDSData::ColumnMetadata]', traits => ['NameInRequest'], request_name => 'columnMetadata');
  has GeneratedFields => (is => 'ro', isa => 'ArrayRef[Paws::RDSData::Field]', traits => ['NameInRequest'], request_name => 'generatedFields');
  has NumberOfRecordsUpdated => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numberOfRecordsUpdated');
  has Records => (is => 'ro', isa => 'ArrayRef[ArrayRef[Paws::RDSData::Field]]', traits => ['NameInRequest'], request_name => 'records');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::ExecuteStatementResponse

=head1 ATTRIBUTES


=head2 ColumnMetadata => ArrayRef[L<Paws::RDSData::ColumnMetadata>]

Metadata for the columns included in the results.


=head2 GeneratedFields => ArrayRef[L<Paws::RDSData::Field>]

Values for fields generated during the request.

 <note> <p>The <code>generatedFields</code> data isn't supported by Aurora PostgreSQL. To get the values of generated fields, use the <code>RETURNING</code> clause. For more information, see <a href="https://www.postgresql.org/docs/10/dml-returning.html">Returning Data From Modified Rows</a> in the PostgreSQL documentation.</p> </note>


=head2 NumberOfRecordsUpdated => Int

The number of records updated by the request.


=head2 Records => ArrayRef[L<ArrayRef[Paws::RDSData::Field]>]

The records returned by the SQL statement.


=head2 _request_id => Str


=cut

