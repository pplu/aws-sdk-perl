
package Paws::OpsWorks::DescribeAppsResult;
  use Moose;
  has Apps => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::App]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeAppsResult

=head1 ATTRIBUTES


=head2 Apps => ArrayRef[L<Paws::OpsWorks::App>]

An array of C<App> objects that describe the specified apps.


=head2 _request_id => Str


=cut

1;