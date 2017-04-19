
package Paws::LexModels::GetBotVersionsResponse;
  use Moose;
  has Bots => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::BotMetadata]', traits => ['NameInRequest'], request_name => 'bots');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBotVersionsResponse

=head1 ATTRIBUTES


=head2 Bots => ArrayRef[L<Paws::LexModels::BotMetadata>]

An array of C<BotMetadata> objects, one for each numbered version of
the bot plus one for the C<$LATEST> version.


=head2 NextToken => Str

A pagination token for fetching the next page of bot versions. If the
response to this call is truncated, Amazon Lex returns a pagination
token in the response. To fetch the next page of versions, specify the
pagination token in the next request.


=head2 _request_id => Str


=cut

