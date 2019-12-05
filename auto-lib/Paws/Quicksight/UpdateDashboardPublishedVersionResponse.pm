
package Paws::Quicksight::UpdateDashboardPublishedVersionResponse;
  use Moose;
  has DashboardArn => (is => 'ro', isa => 'Str');
  has DashboardId => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateDashboardPublishedVersionResponse

=head1 ATTRIBUTES


=head2 DashboardArn => Str

The Amazon Resource Name (ARN) of the dashboard.


=head2 DashboardId => Str

The ID for the dashboard.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

