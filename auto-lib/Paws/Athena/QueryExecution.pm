# Generated from default/object.tt
package Paws::Athena::QueryExecution;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Athena::Types qw/Athena_QueryExecutionStatus Athena_ResultConfiguration Athena_QueryExecutionContext Athena_QueryExecutionStatistics/;
  has Query => (is => 'ro', isa => Str);
  has QueryExecutionContext => (is => 'ro', isa => Athena_QueryExecutionContext);
  has QueryExecutionId => (is => 'ro', isa => Str);
  has ResultConfiguration => (is => 'ro', isa => Athena_ResultConfiguration);
  has StatementType => (is => 'ro', isa => Str);
  has Statistics => (is => 'ro', isa => Athena_QueryExecutionStatistics);
  has Status => (is => 'ro', isa => Athena_QueryExecutionStatus);
  has WorkGroup => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Statistics' => {
                                 'class' => 'Paws::Athena::QueryExecutionStatistics',
                                 'type' => 'Athena_QueryExecutionStatistics'
                               },
               'Status' => {
                             'class' => 'Paws::Athena::QueryExecutionStatus',
                             'type' => 'Athena_QueryExecutionStatus'
                           },
               'StatementType' => {
                                    'type' => 'Str'
                                  },
               'QueryExecutionContext' => {
                                            'class' => 'Paws::Athena::QueryExecutionContext',
                                            'type' => 'Athena_QueryExecutionContext'
                                          },
               'QueryExecutionId' => {
                                       'type' => 'Str'
                                     },
               'WorkGroup' => {
                                'type' => 'Str'
                              },
               'Query' => {
                            'type' => 'Str'
                          },
               'ResultConfiguration' => {
                                          'class' => 'Paws::Athena::ResultConfiguration',
                                          'type' => 'Athena_ResultConfiguration'
                                        }
             }
}
;
    return $Params_map;
  }


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

  $service_obj->Method(Att1 => { Query => $value, ..., WorkGroup => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::QueryExecution object:

  $result = $service_obj->Method(...);
  $result->Att1->Query

=head1 DESCRIPTION

Information about a single instance of a query execution.

=head1 ATTRIBUTES


=head2 Query => Str

  The SQL query statements which the query execution ran.


=head2 QueryExecutionContext => Athena_QueryExecutionContext

  The database in which the query execution occurred.


=head2 QueryExecutionId => Str

  The unique identifier for each query execution.


=head2 ResultConfiguration => Athena_ResultConfiguration

  The location in Amazon S3 where query results were stored and the
encryption option, if any, used for query results. These are known as
"client-side settings". If workgroup settings override client-side
settings, then the query uses the location for the query results and
the encryption configuration that are specified for the workgroup.


=head2 StatementType => Str

  The type of query statement that was run. C<DDL> indicates DDL query
statements. C<DML> indicates DML (Data Manipulation Language) query
statements, such as C<CREATE TABLE AS SELECT>. C<UTILITY> indicates
query statements other than DDL and DML, such as C<SHOW CREATE TABLE>,
or C<DESCRIBE E<lt>tableE<gt>>.


=head2 Statistics => Athena_QueryExecutionStatistics

  The amount of data scanned during the query execution and the amount of
time that it took to execute, and the type of statement that was run.


=head2 Status => Athena_QueryExecutionStatus

  The completion date, current state, submission time, and state change
reason (if applicable) for the query execution.


=head2 WorkGroup => Str

  The name of the workgroup in which the query ran.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

