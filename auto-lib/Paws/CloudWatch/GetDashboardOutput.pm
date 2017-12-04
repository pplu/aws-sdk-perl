
package Paws::CloudWatch::GetDashboardOutput;
  use Moose;
  has DashboardArn => (is => 'ro', isa => 'Str');
  has DashboardBody => (is => 'ro', isa => 'Str');
  has DashboardName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::GetDashboardOutput

=head1 ATTRIBUTES


=head2 DashboardArn => Str

The Amazon Resource Name (ARN) of the dashboard.


=head2 DashboardBody => Str

The detailed information about the dashboard, including what widgets
are included and their location on the dashboard. For more information
about the C<DashboardBody> syntax, see
CloudWatch-Dashboard-Body-Structure.


=head2 DashboardName => Str

The name of the dashboard.


=head2 _request_id => Str


=cut

