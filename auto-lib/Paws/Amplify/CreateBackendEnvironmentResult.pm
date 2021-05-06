
package Paws::Amplify::CreateBackendEnvironmentResult;
  use Moose;
  has BackendEnvironment => (is => 'ro', isa => 'Paws::Amplify::BackendEnvironment', traits => ['NameInRequest'], request_name => 'backendEnvironment', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::CreateBackendEnvironmentResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackendEnvironment => L<Paws::Amplify::BackendEnvironment>

Backend environment structure for an amplify App.


=head2 _request_id => Str


=cut

