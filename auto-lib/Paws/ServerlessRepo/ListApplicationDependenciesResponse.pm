
package Paws::ServerlessRepo::ListApplicationDependenciesResponse;
  use Moose;
  has Dependencies => (is => 'ro', isa => 'ArrayRef[Paws::ServerlessRepo::ApplicationDependencySummary]', traits => ['NameInRequest'], request_name => 'dependencies');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::ListApplicationDependenciesResponse

=head1 ATTRIBUTES


=head2 Dependencies => ArrayRef[L<Paws::ServerlessRepo::ApplicationDependencySummary>]

An array of application summaries nested in the application.


=head2 NextToken => Str

The token to request the next page of results.


=head2 _request_id => Str


=cut

