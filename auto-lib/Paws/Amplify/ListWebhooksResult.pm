
package Paws::Amplify::ListWebhooksResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Webhooks => (is => 'ro', isa => 'ArrayRef[Paws::Amplify::Webhook]', traits => ['NameInRequest'], request_name => 'webhooks', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::ListWebhooksResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token. If non-null pagination token is returned in a result,
then pass its value in another request to fetch more entries.


=head2 B<REQUIRED> Webhooks => ArrayRef[L<Paws::Amplify::Webhook>]

List of webhooks.


=head2 _request_id => Str


=cut

