
package Paws::RDSData::ExecuteStatement;
  use Moose;
  has ContinueAfterTimeout => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'continueAfterTimeout');
  has Database => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'database');
  has IncludeResultMetadata => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeResultMetadata');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::RDSData::SqlParameter]', traits => ['NameInRequest'], request_name => 'parameters');
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn', required => 1);
  has ResultSetOptions => (is => 'ro', isa => 'Paws::RDSData::ResultSetOptions', traits => ['NameInRequest'], request_name => 'resultSetOptions');
  has Schema => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'schema');
  has SecretArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'secretArn', required => 1);
  has Sql => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sql', required => 1);
  has TransactionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'transactionId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecuteStatement');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/Execute');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDSData::ExecuteStatementResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::ExecuteStatement - Arguments for method ExecuteStatement on L<Paws::RDSData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExecuteStatement on the
L<AWS RDS DataService|Paws::RDSData> service. Use the attributes of this class
as arguments to method ExecuteStatement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExecuteStatement.

=head1 SYNOPSIS

    my $rds-data = Paws->service('RDSData');
    my $ExecuteStatementResponse = $rds -data->ExecuteStatement(
      ResourceArn           => 'MyArn',
      SecretArn             => 'MyArn',
      Sql                   => 'MySqlStatement',
      ContinueAfterTimeout  => 1,                  # OPTIONAL
      Database              => 'MyDbName',         # OPTIONAL
      IncludeResultMetadata => 1,                  # OPTIONAL
      Parameters            => [
        {
          Name => 'MyParameterName',               # OPTIONAL
          TypeHint => 'DATE', # values: DATE, DECIMAL, TIME, TIMESTAMP; OPTIONAL
          Value    => {
            ArrayValue => {
              ArrayValues   => [ <ArrayValue>, ... ],    # OPTIONAL
              BooleanValues => [ 1,            ... ],    # OPTIONAL
              DoubleValues  => [ 1,            ... ],    # OPTIONAL
              LongValues    => [ 1,            ... ],    # OPTIONAL
              StringValues  => [ 'MyString',   ... ],    # OPTIONAL
            },    # OPTIONAL
            BlobValue    => 'BlobBlob',    # OPTIONAL
            BooleanValue => 1,
            DoubleValue  => 1,
            IsNull       => 1,
            LongValue    => 1,
            StringValue  => 'MyString',
          },    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
      ResultSetOptions => {
        DecimalReturnType =>
          'DOUBLE_OR_LONG',    # values: DOUBLE_OR_LONG, STRING; OPTIONAL
      },    # OPTIONAL
      Schema        => 'MyDbName',    # OPTIONAL
      TransactionId => 'MyId',        # OPTIONAL
    );

    # Results:
    my $ColumnMetadata  = $ExecuteStatementResponse->ColumnMetadata;
    my $GeneratedFields = $ExecuteStatementResponse->GeneratedFields;
    my $NumberOfRecordsUpdated =
      $ExecuteStatementResponse->NumberOfRecordsUpdated;
    my $Records = $ExecuteStatementResponse->Records;

    # Returns a L<Paws::RDSData::ExecuteStatementResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds-data/ExecuteStatement>

=head1 ATTRIBUTES


=head2 ContinueAfterTimeout => Bool

A value that indicates whether to continue running the statement after
the call times out. By default, the statement stops running when the
call times out.

For DDL statements, we recommend continuing to run the statement after
the call times out. When a DDL statement terminates before it is
finished running, it can result in errors and possibly corrupted data
structures.



=head2 Database => Str

The name of the database.



=head2 IncludeResultMetadata => Bool

A value that indicates whether to include metadata in the results.



=head2 Parameters => ArrayRef[L<Paws::RDSData::SqlParameter>]

The parameters for the SQL statement.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.



=head2 ResultSetOptions => L<Paws::RDSData::ResultSetOptions>

Options that control how the result set is returned.



=head2 Schema => Str

The name of the database schema.



=head2 B<REQUIRED> SecretArn => Str

The name or ARN of the secret that enables access to the DB cluster.



=head2 B<REQUIRED> Sql => Str

The SQL statement to run.



=head2 TransactionId => Str

The identifier of a transaction that was started by using the
C<BeginTransaction> operation. Specify the transaction ID of the
transaction that you want to include the SQL statement in.

If the SQL statement is not part of a transaction, don't set this
parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExecuteStatement in L<Paws::RDSData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

