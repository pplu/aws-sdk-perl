
package Paws::LexModelsV2::UpdateBotAlias;
  use Moose;
  has BotAliasId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botAliasId', required => 1);
  has BotAliasLocaleSettings => (is => 'ro', isa => 'Paws::LexModelsV2::BotAliasLocaleSettingsMap', traits => ['NameInRequest'], request_name => 'botAliasLocaleSettings');
  has BotAliasName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botAliasName', required => 1);
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has ConversationLogSettings => (is => 'ro', isa => 'Paws::LexModelsV2::ConversationLogSettings', traits => ['NameInRequest'], request_name => 'conversationLogSettings');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has SentimentAnalysisSettings => (is => 'ro', isa => 'Paws::LexModelsV2::SentimentAnalysisSettings', traits => ['NameInRequest'], request_name => 'sentimentAnalysisSettings');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBotAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botaliases/{botAliasId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::UpdateBotAliasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::UpdateBotAlias - Arguments for method UpdateBotAlias on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBotAlias on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method UpdateBotAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBotAlias.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $UpdateBotAliasResponse = $models - v2 -lex->UpdateBotAlias(
      BotAliasId             => 'MyBotAliasId',
      BotAliasName           => 'MyName',
      BotId                  => 'MyId',
      BotAliasLocaleSettings => {
        'MyLocaleId' => {
          Enabled               => 1,
          CodeHookSpecification => {
            LambdaCodeHook => {
              CodeHookInterfaceVersion =>
                'MyCodeHookInterfaceVersion',    # min: 1, max: 5
              LambdaARN => 'MyLambdaARN',        # min: 20, max: 2048

            },

          },    # OPTIONAL
        },
      },    # OPTIONAL
      BotVersion              => 'MyBotVersion',    # OPTIONAL
      ConversationLogSettings => {
        AudioLogSettings => [
          {
            Destination => {
              S3Bucket => {
                LogPrefix   => 'MyLogPrefix',     # max: 1024
                S3BucketArn => 'MyS3BucketArn',   # min: 1, max: 2048
                KmsKeyArn   => 'MyKmsKeyArn',     # min: 20, max: 2048; OPTIONAL
              },

            },
            Enabled => 1,

          },
          ...
        ],    # min: 1, max: 1; OPTIONAL
        TextLogSettings => [
          {
            Destination => {
              CloudWatch => {
                CloudWatchLogGroupArn =>
                  'MyCloudWatchLogGroupArn',    # min: 1, max: 2048
                LogPrefix => 'MyLogPrefix',     # max: 1024

              },

            },
            Enabled => 1,

          },
          ...
        ],    # min: 1, max: 1; OPTIONAL
      },    # OPTIONAL
      Description               => 'MyDescription',    # OPTIONAL
      SentimentAnalysisSettings => {
        DetectSentiment => 1,

      },                                               # OPTIONAL
    );

    # Results:
    my $BotAliasId = $UpdateBotAliasResponse->BotAliasId;
    my $BotAliasLocaleSettings =
      $UpdateBotAliasResponse->BotAliasLocaleSettings;
    my $BotAliasName   = $UpdateBotAliasResponse->BotAliasName;
    my $BotAliasStatus = $UpdateBotAliasResponse->BotAliasStatus;
    my $BotId          = $UpdateBotAliasResponse->BotId;
    my $BotVersion     = $UpdateBotAliasResponse->BotVersion;
    my $ConversationLogSettings =
      $UpdateBotAliasResponse->ConversationLogSettings;
    my $CreationDateTime    = $UpdateBotAliasResponse->CreationDateTime;
    my $Description         = $UpdateBotAliasResponse->Description;
    my $LastUpdatedDateTime = $UpdateBotAliasResponse->LastUpdatedDateTime;
    my $SentimentAnalysisSettings =
      $UpdateBotAliasResponse->SentimentAnalysisSettings;

    # Returns a L<Paws::LexModelsV2::UpdateBotAliasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/UpdateBotAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotAliasId => Str

The unique identifier of the bot alias.



=head2 BotAliasLocaleSettings => L<Paws::LexModelsV2::BotAliasLocaleSettingsMap>

The new Lambda functions to use in each locale for the bot alias.



=head2 B<REQUIRED> BotAliasName => Str

The new name to assign to the bot alias.



=head2 B<REQUIRED> BotId => Str

The identifier of the bot with the updated alias.



=head2 BotVersion => Str

The new bot version to assign to the bot alias.



=head2 ConversationLogSettings => L<Paws::LexModelsV2::ConversationLogSettings>

The new settings for storing conversation logs in Amazon CloudWatch
Logs and Amazon S3 buckets.



=head2 Description => Str

The new description to assign to the bot alias.



=head2 SentimentAnalysisSettings => L<Paws::LexModelsV2::SentimentAnalysisSettings>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBotAlias in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

