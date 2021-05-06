
package Paws::OpsWorks::CreateAppResult;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CreateAppResult

=head1 ATTRIBUTES


=head2 AppId => Str

The app ID.


=head2 _request_id => Str


=cut

1;