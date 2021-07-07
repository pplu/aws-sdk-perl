
package Paws::AmplifyBackend::RemoveBackendConfigResponse;
  use Moose;
  has Error => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'error');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::RemoveBackendConfigResponse

=head1 ATTRIBUTES


=head2 Error => Str

If the request fails, this error is returned.


=head2 _request_id => Str


=cut

