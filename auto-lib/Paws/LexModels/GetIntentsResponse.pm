
package Paws::LexModels::GetIntentsResponse;
  use Moose;
  has Intents => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::IntentMetadata]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetIntentsResponse

=head1 ATTRIBUTES


=head2 Intents => ArrayRef[L<Paws::LexModels::IntentMetadata>]

An array of C<Intent> objects. For more information, see .


=head2 NextToken => Str

If the response is truncated, the response includes a pagination token
that you can specify in your next request to fetch the next page of
intents.


=head2 _request_id => Str


=cut

