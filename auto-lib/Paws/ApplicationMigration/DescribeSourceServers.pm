
package Paws::ApplicationMigration::DescribeSourceServers;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::ApplicationMigration::DescribeSourceServersRequestFilters', traits => ['NameInRequest'], request_name => 'filters', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSourceServers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DescribeSourceServers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::DescribeSourceServersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::DescribeSourceServers - Arguments for method DescribeSourceServers on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSourceServers on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method DescribeSourceServers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSourceServers.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $DescribeSourceServersResponse = $mgn->DescribeSourceServers(
      Filters => {
        IsArchived      => 1,    # OPTIONAL
        SourceServerIDs => [
          'MySourceServerID', ...    # min: 19, max: 19
        ],    # max: 200; OPTIONAL
      },
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $DescribeSourceServersResponse->Items;
    my $NextToken = $DescribeSourceServersResponse->NextToken;

# Returns a L<Paws::ApplicationMigration::DescribeSourceServersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/DescribeSourceServers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Filters => L<Paws::ApplicationMigration::DescribeSourceServersRequestFilters>

Request to filter Source Servers list.



=head2 MaxResults => Int

Request to filter Source Servers list by maximum results.



=head2 NextToken => Str

Request to filter Source Servers list by next token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSourceServers in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

