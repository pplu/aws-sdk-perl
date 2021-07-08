
package Paws::IoTSiteWise::ListDashboards;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'projectId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDashboards');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dashboards');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::ListDashboardsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListDashboards - Arguments for method ListDashboards on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDashboards on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method ListDashboards.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDashboards.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $ListDashboardsResponse = $iotsitewise->ListDashboards(
      ProjectId  => 'MyID',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $DashboardSummaries = $ListDashboardsResponse->DashboardSummaries;
    my $NextToken          = $ListDashboardsResponse->NextToken;

    # Returns a L<Paws::IoTSiteWise::ListDashboardsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/ListDashboards>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to be returned per paginated request.

Default: 50



=head2 NextToken => Str

The token to be used for the next set of paginated results.



=head2 B<REQUIRED> ProjectId => Str

The ID of the project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDashboards in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

