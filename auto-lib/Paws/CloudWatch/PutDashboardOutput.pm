
package Paws::CloudWatch::PutDashboardOutput;
  use Moose;
  has DashboardValidationMessages => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::DashboardValidationMessage]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::PutDashboardOutput

=head1 ATTRIBUTES


=head2 DashboardValidationMessages => ArrayRef[L<Paws::CloudWatch::DashboardValidationMessage>]

If the input for C<PutDashboard> was correct and the dashboard was
successfully created or modified, this result is empty.

If this result includes only warning messages, then the input was valid
enough for the dashboard to be created or modified, but some elements
of the dashboard may not render.

If this result includes error messages, the input was not valid and the
operation failed.


=head2 _request_id => Str


=cut

