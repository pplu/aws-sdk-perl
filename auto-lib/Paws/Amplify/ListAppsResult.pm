
package Paws::Amplify::ListAppsResult;
  use Moose;
  has Apps => (is => 'ro', isa => 'ArrayRef[Paws::Amplify::App]', traits => ['NameInRequest'], request_name => 'apps', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::ListAppsResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Apps => ArrayRef[L<Paws::Amplify::App>]

A list of Amplify apps.


=head2 NextToken => Str

A pagination token. Set to null to start listing apps from start. If
non-null, the pagination token is returned in a result. Pass its value
in here to list more projects.


=head2 _request_id => Str


=cut

