
package Paws::IoTSiteWise::DescribeDashboard;
  use Moose;
  has DashboardId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dashboardId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDashboard');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dashboards/{dashboardId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::DescribeDashboardResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeDashboard - Arguments for method DescribeDashboard on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDashboard on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DescribeDashboard.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDashboard.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $DescribeDashboardResponse = $iotsitewise->DescribeDashboard(
      DashboardId => 'MyID',

    );

    # Results:
    my $DashboardArn = $DescribeDashboardResponse->DashboardArn;
    my $DashboardCreationDate =
      $DescribeDashboardResponse->DashboardCreationDate;
    my $DashboardDefinition  = $DescribeDashboardResponse->DashboardDefinition;
    my $DashboardDescription = $DescribeDashboardResponse->DashboardDescription;
    my $DashboardId          = $DescribeDashboardResponse->DashboardId;
    my $DashboardLastUpdateDate =
      $DescribeDashboardResponse->DashboardLastUpdateDate;
    my $DashboardName = $DescribeDashboardResponse->DashboardName;
    my $ProjectId     = $DescribeDashboardResponse->ProjectId;

    # Returns a L<Paws::IoTSiteWise::DescribeDashboardResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DescribeDashboard>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DashboardId => Str

The ID of the dashboard.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDashboard in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

