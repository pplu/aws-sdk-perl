package Paws::LexModels;
  use Moose;
  sub service { 'models.lex' }
  sub version { '2017-04-19' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateBotVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::CreateBotVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIntentVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::CreateIntentVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSlotTypeVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::CreateSlotTypeVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::DeleteBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBotAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::DeleteBotAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBotChannelAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::DeleteBotChannelAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBotVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::DeleteBotVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIntent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::DeleteIntent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIntentVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::DeleteIntentVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSlotType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::DeleteSlotType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSlotTypeVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::DeleteSlotTypeVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUtterances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::DeleteUtterances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::GetBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBotAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::GetBotAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBotAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::GetBotAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBotChannelAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::GetBotChannelAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBotChannelAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::GetBotChannelAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::GetBots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBotVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::GetBotVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBuiltinIntent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::GetBuiltinIntent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBuiltinIntents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::GetBuiltinIntents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBuiltinSlotTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::GetBuiltinSlotTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIntent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::GetIntent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIntents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::GetIntents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIntentVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::GetIntentVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSlotType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::GetSlotType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSlotTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::GetSlotTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSlotTypeVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::GetSlotTypeVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUtterancesView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::GetUtterancesView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::PutBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBotAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::PutBotAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutIntent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::PutIntent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSlotType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexModels::PutSlotType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateBotVersion CreateIntentVersion CreateSlotTypeVersion DeleteBot DeleteBotAlias DeleteBotChannelAssociation DeleteBotVersion DeleteIntent DeleteIntentVersion DeleteSlotType DeleteSlotTypeVersion DeleteUtterances GetBot GetBotAlias GetBotAliases GetBotChannelAssociation GetBotChannelAssociations GetBots GetBotVersions GetBuiltinIntent GetBuiltinIntents GetBuiltinSlotTypes GetIntent GetIntents GetIntentVersions GetSlotType GetSlotTypes GetSlotTypeVersions GetUtterancesView PutBot PutBotAlias PutIntent PutSlotType / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels - Perl Interface to AWS Amazon Lex Model Building Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('LexModels');
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

Amazon Lex Build-Time Actions

Amazon Lex is an AWS service for building conversational voice and text
interfaces. Use these actions to create, update, and delete
conversational bots for new and existing client applications.

=head1 METHODS

=head2 CreateBotVersion(Name => Str, [Checksum => Str])

Each argument is described in detail in: L<Paws::LexModels::CreateBotVersion>

Returns: a L<Paws::LexModels::CreateBotVersionResponse> instance

  Creates a new version of the bot based on the C<$LATEST> version. If
the C<$LATEST> version of this resource hasn't changed since you
created the last version, Amazon Lex doesn't create a new version. It
returns the last created version.

You can update only the C<$LATEST> version of the bot. You can't update
the numbered versions that you create with the C<CreateBotVersion>
operation.

When you create the first version of a bot, Amazon Lex sets the version
to 1. Subsequent versions increment by 1. For more information, see
versioning-intro.

This operation requires permission for the C<lex:CreateBotVersion>
action.


=head2 CreateIntentVersion(Name => Str, [Checksum => Str])

Each argument is described in detail in: L<Paws::LexModels::CreateIntentVersion>

Returns: a L<Paws::LexModels::CreateIntentVersionResponse> instance

  Creates a new version of an intent based on the C<$LATEST> version of
the intent. If the C<$LATEST> version of this intent hasn't changed
since you last updated it, Amazon Lex doesn't create a new version. It
returns the last version you created.

You can update only the C<$LATEST> version of the intent. You can't
update the numbered versions that you create with the
C<CreateIntentVersion> operation.

When you create a version of an intent, Amazon Lex sets the version to
1. Subsequent versions increment by 1. For more information, see
versioning-intro.

This operation requires permissions to perform the
C<lex:CreateIntentVersion> action.


=head2 CreateSlotTypeVersion(Name => Str, [Checksum => Str])

Each argument is described in detail in: L<Paws::LexModels::CreateSlotTypeVersion>

Returns: a L<Paws::LexModels::CreateSlotTypeVersionResponse> instance

  Creates a new version of a slot type based on the C<$LATEST> version of
the specified slot type. If the C<$LATEST> version of this resource has
not changed since the last version that you created, Amazon Lex doesn't
create a new version. It returns the last version that you created.

You can update only the C<$LATEST> version of a slot type. You can't
update the numbered versions that you create with the
C<CreateSlotTypeVersion> operation.

When you create a version of a slot type, Amazon Lex sets the version
to 1. Subsequent versions increment by 1. For more information, see
versioning-intro.

This operation requires permissions for the
C<lex:CreateSlotTypeVersion> action.


=head2 DeleteBot(Name => Str)

Each argument is described in detail in: L<Paws::LexModels::DeleteBot>

Returns: nothing

  Deletes all versions of the bot, including the C<$LATEST> version. To
delete a specific version of the bot, use the DeleteBotVersion
operation.

If a bot has an alias, you can't delete it. Instead, the C<DeleteBot>
operation returns a C<ResourceInUseException> exception that includes a
reference to the alias that refers to the bot. To remove the reference
to the bot, delete the alias. If you get the same exception again,
delete the referring alias until the C<DeleteBot> operation is
successful.

This operation requires permissions for the C<lex:DeleteBot> action.


=head2 DeleteBotAlias(BotName => Str, Name => Str)

Each argument is described in detail in: L<Paws::LexModels::DeleteBotAlias>

Returns: nothing

  Deletes an alias for the specified bot.

You can't delete an alias that is used in the association between a bot
and a messaging channel. If an alias is used in a channel association,
the C<DeleteBot> operation returns a C<ResourceInUseException>
exception that includes a reference to the channel association that
refers to the bot. You can remove the reference to the alias by
deleting the channel association. If you get the same exception again,
delete the referring association until the C<DeleteBotAlias> operation
is successful.


=head2 DeleteBotChannelAssociation(BotAlias => Str, BotName => Str, Name => Str)

Each argument is described in detail in: L<Paws::LexModels::DeleteBotChannelAssociation>

Returns: nothing

  Deletes the association between an Amazon Lex bot and a messaging
platform.

This operation requires permission for the
C<lex:DeleteBotChannelAssociation> action.


=head2 DeleteBotVersion(Name => Str, Version => Str)

Each argument is described in detail in: L<Paws::LexModels::DeleteBotVersion>

Returns: nothing

  Deletes a specific version of a bot. To delete all versions of a bot,
use the DeleteBot operation.

This operation requires permissions for the C<lex:DeleteBotVersion>
action.


=head2 DeleteIntent(Name => Str)

Each argument is described in detail in: L<Paws::LexModels::DeleteIntent>

Returns: nothing

  Deletes all versions of the intent, including the C<$LATEST> version.
To delete a specific version of the intent, use the DeleteIntentVersion
operation.

You can delete a version of an intent only if it is not referenced. To
delete an intent that is referred to in one or more bots (see
how-it-works), you must remove those references first.

If you get the C<ResourceInUseException> exception, it provides an
example reference that shows where the intent is referenced. To remove
the reference to the intent, either update the bot or delete it. If you
get the same exception when you attempt to delete the intent again,
repeat until the intent has no references and the call to
C<DeleteIntent> is successful.

This operation requires permission for the C<lex:DeleteIntent> action.


=head2 DeleteIntentVersion(Name => Str, Version => Str)

Each argument is described in detail in: L<Paws::LexModels::DeleteIntentVersion>

Returns: nothing

  Deletes a specific version of an intent. To delete all versions of a
intent, use the DeleteIntent operation.

This operation requires permissions for the C<lex:DeleteIntentVersion>
action.


=head2 DeleteSlotType(Name => Str)

Each argument is described in detail in: L<Paws::LexModels::DeleteSlotType>

Returns: nothing

  Deletes all versions of the slot type, including the C<$LATEST>
version. To delete a specific version of the slot type, use the
DeleteSlotTypeVersion operation.

You can delete a version of a slot type only if it is not referenced.
To delete a slot type that is referred to in one or more intents, you
must remove those references first.

If you get the C<ResourceInUseException> exception, the exception
provides an example reference that shows the intent where the slot type
is referenced. To remove the reference to the slot type, either update
the intent or delete it. If you get the same exception when you attempt
to delete the slot type again, repeat until the slot type has no
references and the C<DeleteSlotType> call is successful.

This operation requires permission for the C<lex:DeleteSlotType>
action.


=head2 DeleteSlotTypeVersion(Name => Str, Version => Str)

Each argument is described in detail in: L<Paws::LexModels::DeleteSlotTypeVersion>

Returns: nothing

  Deletes a specific version of a slot type. To delete all versions of a
slot type, use the DeleteSlotType operation.

This operation requires permissions for the
C<lex:DeleteSlotTypeVersion> action.


=head2 DeleteUtterances(BotName => Str, UserId => Str)

Each argument is described in detail in: L<Paws::LexModels::DeleteUtterances>

Returns: nothing

  Deletes stored utterances.

Amazon Lex stores the utterances that users send to your bot unless the
C<childDirected> field in the bot is set to C<true>. Utterances are
stored for 15 days for use with the GetUtterancesView operation, and
then stored indefinately for use in improving the ability of your bot
to respond to user input.

Use the C<DeleteStoredUtterances> operation to manually delete stored
utterances for a specific user.

This operation requires permissions for the C<lex:DeleteUtterances>
action.


=head2 GetBot(Name => Str, VersionOrAlias => Str)

Each argument is described in detail in: L<Paws::LexModels::GetBot>

Returns: a L<Paws::LexModels::GetBotResponse> instance

  Returns metadata information for a specific bot. You must provide the
bot name and the bot version or alias.

The GetBot operation requires permissions for the C<lex:GetBot> action.


=head2 GetBotAlias(BotName => Str, Name => Str)

Each argument is described in detail in: L<Paws::LexModels::GetBotAlias>

Returns: a L<Paws::LexModels::GetBotAliasResponse> instance

  Returns information about an Amazon Lex bot alias. For more information
about aliases, see versioning-aliases.

This operation requires permissions for the C<lex:GetBotAlias> action.


=head2 GetBotAliases(BotName => Str, [MaxResults => Int, NameContains => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::LexModels::GetBotAliases>

Returns: a L<Paws::LexModels::GetBotAliasesResponse> instance

  Returns a list of aliases for a specified Amazon Lex bot.

This operation requires permissions for the C<lex:GetBotAliases>
action.


=head2 GetBotChannelAssociation(BotAlias => Str, BotName => Str, Name => Str)

Each argument is described in detail in: L<Paws::LexModels::GetBotChannelAssociation>

Returns: a L<Paws::LexModels::GetBotChannelAssociationResponse> instance

  Returns information about the association between an Amazon Lex bot and
a messaging platform.

This operation requires permissions for the
C<lex:GetBotChannelAssociation> action.


=head2 GetBotChannelAssociations(BotAlias => Str, BotName => Str, [MaxResults => Int, NameContains => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::LexModels::GetBotChannelAssociations>

Returns: a L<Paws::LexModels::GetBotChannelAssociationsResponse> instance

  Returns a list of all of the channels associated with the specified
bot.

The C<GetBotChannelAssociations> operation requires permissions for the
C<lex:GetBotChannelAssociations> action.


=head2 GetBots([MaxResults => Int, NameContains => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::LexModels::GetBots>

Returns: a L<Paws::LexModels::GetBotsResponse> instance

  Returns bot information as follows:

=over

=item *

If you provide the C<nameContains> field, the response includes
information for the C<$LATEST> version of all bots whose name contains
the specified string.

=item *

If you don't specify the C<nameContains> field, the operation returns
information about the C<$LATEST> version of all of your bots.

=back

This operation requires permission for the C<lex:GetBots> action.


=head2 GetBotVersions(Name => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::LexModels::GetBotVersions>

Returns: a L<Paws::LexModels::GetBotVersionsResponse> instance

  Gets information about all of the versions of a bot.

The C<GetBotVersions> operation returns a C<BotMetadata> object for
each version of a bot. For example, if a bot has three numbered
versions, the C<GetBotVersions> operation returns four C<BotMetadata>
objects in the response, one for each numbered version and one for the
C<$LATEST> version.

The C<GetBotVersions> operation always returns at least one version,
the C<$LATEST> version.

This operation requires permissions for the C<lex:GetBotVersions>
action.


=head2 GetBuiltinIntent(Signature => Str)

Each argument is described in detail in: L<Paws::LexModels::GetBuiltinIntent>

Returns: a L<Paws::LexModels::GetBuiltinIntentResponse> instance

  Returns information about a built-in intent.

This operation requires permission for the C<lex:GetBuiltinIntent>
action.


=head2 GetBuiltinIntents([Locale => Str, MaxResults => Int, NextToken => Str, SignatureContains => Str])

Each argument is described in detail in: L<Paws::LexModels::GetBuiltinIntents>

Returns: a L<Paws::LexModels::GetBuiltinIntentsResponse> instance

  Gets a list of built-in intents that meet the specified criteria.

This operation requires permission for the C<lex:GetBuiltinIntents>
action.


=head2 GetBuiltinSlotTypes([Locale => Str, MaxResults => Int, NextToken => Str, SignatureContains => Str])

Each argument is described in detail in: L<Paws::LexModels::GetBuiltinSlotTypes>

Returns: a L<Paws::LexModels::GetBuiltinSlotTypesResponse> instance

  Gets a list of built-in slot types that meet the specified criteria.

For a list of built-in slot types, see Slot Type Reference in the
I<Alexa Skills Kit>.

This operation requires permission for the C<lex:GetBuiltInSlotTypes>
action.


=head2 GetIntent(Name => Str, Version => Str)

Each argument is described in detail in: L<Paws::LexModels::GetIntent>

Returns: a L<Paws::LexModels::GetIntentResponse> instance

  Returns information about an intent. In addition to the intent name,
you must specify the intent version.

This operation requires permissions to perform the C<lex:GetIntent>
action.


=head2 GetIntents([MaxResults => Int, NameContains => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::LexModels::GetIntents>

Returns: a L<Paws::LexModels::GetIntentsResponse> instance

  Returns intent information as follows:

=over

=item *

If you specify the C<nameContains> field, returns the C<$LATEST>
version of all intents that contain the specified string.

=item *

If you don't specify the C<nameContains> field, returns information
about the C<$LATEST> version of all intents.

=back

The operation requires permission for the C<lex:GetIntents> action.


=head2 GetIntentVersions(Name => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::LexModels::GetIntentVersions>

Returns: a L<Paws::LexModels::GetIntentVersionsResponse> instance

  Gets information about all of the versions of an intent.

The C<GetIntentVersions> operation returns an C<IntentMetadata> object
for each version of an intent. For example, if an intent has three
numbered versions, the C<GetIntentVersions> operation returns four
C<IntentMetadata> objects in the response, one for each numbered
version and one for the C<$LATEST> version.

The C<GetIntentVersions> operation always returns at least one version,
the C<$LATEST> version.

This operation requires permissions for the C<lex:GetIntentVersions>
action.


=head2 GetSlotType(Name => Str, Version => Str)

Each argument is described in detail in: L<Paws::LexModels::GetSlotType>

Returns: a L<Paws::LexModels::GetSlotTypeResponse> instance

  Returns information about a specific version of a slot type. In
addition to specifying the slot type name, you must specify the slot
type version.

This operation requires permissions for the C<lex:GetSlotType> action.


=head2 GetSlotTypes([MaxResults => Int, NameContains => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::LexModels::GetSlotTypes>

Returns: a L<Paws::LexModels::GetSlotTypesResponse> instance

  Returns slot type information as follows:

=over

=item *

If you specify the C<nameContains> field, returns the C<$LATEST>
version of all slot types that contain the specified string.

=item *

If you don't specify the C<nameContains> field, returns information
about the C<$LATEST> version of all slot types.

=back

The operation requires permission for the C<lex:GetSlotTypes> action.


=head2 GetSlotTypeVersions(Name => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::LexModels::GetSlotTypeVersions>

Returns: a L<Paws::LexModels::GetSlotTypeVersionsResponse> instance

  Gets information about all versions of a slot type.

The C<GetSlotTypeVersions> operation returns a C<SlotTypeMetadata>
object for each version of a slot type. For example, if a slot type has
three numbered versions, the C<GetSlotTypeVersions> operation returns
four C<SlotTypeMetadata> objects in the response, one for each numbered
version and one for the C<$LATEST> version.

The C<GetSlotTypeVersions> operation always returns at least one
version, the C<$LATEST> version.

This operation requires permissions for the C<lex:GetSlotTypeVersions>
action.


=head2 GetUtterancesView(BotName => Str, BotVersions => ArrayRef[Str|Undef], StatusType => Str)

Each argument is described in detail in: L<Paws::LexModels::GetUtterancesView>

Returns: a L<Paws::LexModels::GetUtterancesViewResponse> instance

  Use the C<GetUtterancesView> operation to get information about the
utterances that your users have made to your bot. You can use this list
to tune the utterances that your bot responds to.

For example, say that you have created a bot to order flowers. After
your users have used your bot for a while, use the C<GetUtterancesView>
operation to see the requests that they have made and whether they have
been successful. You might find that the utterance "I want flowers" is
not being recognized. You could add this utterance to the
C<OrderFlowers> intent so that your bot recognizes that utterance.

After you publish a new version of a bot, you can get information about
the old version and the new so that you can compare the performance
across the two versions.

Data is available for the last 15 days. You can request information for
up to 5 versions in each request. The response contains information
about a maximum of 100 utterances for each version.

If the bot's C<childDirected> field is set to C<true>, utterances for
the bot are not stored and cannot be retrieved with the
C<GetUtterancesView> operation. For more information, see PutBot.

This operation requires permissions for the C<lex:GetUtterancesView>
action.


=head2 PutBot(ChildDirected => Bool, Locale => Str, Name => Str, [AbortStatement => L<Paws::LexModels::Statement>, Checksum => Str, ClarificationPrompt => L<Paws::LexModels::Prompt>, Description => Str, IdleSessionTTLInSeconds => Int, Intents => ArrayRef[L<Paws::LexModels::Intent>], ProcessBehavior => Str, VoiceId => Str])

Each argument is described in detail in: L<Paws::LexModels::PutBot>

Returns: a L<Paws::LexModels::PutBotResponse> instance

  Creates an Amazon Lex conversational bot or replaces an existing bot.
When you create or update a bot you are only required to specify a
name. You can use this to add intents later, or to remove intents from
an existing bot. When you create a bot with a name only, the bot is
created or updated but Amazon Lex returns the C< response C<FAILED>.
You can build the bot after you add one or more intents. For more
information about Amazon Lex bots, see how-it-works.>

If you specify the name of an existing bot, the fields in the request
replace the existing values in the C<$LATEST> version of the bot.
Amazon Lex removes any fields that you don't provide values for in the
request, except for the C<idleTTLInSeconds> and C<privacySettings>
fields, which are set to their default values. If you don't specify
values for required fields, Amazon Lex throws an exception.

This operation requires permissions for the C<lex:PutBot> action. For
more information, see auth-and-access-control.


=head2 PutBotAlias(BotName => Str, BotVersion => Str, Name => Str, [Checksum => Str, Description => Str])

Each argument is described in detail in: L<Paws::LexModels::PutBotAlias>

Returns: a L<Paws::LexModels::PutBotAliasResponse> instance

  Creates an alias for the specified version of the bot or replaces an
alias for the specified bot. To change the version of the bot that the
alias points to, replace the alias. For more information about aliases,
see versioning-aliases.

This operation requires permissions for the C<lex:PutBotAlias> action.


=head2 PutIntent(Name => Str, [Checksum => Str, ConclusionStatement => L<Paws::LexModels::Statement>, ConfirmationPrompt => L<Paws::LexModels::Prompt>, Description => Str, DialogCodeHook => L<Paws::LexModels::CodeHook>, FollowUpPrompt => L<Paws::LexModels::FollowUpPrompt>, FulfillmentActivity => L<Paws::LexModels::FulfillmentActivity>, ParentIntentSignature => Str, RejectionStatement => L<Paws::LexModels::Statement>, SampleUtterances => ArrayRef[Str|Undef], Slots => ArrayRef[L<Paws::LexModels::Slot>]])

Each argument is described in detail in: L<Paws::LexModels::PutIntent>

Returns: a L<Paws::LexModels::PutIntentResponse> instance

  Creates an intent or replaces an existing intent.

To define the interaction between the user and your bot, you use one or
more intents. For a pizza ordering bot, for example, you would create
an C<OrderPizza> intent.

To create an intent or replace an existing intent, you must provide the
following:

=over

=item *

Intent name. For example, C<OrderPizza>.

=item *

Sample utterances. For example, "Can I order a pizza, please." and "I
want to order a pizza."

=item *

Information to be gathered. You specify slot types for the information
that your bot will request from the user. You can specify standard slot
types, such as a date or a time, or custom slot types such as the size
and crust of a pizza.

=item *

How the intent will be fulfilled. You can provide a Lambda function or
configure the intent to return the intent information to the client
application. If you use a Lambda function, when all of the intent
information is available, Amazon Lex invokes your Lambda function. If
you configure your intent to return the intent information to the
client application.

=back

You can specify other optional information in the request, such as:

=over

=item *

A confirmation prompt to ask the user to confirm an intent. For
example, "Shall I order your pizza?"

=item *

A conclusion statement to send to the user after the intent has been
fulfilled. For example, "I placed your pizza order."

=item *

A follow-up prompt that asks the user for additional activity. For
example, asking "Do you want to order a drink with your pizza?"

=back

If you specify an existing intent name to update the intent, Amazon Lex
replaces the values in the C<$LATEST> version of the slot type with the
values in the request. Amazon Lex removes fields that you don't provide
in the request. If you don't specify the required fields, Amazon Lex
throws an exception.

For more information, see how-it-works.

This operation requires permissions for the C<lex:PutIntent> action.


=head2 PutSlotType(Name => Str, [Checksum => Str, Description => Str, EnumerationValues => ArrayRef[L<Paws::LexModels::EnumerationValue>]])

Each argument is described in detail in: L<Paws::LexModels::PutSlotType>

Returns: a L<Paws::LexModels::PutSlotTypeResponse> instance

  Creates a custom slot type or replaces an existing custom slot type.

To create a custom slot type, specify a name for the slot type and a
set of enumeration values, which are the values that a slot of this
type can assume. For more information, see how-it-works.

If you specify the name of an existing slot type, the fields in the
request replace the existing values in the C<$LATEST> version of the
slot type. Amazon Lex removes the fields that you don't provide in the
request. If you don't specify required fields, Amazon Lex throws an
exception.

This operation requires permissions for the C<lex:PutSlotType> action.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

