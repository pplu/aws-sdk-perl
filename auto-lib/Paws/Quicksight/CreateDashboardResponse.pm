
package Paws::Quicksight::CreateDashboardResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationStatus => (is => 'ro', isa => 'Str');
  has DashboardId => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');
  has VersionArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateDashboardResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the dashboard.


=head2 CreationStatus => Str

The creation status of the dashboard create request.

Valid values are: C<"CREATION_IN_PROGRESS">, C<"CREATION_SUCCESSFUL">, C<"CREATION_FAILED">, C<"UPDATE_IN_PROGRESS">, C<"UPDATE_SUCCESSFUL">, C<"UPDATE_FAILED">
=head2 DashboardId => Str

The ID for the dashboard.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 VersionArn => Str

The ARN of the dashboard, including the version number of the first
version that is created.


=head2 _request_id => Str


=cut

