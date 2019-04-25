
package Paws::Glue::GetConnections;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has Filter => (is => 'ro', isa => 'Paws::Glue::GetConnectionsFilter');
  has HidePassword => (is => 'ro', isa => 'Bool');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConnections');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetConnectionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetConnections - Arguments for method GetConnections on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConnections on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetConnections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConnections.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetConnectionsResponse = $glue->GetConnections(
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
      Filter    => {
        ConnectionType => 'JDBC',          # values: JDBC, SFTP; OPTIONAL
        MatchCriteria  => [
          'MyNameString', ...              # min: 1, max: 255
        ],                                 # max: 10; OPTIONAL
      },    # OPTIONAL
      HidePassword => 1,            # OPTIONAL
      MaxResults   => 1,            # OPTIONAL
      NextToken    => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $ConnectionList = $GetConnectionsResponse->ConnectionList;
    my $NextToken      = $GetConnectionsResponse->NextToken;

    # Returns a L<Paws::Glue::GetConnectionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetConnections>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog in which the connections reside. If none is
supplied, the AWS account ID is used by default.



=head2 Filter => L<Paws::Glue::GetConnectionsFilter>

A filter that controls which connections will be returned.



=head2 HidePassword => Bool

Allow you to retrieve the connection metadata without displaying the
password. For instance, the AWS Glue console uses this flag to retrieve
connections, since the console does not display passwords. Set this
parameter where the caller may not have permission to use the KMS key
to decrypt the password, but does have permission to access the rest of
the connection metadata (that is, the other connection properties).



=head2 MaxResults => Int

The maximum number of connections to return in one response.



=head2 NextToken => Str

A continuation token, if this is a continuation call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConnections in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

