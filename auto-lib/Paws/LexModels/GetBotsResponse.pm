
package Paws::LexModels::GetBotsResponse;
  use Moose;
  has Bots => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::BotMetadata]', traits => ['NameInRequest'], request_name => 'bots');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBotsResponse

=head1 ATTRIBUTES


=head2 Bots => ArrayRef[L<Paws::LexModels::BotMetadata>]

An array of C<botMetadata> objects, with one entry for each bot.


=head2 NextToken => Str

If the response is truncated, it includes a pagination token that you
can specify in your next request to fetch the next page of bots.


=head2 _request_id => Str


=cut

