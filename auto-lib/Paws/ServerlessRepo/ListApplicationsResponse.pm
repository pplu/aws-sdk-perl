
package Paws::ServerlessRepo::ListApplicationsResponse;
  use Moose;
  has Applications => (is => 'ro', isa => 'ArrayRef[Paws::ServerlessRepo::ApplicationSummary]', traits => ['NameInRequest'], request_name => 'applications');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::ListApplicationsResponse

=head1 ATTRIBUTES


=head2 Applications => ArrayRef[L<Paws::ServerlessRepo::ApplicationSummary>]

An array of application summaries.


=head2 NextToken => Str

The token to request the next page of results.


=head2 _request_id => Str


=cut

