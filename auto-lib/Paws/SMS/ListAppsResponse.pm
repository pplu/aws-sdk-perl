
package Paws::SMS::ListAppsResponse;
  use Moose;
  has Apps => (is => 'ro', isa => 'ArrayRef[Paws::SMS::AppSummary]', traits => ['NameInRequest'], request_name => 'apps' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SMS::ListAppsResponse

=head1 ATTRIBUTES


=head2 Apps => ArrayRef[L<Paws::SMS::AppSummary>]

A list of application summaries.


=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
null when there are no more results to return.


=head2 _request_id => Str


=cut

1;