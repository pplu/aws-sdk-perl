package Paws::Athena::QueryExecution;
  use Moose;
  has Query => (is => 'ro', isa => 'Str');
  has QueryExecutionContext => (is => 'ro', isa => 'Paws::Athena::QueryExecutionContext');
  has QueryExecutionId => (is => 'ro', isa => 'Str');
  has ResultConfiguration => (is => 'ro', isa => 'Paws::Athena::ResultConfiguration');
  has StatementType => (is => 'ro', isa => 'Str');
  has Statistics => (is => 'ro', isa => 'Paws::Athena::QueryExecutionStatistics');
  has Status => (is => 'ro', isa => 'Paws::Athena::QueryExecutionStatus');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::QueryExecution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::QueryExecution object:

  $service_obj->Method(Att1 => { Query => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::QueryExecution object:

  $result = $service_obj->Method(...);
  $result->Att1->Query

=head1 DESCRIPTION

Information about a single instance of a query execution.

=head1 ATTRIBUTES


=head2 Query => Str

  The SQL query statements which the query execution ran.


=head2 QueryExecutionContext => L<Paws::Athena::QueryExecutionContext>

  The database in which the query execution occurred.


=head2 QueryExecutionId => Str

  The unique identifier for each query execution.


=head2 ResultConfiguration => L<Paws::Athena::ResultConfiguration>

  The location in Amazon S3 where query results were stored and the
encryption option, if any, used for query results.


=head2 StatementType => Str

  The type of query statement that was run. C<DDL> indicates DDL query
statements. C<DML> indicates DML (Data Manipulation Language) query
statements, such as C<CREATE TABLE AS SELECT>. C<UTILITY> indicates
query statements other than DDL and DML, such as C<SHOW CREATE TABLE>,
or C<DESCRIBE E<lt>tableE<gt>>.


=head2 Statistics => L<Paws::Athena::QueryExecutionStatistics>

  The amount of data scanned during the query execution and the amount of
time that it took to execute, and the type of statement that was run.


=head2 Status => L<Paws::Athena::QueryExecutionStatus>

  The completion date, current state, submission time, and state change
reason (if applicable) for the query execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

