# Generated from json/service_class.tt
package Paws::Athena;
  use Moo;
  use Types::Standard qw/Int HashRef ArrayRef/;
  sub service { 'athena' }
  sub signing_name { 'athena' }
  sub version { '2017-05-18' }
  sub target_prefix { 'AmazonAthena' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => Int, default => 5);
  has retry => (is => 'ro', isa => HashRef, default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => ArrayRef, default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
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
  sub CreateWorkGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::CreateWorkGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNamedQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::DeleteNamedQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::DeleteWorkGroup', @_);
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
  sub GetWorkGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::GetWorkGroup', @_);
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
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ListWorkGroups', @_);
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
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::UpdateWorkGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllQueryResults {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetQueryResults(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetQueryResults(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResultSet->Rows }, @{ $next_result->ResultSet->Rows };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResultSet.Rows') foreach (@{ $result->ResultSet->Rows });
        $result = $self->GetQueryResults(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResultSet.Rows') foreach (@{ $result->ResultSet->Rows });
    }

    return undef
  }
  sub ListAllNamedQueries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNamedQueries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListNamedQueries(@_, NextToken => $next_result->NextToken);
        push @{ $result->NamedQueryIds }, @{ $next_result->NamedQueryIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NamedQueryIds') foreach (@{ $result->NamedQueryIds });
        $result = $self->ListNamedQueries(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NamedQueryIds') foreach (@{ $result->NamedQueryIds });
    }

    return undef
  }
  sub ListAllQueryExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListQueryExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListQueryExecutions(@_, NextToken => $next_result->NextToken);
        push @{ $result->QueryExecutionIds }, @{ $next_result->QueryExecutionIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'QueryExecutionIds') foreach (@{ $result->QueryExecutionIds });
        $result = $self->ListQueryExecutions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'QueryExecutionIds') foreach (@{ $result->QueryExecutionIds });
    }

    return undef
  }


  sub operations { qw/BatchGetNamedQuery BatchGetQueryExecution CreateNamedQuery CreateWorkGroup DeleteNamedQuery DeleteWorkGroup GetNamedQuery GetQueryExecution GetQueryResults GetWorkGroup ListNamedQueries ListQueryExecutions ListTagsForResource ListWorkGroups StartQueryExecution StopQueryExecution TagResource UntagResource UpdateWorkGroup / }

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
information, see What is Amazon Athena
(http://docs.aws.amazon.com/athena/latest/ug/what-is.html) in the
I<Amazon Athena User Guide>.

If you connect to Athena using the JDBC driver, use version 1.1.0 of
the driver or later with the Amazon Athena API. Earlier version drivers
do not support the API. For more information and to download the
driver, see Accessing Amazon Athena with JDBC
(https://docs.aws.amazon.com/athena/latest/ug/connect-with-jdbc.html).

For code samples using the AWS SDK for Java, see Examples and Code
Samples
(https://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in the
I<Amazon Athena User Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18>


=head1 METHODS

=head2 BatchGetNamedQuery

=over

=item NamedQueryIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Athena::BatchGetNamedQuery>

Returns: a L<Paws::Athena::BatchGetNamedQueryOutput> instance

Returns the details of a single named query or a list of up to 50
queries, which you provide as an array of query ID strings. Requires
you to have access to the workgroup in which the queries were saved.
Use ListNamedQueriesInput to get the list of named query IDs in the
specified workgroup. If information could not be retrieved for a
submitted query ID, information about the query ID submitted is listed
under UnprocessedNamedQueryId. Named queries differ from executed
queries. Use BatchGetQueryExecutionInput to get details about each
unique query execution, and ListQueryExecutionsInput to get a list of
query execution IDs.


=head2 BatchGetQueryExecution

=over

=item QueryExecutionIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Athena::BatchGetQueryExecution>

Returns: a L<Paws::Athena::BatchGetQueryExecutionOutput> instance

Returns the details of a single query execution or a list of up to 50
query executions, which you provide as an array of query execution ID
strings. Requires you to have access to the workgroup in which the
queries ran. To get a list of query execution IDs, use
ListQueryExecutionsInput$WorkGroup. Query executions differ from named
(saved) queries. Use BatchGetNamedQueryInput to get details about named
queries.


=head2 CreateNamedQuery

=over

=item Database => Str

=item Name => Str

=item QueryString => Str

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [WorkGroup => Str]


=back

Each argument is described in detail in: L<Paws::Athena::CreateNamedQuery>

Returns: a L<Paws::Athena::CreateNamedQueryOutput> instance

Creates a named query in the specified workgroup. Requires that you
have access to the workgroup.

For code samples using the AWS SDK for Java, see Examples and Code
Samples (http://docs.aws.amazon.com/athena/latest/ug/code-samples.html)
in the I<Amazon Athena User Guide>.


=head2 CreateWorkGroup

=over

=item Name => Str

=item [Configuration => Athena_WorkGroupConfiguration]

=item [Description => Str]

=item [Tags => ArrayRef[Athena_Tag]]


=back

Each argument is described in detail in: L<Paws::Athena::CreateWorkGroup>

Returns: a L<Paws::Athena::CreateWorkGroupOutput> instance

Creates a workgroup with the specified name.


=head2 DeleteNamedQuery

=over

=item NamedQueryId => Str


=back

Each argument is described in detail in: L<Paws::Athena::DeleteNamedQuery>

Returns: a L<Paws::Athena::DeleteNamedQueryOutput> instance

Deletes the named query if you have access to the workgroup in which
the query was saved.

For code samples using the AWS SDK for Java, see Examples and Code
Samples (http://docs.aws.amazon.com/athena/latest/ug/code-samples.html)
in the I<Amazon Athena User Guide>.


=head2 DeleteWorkGroup

=over

=item WorkGroup => Str

=item [RecursiveDeleteOption => Bool]


=back

Each argument is described in detail in: L<Paws::Athena::DeleteWorkGroup>

Returns: a L<Paws::Athena::DeleteWorkGroupOutput> instance

Deletes the workgroup with the specified name. The primary workgroup
cannot be deleted.


=head2 GetNamedQuery

=over

=item NamedQueryId => Str


=back

Each argument is described in detail in: L<Paws::Athena::GetNamedQuery>

Returns: a L<Paws::Athena::GetNamedQueryOutput> instance

Returns information about a single query. Requires that you have access
to the workgroup in which the query was saved.


=head2 GetQueryExecution

=over

=item QueryExecutionId => Str


=back

Each argument is described in detail in: L<Paws::Athena::GetQueryExecution>

Returns: a L<Paws::Athena::GetQueryExecutionOutput> instance

Returns information about a single execution of a query if you have
access to the workgroup in which the query ran. Each time a query
executes, information about the query execution is saved with a unique
ID.


=head2 GetQueryResults

=over

=item QueryExecutionId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Athena::GetQueryResults>

Returns: a L<Paws::Athena::GetQueryResultsOutput> instance

Streams the results of a single query execution specified by
C<QueryExecutionId> from the Athena query results location in Amazon
S3. For more information, see Query Results
(https://docs.aws.amazon.com/athena/latest/ug/querying.html) in the
I<Amazon Athena User Guide>. This request does not execute the query
but returns results. Use StartQueryExecution to run a query.

To stream query results successfully, the IAM principal with permission
to call C<GetQueryResults> also must have permissions to the Amazon S3
C<GetObject> action for the Athena query results location.

IAM principals with permission to the Amazon S3 C<GetObject> action for
the query results location are able to retrieve query results from
Amazon S3 even if permission to the C<GetQueryResults> action is
denied. To restrict user or role access, ensure that Amazon S3
permissions to the Athena query location are denied.


=head2 GetWorkGroup

=over

=item WorkGroup => Str


=back

Each argument is described in detail in: L<Paws::Athena::GetWorkGroup>

Returns: a L<Paws::Athena::GetWorkGroupOutput> instance

Returns information about the workgroup with the specified name.


=head2 ListNamedQueries

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [WorkGroup => Str]


=back

Each argument is described in detail in: L<Paws::Athena::ListNamedQueries>

Returns: a L<Paws::Athena::ListNamedQueriesOutput> instance

Provides a list of available query IDs only for queries saved in the
specified workgroup. Requires that you have access to the workgroup.

For code samples using the AWS SDK for Java, see Examples and Code
Samples (http://docs.aws.amazon.com/athena/latest/ug/code-samples.html)
in the I<Amazon Athena User Guide>.


=head2 ListQueryExecutions

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [WorkGroup => Str]


=back

Each argument is described in detail in: L<Paws::Athena::ListQueryExecutions>

Returns: a L<Paws::Athena::ListQueryExecutionsOutput> instance

Provides a list of available query execution IDs for the queries in the
specified workgroup. Requires you to have access to the workgroup in
which the queries ran.

For code samples using the AWS SDK for Java, see Examples and Code
Samples (http://docs.aws.amazon.com/athena/latest/ug/code-samples.html)
in the I<Amazon Athena User Guide>.


=head2 ListTagsForResource

=over

=item ResourceARN => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Athena::ListTagsForResource>

Returns: a L<Paws::Athena::ListTagsForResourceOutput> instance

Lists the tags associated with this workgroup.


=head2 ListWorkGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Athena::ListWorkGroups>

Returns: a L<Paws::Athena::ListWorkGroupsOutput> instance

Lists available workgroups for the account.


=head2 StartQueryExecution

=over

=item QueryString => Str

=item [ClientRequestToken => Str]

=item [QueryExecutionContext => Athena_QueryExecutionContext]

=item [ResultConfiguration => Athena_ResultConfiguration]

=item [WorkGroup => Str]


=back

Each argument is described in detail in: L<Paws::Athena::StartQueryExecution>

Returns: a L<Paws::Athena::StartQueryExecutionOutput> instance

Runs the SQL query statements contained in the C<Query>. Requires you
to have access to the workgroup in which the query ran.

For code samples using the AWS SDK for Java, see Examples and Code
Samples (http://docs.aws.amazon.com/athena/latest/ug/code-samples.html)
in the I<Amazon Athena User Guide>.


=head2 StopQueryExecution

=over

=item QueryExecutionId => Str


=back

Each argument is described in detail in: L<Paws::Athena::StopQueryExecution>

Returns: a L<Paws::Athena::StopQueryExecutionOutput> instance

Stops a query execution. Requires you to have access to the workgroup
in which the query ran.

For code samples using the AWS SDK for Java, see Examples and Code
Samples (http://docs.aws.amazon.com/athena/latest/ug/code-samples.html)
in the I<Amazon Athena User Guide>.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[Athena_Tag]


=back

Each argument is described in detail in: L<Paws::Athena::TagResource>

Returns: a L<Paws::Athena::TagResourceOutput> instance

Adds one or more tags to the resource, such as a workgroup. A tag is a
label that you assign to an AWS Athena resource (a workgroup). Each tag
consists of a key and an optional value, both of which you define. Tags
enable you to categorize resources (workgroups) in Athena, for example,
by purpose, owner, or environment. Use a consistent set of tag keys to
make it easier to search and filter workgroups in your account. For
best practices, see AWS Tagging Strategies
(https://aws.amazon.com/answers/account-management/aws-tagging-strategies/).
The key length is from 1 (minimum) to 128 (maximum) Unicode characters
in UTF-8. The tag value length is from 0 (minimum) to 256 (maximum)
Unicode characters in UTF-8. You can use letters and numbers
representable in UTF-8, and the following characters: + - = . _ : / @.
Tag keys and values are case-sensitive. Tag keys must be unique per
resource. If you specify more than one, separate them by commas.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Athena::UntagResource>

Returns: a L<Paws::Athena::UntagResourceOutput> instance

Removes one or more tags from the workgroup resource. Takes as an input
a list of TagKey Strings separated by commas, and removes their tags at
the same time.


=head2 UpdateWorkGroup

=over

=item WorkGroup => Str

=item [ConfigurationUpdates => Athena_WorkGroupConfigurationUpdates]

=item [Description => Str]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::Athena::UpdateWorkGroup>

Returns: a L<Paws::Athena::UpdateWorkGroupOutput> instance

Updates the workgroup with the specified name. The workgroup's name
cannot be changed.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllQueryResults(sub { },QueryExecutionId => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllQueryResults(QueryExecutionId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResultSet.Rows, passing the object as the first parameter, and the string 'ResultSet.Rows' as the second parameter 

If not, it will return a a L<Paws::Athena::GetQueryResultsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNamedQueries(sub { },[MaxResults => Int, NextToken => Str, WorkGroup => Str])

=head2 ListAllNamedQueries([MaxResults => Int, NextToken => Str, WorkGroup => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NamedQueryIds, passing the object as the first parameter, and the string 'NamedQueryIds' as the second parameter 

If not, it will return a a L<Paws::Athena::ListNamedQueriesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllQueryExecutions(sub { },[MaxResults => Int, NextToken => Str, WorkGroup => Str])

=head2 ListAllQueryExecutions([MaxResults => Int, NextToken => Str, WorkGroup => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - QueryExecutionIds, passing the object as the first parameter, and the string 'QueryExecutionIds' as the second parameter 

If not, it will return a a L<Paws::Athena::ListQueryExecutionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

