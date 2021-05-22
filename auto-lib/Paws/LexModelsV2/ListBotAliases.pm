
package Paws::LexModelsV2::ListBotAliases;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBotAliases');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botaliases/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListBotAliasesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListBotAliases - Arguments for method ListBotAliases on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBotAliases on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListBotAliases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBotAliases.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListBotAliasesResponse = $models - v2 -lex->ListBotAliases(
      BotId      => 'MyId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $BotAliasSummaries = $ListBotAliasesResponse->BotAliasSummaries;
    my $BotId             = $ListBotAliasesResponse->BotId;
    my $NextToken         = $ListBotAliasesResponse->NextToken;

    # Returns a L<Paws::LexModelsV2::ListBotAliasesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListBotAliases>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the bot to list aliases for.



=head2 MaxResults => Int

The maximum number of aliases to return in each page of results. If
there are fewer results than the max page size, only the actual number
of results are returned.



=head2 NextToken => Str

If the response from the C<ListBotAliases> operation contains more
results than specified in the C<maxResults> parameter, a token is
returned in the response. Use that token in the C<nextToken> parameter
to return the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBotAliases in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

