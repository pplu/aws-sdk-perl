
package Paws::Amplify::ListBackendEnvironmentsResult;
  use Moose;
  has BackendEnvironments => (is => 'ro', isa => 'ArrayRef[Paws::Amplify::BackendEnvironment]', traits => ['NameInRequest'], request_name => 'backendEnvironments', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::ListBackendEnvironmentsResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackendEnvironments => ArrayRef[L<Paws::Amplify::BackendEnvironment>]

List of backend environments for an Amplify App.


=head2 NextToken => Str

Pagination token. If non-null pagination token is returned in a result,
then pass its value in another request to fetch more entries.


=head2 _request_id => Str


=cut

