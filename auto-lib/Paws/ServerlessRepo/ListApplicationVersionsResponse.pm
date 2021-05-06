
package Paws::ServerlessRepo::ListApplicationVersionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Versions => (is => 'ro', isa => 'ArrayRef[Paws::ServerlessRepo::VersionSummary]', traits => ['NameInRequest'], request_name => 'versions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::ListApplicationVersionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to request the next page of results.


=head2 Versions => ArrayRef[L<Paws::ServerlessRepo::VersionSummary>]

An array of version summaries for the application.


=head2 _request_id => Str


=cut

