
package Paws::IoTSiteWise::ListProjects;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has PortalId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'portalId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProjects');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::ListProjectsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListProjects - Arguments for method ListProjects on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProjects on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method ListProjects.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProjects.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $ListProjectsResponse = $iotsitewise->ListProjects(
      PortalId   => 'MyID',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListProjectsResponse->NextToken;
    my $ProjectSummaries = $ListProjectsResponse->ProjectSummaries;

    # Returns a L<Paws::IoTSiteWise::ListProjectsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/ListProjects>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to be returned per paginated request.

Default: 50



=head2 NextToken => Str

The token to be used for the next set of paginated results.



=head2 B<REQUIRED> PortalId => Str

The ID of the portal.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProjects in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

