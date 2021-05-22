
package Paws::IoTSiteWise::CreateDashboardResponse;
  use Moose;
  has DashboardArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dashboardArn', required => 1);
  has DashboardId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dashboardId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::CreateDashboardResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DashboardArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the dashboard, which has the following format.

C<arn:${Partition}:iotsitewise:${Region}:${Account}:dashboard/${DashboardId}>


=head2 B<REQUIRED> DashboardId => Str

The ID of the dashboard.


=head2 _request_id => Str


=cut

