
package Paws::Prometheus::ListWorkspaces;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'alias');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkspaces');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Prometheus::ListWorkspacesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::ListWorkspaces - Arguments for method ListWorkspaces on L<Paws::Prometheus>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWorkspaces on the
L<Amazon Prometheus Service|Paws::Prometheus> service. Use the attributes of this class
as arguments to method ListWorkspaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWorkspaces.

=head1 SYNOPSIS

    my $aps = Paws->service('Prometheus');
    my $ListWorkspacesResponse = $aps->ListWorkspaces(
      Alias      => 'MyWorkspaceAlias',     # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListWorkspacesResponse->NextToken;
    my $Workspaces = $ListWorkspacesResponse->Workspaces;

    # Returns a L<Paws::Prometheus::ListWorkspacesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aps/ListWorkspaces>

=head1 ATTRIBUTES


=head2 Alias => Str

Optional filter for workspace alias. Only the workspaces with aliases
that begin with this value will be returned.



=head2 MaxResults => Int

Maximum results to return in response (default=100, maximum=1000).



=head2 NextToken => Str

Pagination token to request the next page in a paginated list. This
token is obtained from the output of the previous ListWorkspaces
request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWorkspaces in L<Paws::Prometheus>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

