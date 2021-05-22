
package Paws::RedshiftData::ListDatabases;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Database => (is => 'ro', isa => 'Str');
  has DbUser => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SecretArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDatabases');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftData::ListDatabasesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftData::ListDatabases - Arguments for method ListDatabases on L<Paws::RedshiftData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDatabases on the
L<Redshift Data API Service|Paws::RedshiftData> service. Use the attributes of this class
as arguments to method ListDatabases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDatabases.

=head1 SYNOPSIS

    my $redshift-data = Paws->service('RedshiftData');
    my $ListDatabasesResponse = $redshift -data->ListDatabases(
      ClusterIdentifier => 'MyLocation',
      Database          => 'MyString',       # OPTIONAL
      DbUser            => 'MyString',       # OPTIONAL
      MaxResults        => 1,                # OPTIONAL
      NextToken         => 'MyString',       # OPTIONAL
      SecretArn         => 'MySecretArn',    # OPTIONAL
    );

    # Results:
    my $Databases = $ListDatabasesResponse->Databases;
    my $NextToken = $ListDatabasesResponse->NextToken;

    # Returns a L<Paws::RedshiftData::ListDatabasesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-data/ListDatabases>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterIdentifier => Str

The cluster identifier. This parameter is required when authenticating
using either AWS Secrets Manager or temporary credentials.



=head2 Database => Str

The name of the database. This parameter is required when
authenticating using temporary credentials.



=head2 DbUser => Str

The database user name. This parameter is required when authenticating
using temporary credentials.



=head2 MaxResults => Int

The maximum number of databases to return in the response. If more
databases exist than fit in one response, then C<NextToken> is returned
to page through the results.



=head2 NextToken => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
NextToken value in the next NextToken parameter and retrying the
command. If the NextToken field is empty, all response records have
been retrieved for the request.



=head2 SecretArn => Str

The name or ARN of the secret that enables access to the database. This
parameter is required when authenticating using AWS Secrets Manager.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDatabases in L<Paws::RedshiftData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

