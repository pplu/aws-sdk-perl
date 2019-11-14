
package Paws::ApplicationInsights::UpdateApplicationResponse;
  use Moose;
  has ApplicationInfo => (is => 'ro', isa => 'Paws::ApplicationInsights::ApplicationInfo');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::UpdateApplicationResponse

=head1 ATTRIBUTES


=head2 ApplicationInfo => L<Paws::ApplicationInsights::ApplicationInfo>

Information about the application.


=head2 _request_id => Str


=cut

1;