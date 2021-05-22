package Paws::LexModelsV2;
  use Moose;
  sub service { 'models-v2-lex' }
  sub signing_name { 'lex' }
  sub version { '2020-08-07' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BuildBotLocale {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::BuildBotLocale', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBotAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateBotAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBotLocale {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateBotLocale', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBotVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateBotVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIntent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateIntent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResourcePolicyStatement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateResourcePolicyStatement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSlot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateSlot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSlotType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateSlotType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUploadUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::CreateUploadUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBotAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteBotAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBotLocale {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteBotLocale', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBotVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteBotVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteImport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIntent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteIntent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicyStatement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteResourcePolicyStatement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSlot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteSlot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSlotType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DeleteSlotType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBotAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeBotAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBotLocale {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeBotLocale', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBotVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeBotVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeImport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIntent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeIntent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSlot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeSlot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSlotType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::DescribeSlotType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBotAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListBotAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBotLocales {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListBotLocales', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListBots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBotVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListBotVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBuiltInIntents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListBuiltInIntents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBuiltInSlotTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListBuiltInSlotTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListExports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListImports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIntents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListIntents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSlots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListSlots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSlotTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListSlotTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartImport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::StartImport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::UpdateBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBotAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::UpdateBotAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBotLocale {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::UpdateBotLocale', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::UpdateExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIntent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::UpdateIntent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::UpdateResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSlot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::UpdateSlot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSlotType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModelsV2::UpdateSlotType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BuildBotLocale CreateBot CreateBotAlias CreateBotLocale CreateBotVersion CreateExport CreateIntent CreateResourcePolicy CreateResourcePolicyStatement CreateSlot CreateSlotType CreateUploadUrl DeleteBot DeleteBotAlias DeleteBotLocale DeleteBotVersion DeleteExport DeleteImport DeleteIntent DeleteResourcePolicy DeleteResourcePolicyStatement DeleteSlot DeleteSlotType DescribeBot DescribeBotAlias DescribeBotLocale DescribeBotVersion DescribeExport DescribeImport DescribeIntent DescribeResourcePolicy DescribeSlot DescribeSlotType ListBotAliases ListBotLocales ListBots ListBotVersions ListBuiltInIntents ListBuiltInSlotTypes ListExports ListImports ListIntents ListSlots ListSlotTypes ListTagsForResource StartImport TagResource UntagResource UpdateBot UpdateBotAlias UpdateBotLocale UpdateExport UpdateIntent UpdateResourcePolicy UpdateSlot UpdateSlotType / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2 - Perl Interface to AWS Amazon Lex Model Building V2

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('LexModelsV2');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION



For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex-2020-08-07>


=head1 METHODS

=head2 BuildBotLocale

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::BuildBotLocale>

Returns: a L<Paws::LexModelsV2::BuildBotLocaleResponse> instance

Builds a bot, its intents, and its slot types into a specific locale. A
bot can be built into multiple locales. At runtime the locale is used
to choose a specific build of the bot.


=head2 CreateBot

=over

=item BotName => Str

=item DataPrivacy => L<Paws::LexModelsV2::DataPrivacy>

=item IdleSessionTTLInSeconds => Int

=item RoleArn => Str

=item [BotTags => L<Paws::LexModelsV2::TagMap>]

=item [Description => Str]

=item [TestBotAliasTags => L<Paws::LexModelsV2::TagMap>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateBot>

Returns: a L<Paws::LexModelsV2::CreateBotResponse> instance

Creates an Amazon Lex conversational bot.


=head2 CreateBotAlias

=over

=item BotAliasName => Str

=item BotId => Str

=item [BotAliasLocaleSettings => L<Paws::LexModelsV2::BotAliasLocaleSettingsMap>]

=item [BotVersion => Str]

=item [ConversationLogSettings => L<Paws::LexModelsV2::ConversationLogSettings>]

=item [Description => Str]

=item [SentimentAnalysisSettings => L<Paws::LexModelsV2::SentimentAnalysisSettings>]

=item [Tags => L<Paws::LexModelsV2::TagMap>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateBotAlias>

Returns: a L<Paws::LexModelsV2::CreateBotAliasResponse> instance

Creates an alias for the specified version of a bot. Use an alias to
enable you to change the version of a bot without updating applications
that use the bot.

For example, you can create an alias called "PROD" that your
applications use to call the Amazon Lex bot.


=head2 CreateBotLocale

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str

=item NluIntentConfidenceThreshold => Num

=item [Description => Str]

=item [VoiceSettings => L<Paws::LexModelsV2::VoiceSettings>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateBotLocale>

Returns: a L<Paws::LexModelsV2::CreateBotLocaleResponse> instance

Creates a locale in the bot. The locale contains the intents and slot
types that the bot uses in conversations with users in the specified
language and locale. You must add a locale to a bot before you can add
intents and slot types to the bot.


=head2 CreateBotVersion

=over

=item BotId => Str

=item BotVersionLocaleSpecification => L<Paws::LexModelsV2::BotVersionLocaleSpecification>

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateBotVersion>

Returns: a L<Paws::LexModelsV2::CreateBotVersionResponse> instance

Creates a new version of the bot based on the C<DRAFT> version. If the
C<DRAFT> version of this resource hasn't changed since you created the
last version, Amazon Lex doesn't create a new version, it returns the
last created version.

When you create the first version of a bot, Amazon Lex sets the version
to 1. Subsequent versions increment by 1.


=head2 CreateExport

=over

=item FileFormat => Str

=item ResourceSpecification => L<Paws::LexModelsV2::ExportResourceSpecification>

=item [FilePassword => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateExport>

Returns: a L<Paws::LexModelsV2::CreateExportResponse> instance

Creates a zip archive containing the contents of a bot or a bot locale.
The archive contains a directory structure that contains JSON files
that define the bot.

You can create an archive that contains the complete definition of a
bot, or you can specify that the archive contain only the definition of
a single bot locale.

For more information about exporting bots, and about the structure of
the export archive, see Importing and exporting bots
(https://docs.aws.amazon.com/lexv2/latest/dg/importing-exporting.html)


=head2 CreateIntent

=over

=item BotId => Str

=item BotVersion => Str

=item IntentName => Str

=item LocaleId => Str

=item [Description => Str]

=item [DialogCodeHook => L<Paws::LexModelsV2::DialogCodeHookSettings>]

=item [FulfillmentCodeHook => L<Paws::LexModelsV2::FulfillmentCodeHookSettings>]

=item [InputContexts => ArrayRef[L<Paws::LexModelsV2::InputContext>]]

=item [IntentClosingSetting => L<Paws::LexModelsV2::IntentClosingSetting>]

=item [IntentConfirmationSetting => L<Paws::LexModelsV2::IntentConfirmationSetting>]

=item [KendraConfiguration => L<Paws::LexModelsV2::KendraConfiguration>]

=item [OutputContexts => ArrayRef[L<Paws::LexModelsV2::OutputContext>]]

=item [ParentIntentSignature => Str]

=item [SampleUtterances => ArrayRef[L<Paws::LexModelsV2::SampleUtterance>]]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateIntent>

Returns: a L<Paws::LexModelsV2::CreateIntentResponse> instance

Creates an intent.

To define the interaction between the user and your bot, you define one
or more intents. For example, for a pizza ordering bot you would create
an C<OrderPizza> intent.

When you create an intent, you must provide a name. You can optionally
provide the following:

=over

=item *

Sample utterances. For example, "I want to order a pizza" and "Can I
order a pizza." You can't provide utterances for built-in intents.

=item *

Information to be gathered. You specify slots for the information that
you bot requests from the user. You can specify standard slot types,
such as date and time, or custom slot types for your application.

=item *

How the intent is fulfilled. You can provide a Lambda function or
configure the intent to return the intent information to your client
application. If you use a Lambda function, Amazon Lex invokes the
function when all of the intent information is available.

=item *

A confirmation prompt to send to the user to confirm an intent. For
example, "Shall I order your pizza?"

=item *

A conclusion statement to send to the user after the intent is
fulfilled. For example, "I ordered your pizza."

=item *

A follow-up prompt that asks the user for additional activity. For
example, "Do you want a drink with your pizza?"

=back



=head2 CreateResourcePolicy

=over

=item Policy => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateResourcePolicy>

Returns: a L<Paws::LexModelsV2::CreateResourcePolicyResponse> instance

Creates a new resource policy with the specified policy statements.


=head2 CreateResourcePolicyStatement

=over

=item Action => ArrayRef[Str|Undef]

=item Effect => Str

=item Principal => ArrayRef[L<Paws::LexModelsV2::Principal>]

=item ResourceArn => Str

=item StatementId => Str

=item [Condition => L<Paws::LexModelsV2::ConditionMap>]

=item [ExpectedRevisionId => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateResourcePolicyStatement>

Returns: a L<Paws::LexModelsV2::CreateResourcePolicyStatementResponse> instance

Adds a new resource policy statement to a bot or bot alias. If a
resource policy exists, the statement is added to the current resource
policy. If a policy doesn't exist, a new policy is created.

You can create a resource policy statement that allows cross-account
access.


=head2 CreateSlot

=over

=item BotId => Str

=item BotVersion => Str

=item IntentId => Str

=item LocaleId => Str

=item SlotName => Str

=item SlotTypeId => Str

=item ValueElicitationSetting => L<Paws::LexModelsV2::SlotValueElicitationSetting>

=item [Description => Str]

=item [ObfuscationSetting => L<Paws::LexModelsV2::ObfuscationSetting>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateSlot>

Returns: a L<Paws::LexModelsV2::CreateSlotResponse> instance

Creates a slot in an intent. A slot is a variable needed to fulfill an
intent. For example, an C<OrderPizza> intent might need slots for size,
crust, and number of pizzas. For each slot, you define one or more
utterances that Amazon Lex uses to elicit a response from the user.


=head2 CreateSlotType

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str

=item SlotTypeName => Str

=item ValueSelectionSetting => L<Paws::LexModelsV2::SlotValueSelectionSetting>

=item [Description => Str]

=item [ParentSlotTypeSignature => Str]

=item [SlotTypeValues => ArrayRef[L<Paws::LexModelsV2::SlotTypeValue>]]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::CreateSlotType>

Returns: a L<Paws::LexModelsV2::CreateSlotTypeResponse> instance

Creates a custom slot type

To create a custom slot type, specify a name for the slot type and a
set of enumeration values, the values that a slot of this type can
assume.


=head2 CreateUploadUrl






Each argument is described in detail in: L<Paws::LexModelsV2::CreateUploadUrl>

Returns: a L<Paws::LexModelsV2::CreateUploadUrlResponse> instance

Gets a pre-signed S3 write URL that you use to upload the zip archive
when importing a bot or a bot locale.


=head2 DeleteBot

=over

=item BotId => Str

=item [SkipResourceInUseCheck => Bool]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteBot>

Returns: a L<Paws::LexModelsV2::DeleteBotResponse> instance

Deletes all versions of a bot, including the C<Draft> version. To
delete a specific version, use the C<DeleteBotVersion> operation.

When you delete a bot, all of the resources contained in the bot are
also deleted. Deleting a bot removes all locales, intents, slot, and
slot types defined for the bot.

If a bot has an alias, the C<DeleteBot> operation returns a
C<ResourceInUseException> exception. If you want to delete the bot and
the alias, set the C<skipResourceInUseCheck> parameter to C<true>.


=head2 DeleteBotAlias

=over

=item BotAliasId => Str

=item BotId => Str

=item [SkipResourceInUseCheck => Bool]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteBotAlias>

Returns: a L<Paws::LexModelsV2::DeleteBotAliasResponse> instance

Deletes the specified bot alias.


=head2 DeleteBotLocale

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteBotLocale>

Returns: a L<Paws::LexModelsV2::DeleteBotLocaleResponse> instance

Removes a locale from a bot.

When you delete a locale, all intents, slots, and slot types defined
for the locale are also deleted.


=head2 DeleteBotVersion

=over

=item BotId => Str

=item BotVersion => Str

=item [SkipResourceInUseCheck => Bool]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteBotVersion>

Returns: a L<Paws::LexModelsV2::DeleteBotVersionResponse> instance

Deletes a specific version of a bot. To delete all version of a bot,
use the DeleteBot operation.


=head2 DeleteExport

=over

=item ExportId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteExport>

Returns: a L<Paws::LexModelsV2::DeleteExportResponse> instance

Removes a previous export and the associated files stored in an S3
bucket.


=head2 DeleteImport

=over

=item ImportId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteImport>

Returns: a L<Paws::LexModelsV2::DeleteImportResponse> instance

Removes a previous import and the associated file stored in an S3
bucket.


=head2 DeleteIntent

=over

=item BotId => Str

=item BotVersion => Str

=item IntentId => Str

=item LocaleId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteIntent>

Returns: nothing

Removes the specified intent.

Deleting an intent also deletes the slots associated with the intent.


=head2 DeleteResourcePolicy

=over

=item ResourceArn => Str

=item [ExpectedRevisionId => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteResourcePolicy>

Returns: a L<Paws::LexModelsV2::DeleteResourcePolicyResponse> instance

Removes an existing policy from a bot or bot alias. If the resource
doesn't have a policy attached, Amazon Lex returns an exception.


=head2 DeleteResourcePolicyStatement

=over

=item ResourceArn => Str

=item StatementId => Str

=item [ExpectedRevisionId => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteResourcePolicyStatement>

Returns: a L<Paws::LexModelsV2::DeleteResourcePolicyStatementResponse> instance

Deletes a policy statement from a resource policy. If you delete the
last statement from a policy, the policy is deleted. If you specify a
statement ID that doesn't exist in the policy, or if the bot or bot
alias doesn't have a policy attached, Amazon Lex returns an exception.


=head2 DeleteSlot

=over

=item BotId => Str

=item BotVersion => Str

=item IntentId => Str

=item LocaleId => Str

=item SlotId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteSlot>

Returns: nothing

Deletes the specified slot from an intent.


=head2 DeleteSlotType

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str

=item SlotTypeId => Str

=item [SkipResourceInUseCheck => Bool]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DeleteSlotType>

Returns: nothing

Deletes a slot type from a bot locale.

If a slot is using the slot type, Amazon Lex throws a
C<ResourceInUseException> exception. To avoid the exception, set the
C<skipResourceInUseCheck> parameter to C<true>.


=head2 DescribeBot

=over

=item BotId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeBot>

Returns: a L<Paws::LexModelsV2::DescribeBotResponse> instance

Provides metadata information about a bot.


=head2 DescribeBotAlias

=over

=item BotAliasId => Str

=item BotId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeBotAlias>

Returns: a L<Paws::LexModelsV2::DescribeBotAliasResponse> instance

Get information about a specific bot alias.


=head2 DescribeBotLocale

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeBotLocale>

Returns: a L<Paws::LexModelsV2::DescribeBotLocaleResponse> instance

Describes the settings that a bot has for a specific locale.


=head2 DescribeBotVersion

=over

=item BotId => Str

=item BotVersion => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeBotVersion>

Returns: a L<Paws::LexModelsV2::DescribeBotVersionResponse> instance

Provides metadata about a version of a bot.


=head2 DescribeExport

=over

=item ExportId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeExport>

Returns: a L<Paws::LexModelsV2::DescribeExportResponse> instance

Gets information about a specific export.


=head2 DescribeImport

=over

=item ImportId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeImport>

Returns: a L<Paws::LexModelsV2::DescribeImportResponse> instance

Gets information about a specific import.


=head2 DescribeIntent

=over

=item BotId => Str

=item BotVersion => Str

=item IntentId => Str

=item LocaleId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeIntent>

Returns: a L<Paws::LexModelsV2::DescribeIntentResponse> instance

Returns metadata about an intent.


=head2 DescribeResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeResourcePolicy>

Returns: a L<Paws::LexModelsV2::DescribeResourcePolicyResponse> instance

Gets the resource policy and policy revision for a bot or bot alias.


=head2 DescribeSlot

=over

=item BotId => Str

=item BotVersion => Str

=item IntentId => Str

=item LocaleId => Str

=item SlotId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeSlot>

Returns: a L<Paws::LexModelsV2::DescribeSlotResponse> instance

Gets metadata information about a slot.


=head2 DescribeSlotType

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str

=item SlotTypeId => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::DescribeSlotType>

Returns: a L<Paws::LexModelsV2::DescribeSlotTypeResponse> instance

Gets metadata information about a slot type.


=head2 ListBotAliases

=over

=item BotId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListBotAliases>

Returns: a L<Paws::LexModelsV2::ListBotAliasesResponse> instance

Gets a list of aliases for the specified bot.


=head2 ListBotLocales

=over

=item BotId => Str

=item BotVersion => Str

=item [Filters => ArrayRef[L<Paws::LexModelsV2::BotLocaleFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::BotLocaleSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListBotLocales>

Returns: a L<Paws::LexModelsV2::ListBotLocalesResponse> instance

Gets a list of locales for the specified bot.


=head2 ListBots

=over

=item [Filters => ArrayRef[L<Paws::LexModelsV2::BotFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::BotSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListBots>

Returns: a L<Paws::LexModelsV2::ListBotsResponse> instance

Gets a list of available bots.


=head2 ListBotVersions

=over

=item BotId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::BotVersionSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListBotVersions>

Returns: a L<Paws::LexModelsV2::ListBotVersionsResponse> instance

Gets information about all of the versions of a bot.

The C<ListBotVersions> operation returns a summary of each version of a
bot. For example, if a bot has three numbered versions, the
C<ListBotVersions> operation returns for summaries, one for each
numbered version and one for the C<DRAFT> version.

The C<ListBotVersions> operation always returns at least one version,
the C<DRAFT> version.


=head2 ListBuiltInIntents

=over

=item LocaleId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::BuiltInIntentSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListBuiltInIntents>

Returns: a L<Paws::LexModelsV2::ListBuiltInIntentsResponse> instance

Gets a list of built-in intents provided by Amazon Lex that you can use
in your bot.

To use a built-in intent as a the base for your own intent, include the
built-in intent signature in the C<parentIntentSignature> parameter
when you call the C<CreateIntent> operation. For more information, see
CreateIntent.


=head2 ListBuiltInSlotTypes

=over

=item LocaleId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::BuiltInSlotTypeSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListBuiltInSlotTypes>

Returns: a L<Paws::LexModelsV2::ListBuiltInSlotTypesResponse> instance

Gets a list of built-in slot types that meet the specified criteria.


=head2 ListExports

=over

=item [BotId => Str]

=item [BotVersion => Str]

=item [Filters => ArrayRef[L<Paws::LexModelsV2::ExportFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::ExportSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListExports>

Returns: a L<Paws::LexModelsV2::ListExportsResponse> instance

Lists the exports for a bot or bot locale. Exports are kept in the list
for 7 days.


=head2 ListImports

=over

=item [BotId => Str]

=item [BotVersion => Str]

=item [Filters => ArrayRef[L<Paws::LexModelsV2::ImportFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::ImportSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListImports>

Returns: a L<Paws::LexModelsV2::ListImportsResponse> instance

Lists the imports for a bot or bot locale. Imports are kept in the list
for 7 days.


=head2 ListIntents

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str

=item [Filters => ArrayRef[L<Paws::LexModelsV2::IntentFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::IntentSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListIntents>

Returns: a L<Paws::LexModelsV2::ListIntentsResponse> instance

Get a list of intents that meet the specified criteria.


=head2 ListSlots

=over

=item BotId => Str

=item BotVersion => Str

=item IntentId => Str

=item LocaleId => Str

=item [Filters => ArrayRef[L<Paws::LexModelsV2::SlotFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::SlotSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListSlots>

Returns: a L<Paws::LexModelsV2::ListSlotsResponse> instance

Gets a list of slots that match the specified criteria.


=head2 ListSlotTypes

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str

=item [Filters => ArrayRef[L<Paws::LexModelsV2::SlotTypeFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::LexModelsV2::SlotTypeSortBy>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListSlotTypes>

Returns: a L<Paws::LexModelsV2::ListSlotTypesResponse> instance

Gets a list of slot types that match the specified criteria.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::LexModelsV2::ListTagsForResource>

Returns: a L<Paws::LexModelsV2::ListTagsForResourceResponse> instance

Gets a list of tags associated with a resource. Only bots, bot aliases,
and bot channels can have tags associated with them.


=head2 StartImport

=over

=item ImportId => Str

=item MergeStrategy => Str

=item ResourceSpecification => L<Paws::LexModelsV2::ImportResourceSpecification>

=item [FilePassword => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::StartImport>

Returns: a L<Paws::LexModelsV2::StartImportResponse> instance

Starts importing a bot or bot locale from a zip archive that you
uploaded to an S3 bucket.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => L<Paws::LexModelsV2::TagMap>


=back

Each argument is described in detail in: L<Paws::LexModelsV2::TagResource>

Returns: a L<Paws::LexModelsV2::TagResourceResponse> instance

Adds the specified tags to the specified resource. If a tag key already
exists, the existing value is replaced with the new value.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::UntagResource>

Returns: a L<Paws::LexModelsV2::UntagResourceResponse> instance

Removes tags from a bot, bot alias, or bot channel.


=head2 UpdateBot

=over

=item BotId => Str

=item BotName => Str

=item DataPrivacy => L<Paws::LexModelsV2::DataPrivacy>

=item IdleSessionTTLInSeconds => Int

=item RoleArn => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::UpdateBot>

Returns: a L<Paws::LexModelsV2::UpdateBotResponse> instance

Updates the configuration of an existing bot.


=head2 UpdateBotAlias

=over

=item BotAliasId => Str

=item BotAliasName => Str

=item BotId => Str

=item [BotAliasLocaleSettings => L<Paws::LexModelsV2::BotAliasLocaleSettingsMap>]

=item [BotVersion => Str]

=item [ConversationLogSettings => L<Paws::LexModelsV2::ConversationLogSettings>]

=item [Description => Str]

=item [SentimentAnalysisSettings => L<Paws::LexModelsV2::SentimentAnalysisSettings>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::UpdateBotAlias>

Returns: a L<Paws::LexModelsV2::UpdateBotAliasResponse> instance

Updates the configuration of an existing bot alias.


=head2 UpdateBotLocale

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str

=item NluIntentConfidenceThreshold => Num

=item [Description => Str]

=item [VoiceSettings => L<Paws::LexModelsV2::VoiceSettings>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::UpdateBotLocale>

Returns: a L<Paws::LexModelsV2::UpdateBotLocaleResponse> instance

Updates the settings that a bot has for a specific locale.


=head2 UpdateExport

=over

=item ExportId => Str

=item [FilePassword => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::UpdateExport>

Returns: a L<Paws::LexModelsV2::UpdateExportResponse> instance

Updates the password used to encrypt an export zip archive.


=head2 UpdateIntent

=over

=item BotId => Str

=item BotVersion => Str

=item IntentId => Str

=item IntentName => Str

=item LocaleId => Str

=item [Description => Str]

=item [DialogCodeHook => L<Paws::LexModelsV2::DialogCodeHookSettings>]

=item [FulfillmentCodeHook => L<Paws::LexModelsV2::FulfillmentCodeHookSettings>]

=item [InputContexts => ArrayRef[L<Paws::LexModelsV2::InputContext>]]

=item [IntentClosingSetting => L<Paws::LexModelsV2::IntentClosingSetting>]

=item [IntentConfirmationSetting => L<Paws::LexModelsV2::IntentConfirmationSetting>]

=item [KendraConfiguration => L<Paws::LexModelsV2::KendraConfiguration>]

=item [OutputContexts => ArrayRef[L<Paws::LexModelsV2::OutputContext>]]

=item [ParentIntentSignature => Str]

=item [SampleUtterances => ArrayRef[L<Paws::LexModelsV2::SampleUtterance>]]

=item [SlotPriorities => ArrayRef[L<Paws::LexModelsV2::SlotPriority>]]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::UpdateIntent>

Returns: a L<Paws::LexModelsV2::UpdateIntentResponse> instance

Updates the settings for an intent.


=head2 UpdateResourcePolicy

=over

=item Policy => Str

=item ResourceArn => Str

=item [ExpectedRevisionId => Str]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::UpdateResourcePolicy>

Returns: a L<Paws::LexModelsV2::UpdateResourcePolicyResponse> instance

Replaces the existing resource policy for a bot or bot alias with a new
one. If the policy doesn't exist, Amazon Lex returns an exception.


=head2 UpdateSlot

=over

=item BotId => Str

=item BotVersion => Str

=item IntentId => Str

=item LocaleId => Str

=item SlotId => Str

=item SlotName => Str

=item SlotTypeId => Str

=item ValueElicitationSetting => L<Paws::LexModelsV2::SlotValueElicitationSetting>

=item [Description => Str]

=item [ObfuscationSetting => L<Paws::LexModelsV2::ObfuscationSetting>]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::UpdateSlot>

Returns: a L<Paws::LexModelsV2::UpdateSlotResponse> instance

Updates the settings for a slot.


=head2 UpdateSlotType

=over

=item BotId => Str

=item BotVersion => Str

=item LocaleId => Str

=item SlotTypeId => Str

=item SlotTypeName => Str

=item ValueSelectionSetting => L<Paws::LexModelsV2::SlotValueSelectionSetting>

=item [Description => Str]

=item [ParentSlotTypeSignature => Str]

=item [SlotTypeValues => ArrayRef[L<Paws::LexModelsV2::SlotTypeValue>]]


=back

Each argument is described in detail in: L<Paws::LexModelsV2::UpdateSlotType>

Returns: a L<Paws::LexModelsV2::UpdateSlotTypeResponse> instance

Updates the configuration of an existing slot type.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

