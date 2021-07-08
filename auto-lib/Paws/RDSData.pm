package Paws::RDSData;
  use Moose;
  sub service { 'rds-data' }
  sub signing_name { 'rds-data' }
  sub version { '2018-08-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchExecuteStatement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDSData::BatchExecuteStatement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BeginTransaction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDSData::BeginTransaction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CommitTransaction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDSData::CommitTransaction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExecuteSql {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDSData::ExecuteSql', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExecuteStatement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDSData::ExecuteStatement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RollbackTransaction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDSData::RollbackTransaction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BatchExecuteStatement BeginTransaction CommitTransaction ExecuteSql ExecuteStatement RollbackTransaction / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData - Perl Interface to AWS AWS RDS DataService

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('RDSData');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon RDS Data Service

Amazon RDS provides an HTTP endpoint to run SQL statements on an Amazon
Aurora Serverless DB cluster. To run these statements, you work with
the Data Service API.

For more information about the Data Service API, see Using the Data API
for Aurora Serverless
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html)
in the I<Amazon Aurora User Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01>


=head1 METHODS

=head2 BatchExecuteStatement

=over

=item ResourceArn => Str

=item SecretArn => Str

=item Sql => Str

=item [Database => Str]

=item [ParameterSets => ArrayRef[L<ArrayRef[Paws::RDSData::SqlParameter]>]]

=item [Schema => Str]

=item [TransactionId => Str]


=back

Each argument is described in detail in: L<Paws::RDSData::BatchExecuteStatement>

Returns: a L<Paws::RDSData::BatchExecuteStatementResponse> instance

Runs a batch SQL statement over an array of data.

You can run bulk update and insert operations for multiple records
using a DML statement with different parameter sets. Bulk operations
can provide a significant performance improvement over individual
insert and update operations.

If a call isn't part of a transaction because it doesn't include the
C<transactionID> parameter, changes that result from the call are
committed automatically.


=head2 BeginTransaction

=over

=item ResourceArn => Str

=item SecretArn => Str

=item [Database => Str]

=item [Schema => Str]


=back

Each argument is described in detail in: L<Paws::RDSData::BeginTransaction>

Returns: a L<Paws::RDSData::BeginTransactionResponse> instance

Starts a SQL transaction.

 <important> <p>A transaction can run for a maximum of 24 hours. A transaction is terminated and rolled back automatically after 24 hours.</p> <p>A transaction times out if no calls use its transaction ID in three minutes. If a transaction times out before it's committed, it's rolled back automatically.</p> <p>DDL statements inside a transaction cause an implicit commit. We recommend that you run each DDL statement in a separate <code>ExecuteStatement</code> call with <code>continueAfterTimeout</code> enabled.</p> </important>


=head2 CommitTransaction

=over

=item ResourceArn => Str

=item SecretArn => Str

=item TransactionId => Str


=back

Each argument is described in detail in: L<Paws::RDSData::CommitTransaction>

Returns: a L<Paws::RDSData::CommitTransactionResponse> instance

Ends a SQL transaction started with the C<BeginTransaction> operation
and commits the changes.


=head2 ExecuteSql

=over

=item AwsSecretStoreArn => Str

=item DbClusterOrInstanceArn => Str

=item SqlStatements => Str

=item [Database => Str]

=item [Schema => Str]


=back

Each argument is described in detail in: L<Paws::RDSData::ExecuteSql>

Returns: a L<Paws::RDSData::ExecuteSqlResponse> instance

Runs one or more SQL statements.

This operation is deprecated. Use the C<BatchExecuteStatement> or
C<ExecuteStatement> operation.


=head2 ExecuteStatement

=over

=item ResourceArn => Str

=item SecretArn => Str

=item Sql => Str

=item [ContinueAfterTimeout => Bool]

=item [Database => Str]

=item [IncludeResultMetadata => Bool]

=item [Parameters => ArrayRef[L<Paws::RDSData::SqlParameter>]]

=item [ResultSetOptions => L<Paws::RDSData::ResultSetOptions>]

=item [Schema => Str]

=item [TransactionId => Str]


=back

Each argument is described in detail in: L<Paws::RDSData::ExecuteStatement>

Returns: a L<Paws::RDSData::ExecuteStatementResponse> instance

Runs a SQL statement against a database.

If a call isn't part of a transaction because it doesn't include the
C<transactionID> parameter, changes that result from the call are
committed automatically.

The response size limit is 1 MB. If the call returns more than 1 MB of
response data, the call is terminated.


=head2 RollbackTransaction

=over

=item ResourceArn => Str

=item SecretArn => Str

=item TransactionId => Str


=back

Each argument is described in detail in: L<Paws::RDSData::RollbackTransaction>

Returns: a L<Paws::RDSData::RollbackTransactionResponse> instance

Performs a rollback of a transaction. Rolling back a transaction
cancels its changes.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

