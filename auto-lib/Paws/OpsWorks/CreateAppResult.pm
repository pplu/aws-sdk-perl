
package Paws::OpsWorks::CreateAppResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has AppId => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CreateAppResult

=head1 ATTRIBUTES

=head2 AppId => Str

  

The app ID.











=cut

1;