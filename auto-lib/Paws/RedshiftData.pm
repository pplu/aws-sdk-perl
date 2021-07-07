package Paws::RedshiftData;
  use Moose;
  sub service { 'redshift-data' }
  sub signing_name { 'redshift-data' }
  sub version { '2019-12-20' }
  sub target_prefix { 'RedshiftData' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CancelStatement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftData::CancelStatement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStatement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftData::DescribeStatement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftData::DescribeTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExecuteStatement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftData::ExecuteStatement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStatementResult {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftData::GetStatementResult', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatabases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftData::ListDatabases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSchemas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftData::ListSchemas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStatements {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftData::ListStatements', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RedshiftData::ListTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllTable {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTable(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTable(@_, NextToken => $next_result->NextToken);
        push @{ $result->ColumnList }, @{ $next_result->ColumnList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ColumnList') foreach (@{ $result->ColumnList });
        $result = $self->DescribeTable(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ColumnList') foreach (@{ $result->ColumnList });
    }

    return undef
  }
  sub GetAllStatementResult {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetStatementResult(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetStatementResult(@_, NextToken => $next_result->NextToken);
        push @{ $result->Records }, @{ $next_result->Records };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Records') foreach (@{ $result->Records });
        $result = $self->GetStatementResult(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Records') foreach (@{ $result->Records });
    }

    return undef
  }
  sub ListAllDatabases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatabases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDatabases(@_, NextToken => $next_result->NextToken);
        push @{ $result->Databases }, @{ $next_result->Databases };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Databases') foreach (@{ $result->Databases });
        $result = $self->ListDatabases(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Databases') foreach (@{ $result->Databases });
    }

    return undef
  }
  sub ListAllSchemas {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSchemas(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSchemas(@_, NextToken => $next_result->NextToken);
        push @{ $result->Schemas }, @{ $next_result->Schemas };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Schemas') foreach (@{ $result->Schemas });
        $result = $self->ListSchemas(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Schemas') foreach (@{ $result->Schemas });
    }

    return undef
  }
  sub ListAllStatements {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStatements(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListStatements(@_, NextToken => $next_result->NextToken);
        push @{ $result->Statements }, @{ $next_result->Statements };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Statements') foreach (@{ $result->Statements });
        $result = $self->ListStatements(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Statements') foreach (@{ $result->Statements });
    }

    return undef
  }
  sub ListAllTables {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTables(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTables(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tables }, @{ $next_result->Tables };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tables') foreach (@{ $result->Tables });
        $result = $self->ListTables(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tables') foreach (@{ $result->Tables });
    }

    return undef
  }


  sub operations { qw/CancelStatement DescribeStatement DescribeTable ExecuteStatement GetStatementResult ListDatabases ListSchemas ListStatements ListTables / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftData - Perl Interface to AWS Redshift Data API Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('RedshiftData');
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

You can use the Amazon Redshift Data API to run queries on Amazon
Redshift tables. You can run individual SQL statements, which are
committed if the statement succeeds.

For more information about the Amazon Redshift Data API, see Using the
Amazon Redshift Data API
(https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
I<Amazon Redshift Cluster Management Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20>


=head1 METHODS

=head2 CancelStatement

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::RedshiftData::CancelStatement>

Returns: a L<Paws::RedshiftData::CancelStatementResponse> instance

Cancels a running query. To be canceled, a query must be running.


=head2 DescribeStatement

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::RedshiftData::DescribeStatement>

Returns: a L<Paws::RedshiftData::DescribeStatementResponse> instance

Describes the details about a specific instance when a query was run by
the Amazon Redshift Data API. The information includes when the query
started, when it finished, the query status, the number of rows
returned, and the SQL statement.


=head2 DescribeTable

=over

=item ClusterIdentifier => Str

=item Database => Str

=item [ConnectedDatabase => Str]

=item [DbUser => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Schema => Str]

=item [SecretArn => Str]

=item [Table => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftData::DescribeTable>

Returns: a L<Paws::RedshiftData::DescribeTableResponse> instance

Describes the detailed information about a table from metadata in the
cluster. The information includes its columns. A token is returned to
page through the column list. Depending on the authorization method,
use one of the following combinations of request parameters:

=over

=item *

AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the
secret and the cluster identifier that matches the cluster in the
secret.

=item *

Temporary credentials - specify the cluster identifier, the database
name, and the database user name. Permission to call the
C<redshift:GetClusterCredentials> operation is required to use this
method.

=back



=head2 ExecuteStatement

=over

=item ClusterIdentifier => Str

=item Sql => Str

=item [Database => Str]

=item [DbUser => Str]

=item [Parameters => ArrayRef[L<Paws::RedshiftData::SqlParameter>]]

=item [SecretArn => Str]

=item [StatementName => Str]

=item [WithEvent => Bool]


=back

Each argument is described in detail in: L<Paws::RedshiftData::ExecuteStatement>

Returns: a L<Paws::RedshiftData::ExecuteStatementOutput> instance

Runs an SQL statement, which can be data manipulation language (DML) or
data definition language (DDL). This statement must be a single SQL
statement. Depending on the authorization method, use one of the
following combinations of request parameters:

=over

=item *

AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the
secret and the cluster identifier that matches the cluster in the
secret.

=item *

Temporary credentials - specify the cluster identifier, the database
name, and the database user name. Permission to call the
C<redshift:GetClusterCredentials> operation is required to use this
method.

=back



=head2 GetStatementResult

=over

=item Id => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftData::GetStatementResult>

Returns: a L<Paws::RedshiftData::GetStatementResultResponse> instance

Fetches the temporarily cached result of an SQL statement. A token is
returned to page through the statement results.


=head2 ListDatabases

=over

=item ClusterIdentifier => Str

=item [Database => Str]

=item [DbUser => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SecretArn => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftData::ListDatabases>

Returns: a L<Paws::RedshiftData::ListDatabasesResponse> instance

List the databases in a cluster. A token is returned to page through
the database list. Depending on the authorization method, use one of
the following combinations of request parameters:

=over

=item *

AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the
secret and the cluster identifier that matches the cluster in the
secret.

=item *

Temporary credentials - specify the cluster identifier, the database
name, and the database user name. Permission to call the
C<redshift:GetClusterCredentials> operation is required to use this
method.

=back



=head2 ListSchemas

=over

=item ClusterIdentifier => Str

=item Database => Str

=item [ConnectedDatabase => Str]

=item [DbUser => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SchemaPattern => Str]

=item [SecretArn => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftData::ListSchemas>

Returns: a L<Paws::RedshiftData::ListSchemasResponse> instance

Lists the schemas in a database. A token is returned to page through
the schema list. Depending on the authorization method, use one of the
following combinations of request parameters:

=over

=item *

AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the
secret and the cluster identifier that matches the cluster in the
secret.

=item *

Temporary credentials - specify the cluster identifier, the database
name, and the database user name. Permission to call the
C<redshift:GetClusterCredentials> operation is required to use this
method.

=back



=head2 ListStatements

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RoleLevel => Bool]

=item [StatementName => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftData::ListStatements>

Returns: a L<Paws::RedshiftData::ListStatementsResponse> instance

List of SQL statements. By default, only finished statements are shown.
A token is returned to page through the statement list.


=head2 ListTables

=over

=item ClusterIdentifier => Str

=item Database => Str

=item [ConnectedDatabase => Str]

=item [DbUser => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SchemaPattern => Str]

=item [SecretArn => Str]

=item [TablePattern => Str]


=back

Each argument is described in detail in: L<Paws::RedshiftData::ListTables>

Returns: a L<Paws::RedshiftData::ListTablesResponse> instance

List the tables in a database. If neither C<SchemaPattern> nor
C<TablePattern> are specified, then all tables in the database are
returned. A token is returned to page through the table list. Depending
on the authorization method, use one of the following combinations of
request parameters:

=over

=item *

AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the
secret and the cluster identifier that matches the cluster in the
secret.

=item *

Temporary credentials - specify the cluster identifier, the database
name, and the database user name. Permission to call the
C<redshift:GetClusterCredentials> operation is required to use this
method.

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllTable(sub { },ClusterIdentifier => Str, Database => Str, [ConnectedDatabase => Str, DbUser => Str, MaxResults => Int, NextToken => Str, Schema => Str, SecretArn => Str, Table => Str])

=head2 DescribeAllTable(ClusterIdentifier => Str, Database => Str, [ConnectedDatabase => Str, DbUser => Str, MaxResults => Int, NextToken => Str, Schema => Str, SecretArn => Str, Table => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ColumnList, passing the object as the first parameter, and the string 'ColumnList' as the second parameter 

If not, it will return a a L<Paws::RedshiftData::DescribeTableResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllStatementResult(sub { },Id => Str, [NextToken => Str])

=head2 GetAllStatementResult(Id => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Records, passing the object as the first parameter, and the string 'Records' as the second parameter 

If not, it will return a a L<Paws::RedshiftData::GetStatementResultResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDatabases(sub { },ClusterIdentifier => Str, [Database => Str, DbUser => Str, MaxResults => Int, NextToken => Str, SecretArn => Str])

=head2 ListAllDatabases(ClusterIdentifier => Str, [Database => Str, DbUser => Str, MaxResults => Int, NextToken => Str, SecretArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Databases, passing the object as the first parameter, and the string 'Databases' as the second parameter 

If not, it will return a a L<Paws::RedshiftData::ListDatabasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSchemas(sub { },ClusterIdentifier => Str, Database => Str, [ConnectedDatabase => Str, DbUser => Str, MaxResults => Int, NextToken => Str, SchemaPattern => Str, SecretArn => Str])

=head2 ListAllSchemas(ClusterIdentifier => Str, Database => Str, [ConnectedDatabase => Str, DbUser => Str, MaxResults => Int, NextToken => Str, SchemaPattern => Str, SecretArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Schemas, passing the object as the first parameter, and the string 'Schemas' as the second parameter 

If not, it will return a a L<Paws::RedshiftData::ListSchemasResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStatements(sub { },[MaxResults => Int, NextToken => Str, RoleLevel => Bool, StatementName => Str, Status => Str])

=head2 ListAllStatements([MaxResults => Int, NextToken => Str, RoleLevel => Bool, StatementName => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Statements, passing the object as the first parameter, and the string 'Statements' as the second parameter 

If not, it will return a a L<Paws::RedshiftData::ListStatementsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTables(sub { },ClusterIdentifier => Str, Database => Str, [ConnectedDatabase => Str, DbUser => Str, MaxResults => Int, NextToken => Str, SchemaPattern => Str, SecretArn => Str, TablePattern => Str])

=head2 ListAllTables(ClusterIdentifier => Str, Database => Str, [ConnectedDatabase => Str, DbUser => Str, MaxResults => Int, NextToken => Str, SchemaPattern => Str, SecretArn => Str, TablePattern => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tables, passing the object as the first parameter, and the string 'Tables' as the second parameter 

If not, it will return a a L<Paws::RedshiftData::ListTablesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

