
package Paws::LexModels::GetBotAliasesResponse;
  use Moose;
  has BotAliases => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::BotAliasMetadata]');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBotAliasesResponse

=head1 ATTRIBUTES


=head2 BotAliases => ArrayRef[L<Paws::LexModels::BotAliasMetadata>]

An array of C<BotAliasMetadata> objects, each describing a bot alias.


=head2 NextToken => Str

A pagination token for fetching next page of aliases. If the response
to this call is truncated, Amazon Lex returns a pagination token in the
response. To fetch the next page of aliases, specify the pagination
token in the next request.


=head2 _request_id => Str


=cut

