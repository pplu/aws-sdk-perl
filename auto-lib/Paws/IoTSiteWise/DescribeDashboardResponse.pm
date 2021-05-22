
package Paws::IoTSiteWise::DescribeDashboardResponse;
  use Moose;
  has DashboardArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dashboardArn', required => 1);
  has DashboardCreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dashboardCreationDate', required => 1);
  has DashboardDefinition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dashboardDefinition', required => 1);
  has DashboardDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dashboardDescription');
  has DashboardId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dashboardId', required => 1);
  has DashboardLastUpdateDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dashboardLastUpdateDate', required => 1);
  has DashboardName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dashboardName', required => 1);
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeDashboardResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DashboardArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the dashboard, which has the following format.

C<arn:${Partition}:iotsitewise:${Region}:${Account}:dashboard/${DashboardId}>


=head2 B<REQUIRED> DashboardCreationDate => Str

The date the dashboard was created, in Unix epoch time.


=head2 B<REQUIRED> DashboardDefinition => Str

The dashboard's definition JSON literal. For detailed information, see
Creating dashboards (CLI)
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html)
in the I<AWS IoT SiteWise User Guide>.


=head2 DashboardDescription => Str

The dashboard's description.


=head2 B<REQUIRED> DashboardId => Str

The ID of the dashboard.


=head2 B<REQUIRED> DashboardLastUpdateDate => Str

The date the dashboard was last updated, in Unix epoch time.


=head2 B<REQUIRED> DashboardName => Str

The name of the dashboard.


=head2 B<REQUIRED> ProjectId => Str

The ID of the project that the dashboard is in.


=head2 _request_id => Str


=cut

