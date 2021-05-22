
package Paws::LexModelsV2::DescribeBotAlias;
  use Moose;
  has BotAliasId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botAliasId', required => 1);
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBotAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botaliases/{botAliasId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DescribeBotAliasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeBotAlias - Arguments for method DescribeBotAlias on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBotAlias on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DescribeBotAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBotAlias.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DescribeBotAliasResponse = $models - v2 -lex->DescribeBotAlias(
      BotAliasId => 'MyBotAliasId',
      BotId      => 'MyId',

    );

    # Results:
    my $BotAliasHistoryEvents =
      $DescribeBotAliasResponse->BotAliasHistoryEvents;
    my $BotAliasId = $DescribeBotAliasResponse->BotAliasId;
    my $BotAliasLocaleSettings =
      $DescribeBotAliasResponse->BotAliasLocaleSettings;
    my $BotAliasName   = $DescribeBotAliasResponse->BotAliasName;
    my $BotAliasStatus = $DescribeBotAliasResponse->BotAliasStatus;
    my $BotId          = $DescribeBotAliasResponse->BotId;
    my $BotVersion     = $DescribeBotAliasResponse->BotVersion;
    my $ConversationLogSettings =
      $DescribeBotAliasResponse->ConversationLogSettings;
    my $CreationDateTime    = $DescribeBotAliasResponse->CreationDateTime;
    my $Description         = $DescribeBotAliasResponse->Description;
    my $LastUpdatedDateTime = $DescribeBotAliasResponse->LastUpdatedDateTime;
    my $SentimentAnalysisSettings =
      $DescribeBotAliasResponse->SentimentAnalysisSettings;

    # Returns a L<Paws::LexModelsV2::DescribeBotAliasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DescribeBotAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotAliasId => Str

The identifier of the bot alias to describe.



=head2 B<REQUIRED> BotId => Str

The identifier of the bot associated with the bot alias to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBotAlias in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

