
package Paws::AmplifyBackend::GetBackendAPIModelsResponse;
  use Moose;
  has Models => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'models');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::GetBackendAPIModelsResponse

=head1 ATTRIBUTES


=head2 Models => Str

Stringified JSON of the datastore model.


=head2 Status => Str

The current status of the request.

Valid values are: C<"LATEST">, C<"STALE">
=head2 _request_id => Str


=cut

