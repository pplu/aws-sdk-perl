
package Paws::LexModelsV2::CreateBotAlias;
  use Moose;
  has BotAliasLocaleSettings => (is => 'ro', isa => 'Paws::LexModelsV2::BotAliasLocaleSettingsMap', traits => ['NameInRequest'], request_name => 'botAliasLocaleSettings');
  has BotAliasName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botAliasName', required => 1);
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has ConversationLogSettings => (is => 'ro', isa => 'Paws::LexModelsV2::ConversationLogSettings', traits => ['NameInRequest'], request_name => 'conversationLogSettings');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has SentimentAnalysisSettings => (is => 'ro', isa => 'Paws::LexModelsV2::SentimentAnalysisSettings', traits => ['NameInRequest'], request_name => 'sentimentAnalysisSettings');
  has Tags => (is => 'ro', isa => 'Paws::LexModelsV2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBotAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botaliases/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::CreateBotAliasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateBotAlias - Arguments for method CreateBotAlias on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBotAlias on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method CreateBotAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBotAlias.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $CreateBotAliasResponse = $models - v2 -lex->CreateBotAlias(
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
      BotVersion              => 'MyNumericalBotVersion',    # OPTIONAL
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
        ],                                        # min: 1, max: 1; OPTIONAL
        TextLogSettings => [
          {
            Destination => {
              CloudWatch => {
                CloudWatchLogGroupArn =>
                  'MyCloudWatchLogGroupArn',      # min: 1, max: 2048
                LogPrefix => 'MyLogPrefix',       # max: 1024

              },

            },
            Enabled => 1,

          },
          ...
        ],                                        # min: 1, max: 1; OPTIONAL
      },    # OPTIONAL
      Description               => 'MyDescription',    # OPTIONAL
      SentimentAnalysisSettings => {
        DetectSentiment => 1,

      },                                               # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $BotAliasId = $CreateBotAliasResponse->BotAliasId;
    my $BotAliasLocaleSettings =
      $CreateBotAliasResponse->BotAliasLocaleSettings;
    my $BotAliasName   = $CreateBotAliasResponse->BotAliasName;
    my $BotAliasStatus = $CreateBotAliasResponse->BotAliasStatus;
    my $BotId          = $CreateBotAliasResponse->BotId;
    my $BotVersion     = $CreateBotAliasResponse->BotVersion;
    my $ConversationLogSettings =
      $CreateBotAliasResponse->ConversationLogSettings;
    my $CreationDateTime = $CreateBotAliasResponse->CreationDateTime;
    my $Description      = $CreateBotAliasResponse->Description;
    my $SentimentAnalysisSettings =
      $CreateBotAliasResponse->SentimentAnalysisSettings;
    my $Tags = $CreateBotAliasResponse->Tags;

    # Returns a L<Paws::LexModelsV2::CreateBotAliasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/CreateBotAlias>

=head1 ATTRIBUTES


=head2 BotAliasLocaleSettings => L<Paws::LexModelsV2::BotAliasLocaleSettingsMap>

Maps configuration information to a specific locale. You can use this
parameter to specify a specific Lambda function to run different
functions in different locales.



=head2 B<REQUIRED> BotAliasName => Str

The alias to create. The name must be unique for the bot.



=head2 B<REQUIRED> BotId => Str

The unique identifier of the bot that the alias applies to.



=head2 BotVersion => Str

The version of the bot that this alias points to. You can use the
operation to change the bot version associated with the alias.



=head2 ConversationLogSettings => L<Paws::LexModelsV2::ConversationLogSettings>

Specifies whether Amazon Lex logs text and audio for a conversation
with the bot. When you enable conversation logs, text logs store text
input, transcripts of audio input, and associated metadata in Amazon
CloudWatch Logs. Audio logs store audio input in Amazon S3.



=head2 Description => Str

A description of the alias. Use this description to help identify the
alias.



=head2 SentimentAnalysisSettings => L<Paws::LexModelsV2::SentimentAnalysisSettings>





=head2 Tags => L<Paws::LexModelsV2::TagMap>

A list of tags to add to the bot alias. You can only add tags when you
create an alias, you can't use the C<UpdateBotAlias> operation to
update the tags on a bot alias. To update tags, use the C<TagResource>
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBotAlias in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

