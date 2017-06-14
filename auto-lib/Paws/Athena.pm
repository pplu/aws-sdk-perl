package Paws::Athena;
  use Moose;
  sub service { 'athena' }
  sub version { '2017-05-18' }
  sub target_prefix { 'AmazonAthena' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub BatchGetNamedQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::BatchGetNamedQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetQueryExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::BatchGetQueryExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNamedQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::CreateNamedQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNamedQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::DeleteNamedQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNamedQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::GetNamedQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueryExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::GetQueryExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueryResults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::GetQueryResults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNamedQueries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ListNamedQueries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQueryExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ListQueryExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartQueryExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::StartQueryExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopQueryExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::StopQueryExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BatchGetNamedQuery BatchGetQueryExecution CreateNamedQuery DeleteNamedQuery GetNamedQuery GetQueryExecution GetQueryResults ListNamedQueries ListQueryExecutions StartQueryExecution StopQueryExecution / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena - Perl Interface to AWS Amazon Athena

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Athena');
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

Amazon Athena is an interactive query service that lets you use
standard SQL to analyze data directly in Amazon S3. You can point
Athena at your data in Amazon S3 and run ad-hoc queries and get results
in seconds. Athena is serverless, so there is no infrastructure to set
up or manage. You pay only for the queries you run. Athena scales
automaticallyE<mdash>executing queries in parallelE<mdash>so results
are fast, even with large datasets and complex queries. For more
information, see What is Amazon Athena in the I<Amazon Athena User
Guide>.

For code samples using the AWS SDK for Java, see Examples and Code
Samples in the I<Amazon Athena User Guide>.

=head1 METHODS

=head2 BatchGetNamedQuery(NamedQueryIds => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::Athena::BatchGetNamedQuery>

Returns: a L<Paws::Athena::BatchGetNamedQueryOutput> instance

  Returns the details of a single named query or a list of up to 50
queries, which you provide as an array of query ID strings. Use
ListNamedQueries to get the list of named query IDs. If information
could not be retrieved for a submitted query ID, information about the
query ID submitted is listed under UnprocessedNamedQueryId. Named
queries are different from executed queries. Use BatchGetQueryExecution
to get details about each unique query execution, and
ListQueryExecutions to get a list of query execution IDs.


=head2 BatchGetQueryExecution(QueryExecutionIds => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::Athena::BatchGetQueryExecution>

Returns: a L<Paws::Athena::BatchGetQueryExecutionOutput> instance

  Returns the details of a single query execution or a list of up to 50
query executions, which you provide as an array of query execution ID
strings. To get a list of query execution IDs, use ListQueryExecutions.
Query executions are different from named (saved) queries. Use
BatchGetNamedQuery to get details about named queries.


=head2 CreateNamedQuery(Database => Str, Name => Str, QueryString => Str, [ClientRequestToken => Str, Description => Str])

Each argument is described in detail in: L<Paws::Athena::CreateNamedQuery>

Returns: a L<Paws::Athena::CreateNamedQueryOutput> instance

  Creates a named query.

For code samples using the AWS SDK for Java, see Examples and Code
Samples in the I<Amazon Athena User Guide>.


=head2 DeleteNamedQuery(NamedQueryId => Str)

Each argument is described in detail in: L<Paws::Athena::DeleteNamedQuery>

Returns: a L<Paws::Athena::DeleteNamedQueryOutput> instance

  Deletes a named query.

For code samples using the AWS SDK for Java, see Examples and Code
Samples in the I<Amazon Athena User Guide>.


=head2 GetNamedQuery(NamedQueryId => Str)

Each argument is described in detail in: L<Paws::Athena::GetNamedQuery>

Returns: a L<Paws::Athena::GetNamedQueryOutput> instance

  Returns information about a single query.


=head2 GetQueryExecution(QueryExecutionId => Str)

Each argument is described in detail in: L<Paws::Athena::GetQueryExecution>

Returns: a L<Paws::Athena::GetQueryExecutionOutput> instance

  Returns information about a single execution of a query. Each time a
query executes, information about the query execution is saved with a
unique ID.


=head2 GetQueryResults(QueryExecutionId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Athena::GetQueryResults>

Returns: a L<Paws::Athena::GetQueryResultsOutput> instance

  Returns the results of a single query execution specified by
C<QueryExecutionId>. This request does not execute the query but
returns results. Use StartQueryExecution to run a query.


=head2 ListNamedQueries([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Athena::ListNamedQueries>

Returns: a L<Paws::Athena::ListNamedQueriesOutput> instance

  Provides a list of all available query IDs.

For code samples using the AWS SDK for Java, see Examples and Code
Samples in the I<Amazon Athena User Guide>.


=head2 ListQueryExecutions([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Athena::ListQueryExecutions>

Returns: a L<Paws::Athena::ListQueryExecutionsOutput> instance

  Provides a list of all available query execution IDs.

For code samples using the AWS SDK for Java, see Examples and Code
Samples in the I<Amazon Athena User Guide>.


=head2 StartQueryExecution(QueryString => Str, ResultConfiguration => L<Paws::Athena::ResultConfiguration>, [ClientRequestToken => Str, QueryExecutionContext => L<Paws::Athena::QueryExecutionContext>])

Each argument is described in detail in: L<Paws::Athena::StartQueryExecution>

Returns: a L<Paws::Athena::StartQueryExecutionOutput> instance

  Runs (executes) the SQL query statements contained in the C<Query>
string.

For code samples using the AWS SDK for Java, see Examples and Code
Samples in the I<Amazon Athena User Guide>.


=head2 StopQueryExecution(QueryExecutionId => Str)

Each argument is described in detail in: L<Paws::Athena::StopQueryExecution>

Returns: a L<Paws::Athena::StopQueryExecutionOutput> instance

  Stops a query execution.

For code samples using the AWS SDK for Java, see Examples and Code
Samples in the I<Amazon Athena User Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

