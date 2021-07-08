
package Paws::RedshiftData::ListTables;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ConnectedDatabase => (is => 'ro', isa => 'Str');
  has Database => (is => 'ro', isa => 'Str', required => 1);
  has DbUser => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SchemaPattern => (is => 'ro', isa => 'Str');
  has SecretArn => (is => 'ro', isa => 'Str');
  has TablePattern => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTables');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftData::ListTablesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftData::ListTables - Arguments for method ListTables on L<Paws::RedshiftData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTables on the
L<Redshift Data API Service|Paws::RedshiftData> service. Use the attributes of this class
as arguments to method ListTables.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTables.

=head1 SYNOPSIS

    my $redshift-data = Paws->service('RedshiftData');
    my $ListTablesResponse = $redshift -data->ListTables(
      ClusterIdentifier => 'MyLocation',
      Database          => 'MyString',
      ConnectedDatabase => 'MyString',       # OPTIONAL
      DbUser            => 'MyString',       # OPTIONAL
      MaxResults        => 1,                # OPTIONAL
      NextToken         => 'MyString',       # OPTIONAL
      SchemaPattern     => 'MyString',       # OPTIONAL
      SecretArn         => 'MySecretArn',    # OPTIONAL
      TablePattern      => 'MyString',       # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTablesResponse->NextToken;
    my $Tables    = $ListTablesResponse->Tables;

    # Returns a L<Paws::RedshiftData::ListTablesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-data/ListTables>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterIdentifier => Str

The cluster identifier. This parameter is required when authenticating
using either AWS Secrets Manager or temporary credentials.



=head2 ConnectedDatabase => Str

A database name. The connected database is specified when you connect
with your authentication credentials.



=head2 B<REQUIRED> Database => Str

The name of the database that contains the tables to list. If
C<ConnectedDatabase> is not specified, this is also the database to
connect to with your authentication credentials.



=head2 DbUser => Str

The database user name. This parameter is required when authenticating
using temporary credentials.



=head2 MaxResults => Int

The maximum number of tables to return in the response. If more tables
exist than fit in one response, then C<NextToken> is returned to page
through the results.



=head2 NextToken => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
NextToken value in the next NextToken parameter and retrying the
command. If the NextToken field is empty, all response records have
been retrieved for the request.



=head2 SchemaPattern => Str

A pattern to filter results by schema name. Within a schema pattern,
"%" means match any substring of 0 or more characters and "_" means
match any one character. Only schema name entries matching the search
pattern are returned. If C<SchemaPattern> is not specified, then all
tables that match C<TablePattern> are returned. If neither
C<SchemaPattern> or C<TablePattern> are specified, then all tables are
returned.



=head2 SecretArn => Str

The name or ARN of the secret that enables access to the database. This
parameter is required when authenticating using AWS Secrets Manager.



=head2 TablePattern => Str

A pattern to filter results by table name. Within a table pattern, "%"
means match any substring of 0 or more characters and "_" means match
any one character. Only table name entries matching the search pattern
are returned. If C<TablePattern> is not specified, then all tables that
match C<SchemaPattern>are returned. If neither C<SchemaPattern> or
C<TablePattern> are specified, then all tables are returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTables in L<Paws::RedshiftData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

