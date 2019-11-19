
package Paws::RDSData::ExecuteStatement;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::RDSData::Types qw/RDSData_ResultSetOptions RDSData_SqlParameter/;
  has ContinueAfterTimeout => (is => 'ro', isa => Bool, predicate => 1);
  has Database => (is => 'ro', isa => Str, predicate => 1);
  has IncludeResultMetadata => (is => 'ro', isa => Bool, predicate => 1);
  has Parameters => (is => 'ro', isa => ArrayRef[RDSData_SqlParameter], predicate => 1);
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ResultSetOptions => (is => 'ro', isa => RDSData_ResultSetOptions, predicate => 1);
  has Schema => (is => 'ro', isa => Str, predicate => 1);
  has SecretArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Sql => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TransactionId => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ExecuteStatement');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/Execute');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDSData::ExecuteStatementResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Sql' => 1,
                    'ResourceArn' => 1,
                    'SecretArn' => 1
                  },
  'NameInRequest' => {
                       'TransactionId' => 'transactionId',
                       'ResourceArn' => 'resourceArn',
                       'Sql' => 'sql',
                       'IncludeResultMetadata' => 'includeResultMetadata',
                       'ContinueAfterTimeout' => 'continueAfterTimeout',
                       'Database' => 'database',
                       'Parameters' => 'parameters',
                       'SecretArn' => 'secretArn',
                       'ResultSetOptions' => 'resultSetOptions',
                       'Schema' => 'schema'
                     },
  'types' => {
               'Schema' => {
                             'type' => 'Str'
                           },
               'ResultSetOptions' => {
                                       'class' => 'Paws::RDSData::ResultSetOptions',
                                       'type' => 'RDSData_ResultSetOptions'
                                     },
               'SecretArn' => {
                                'type' => 'Str'
                              },
               'ContinueAfterTimeout' => {
                                           'type' => 'Bool'
                                         },
               'Database' => {
                               'type' => 'Str'
                             },
               'Parameters' => {
                                 'class' => 'Paws::RDSData::SqlParameter',
                                 'type' => 'ArrayRef[RDSData_SqlParameter]'
                               },
               'IncludeResultMetadata' => {
                                            'type' => 'Bool'
                                          },
               'Sql' => {
                          'type' => 'Str'
                        },
               'TransactionId' => {
                                    'type' => 'Str'
                                  },
               'ResourceArn' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

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
          Name  => 'MyParameterName',              # OPTIONAL
          Value => {
            ArrayValue => {
              ArrayValues   => [ <ArrayValue>, ... ],    # OPTIONAL
              BooleanValues => [
                1, ...                                   # OPTIONAL
              ],                                         # OPTIONAL
              DoubleValues => [ 1, ... ],                # OPTIONAL
              LongValues   => [
                1, ...                                   # OPTIONAL
              ],                                         # OPTIONAL
              StringValues => [
                'MyString', ...                          # OPTIONAL
              ],                                         # OPTIONAL
            },    # OPTIONAL
            BlobValue    => 'BlobBlob',    # OPTIONAL
            BooleanValue => 1,             # OPTIONAL
            DoubleValue  => 1,
            IsNull       => 1,             # OPTIONAL
            LongValue    => 1,             # OPTIONAL
            StringValue  => 'MyString',    # OPTIONAL
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



=head2 Parameters => ArrayRef[RDSData_SqlParameter]

The parameters for the SQL statement.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.



=head2 ResultSetOptions => RDSData_ResultSetOptions

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

