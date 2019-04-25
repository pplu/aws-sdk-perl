
package Paws::LexModels::PutBotAlias;
  use Moose;
  has BotName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botName', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion', required => 1);
  has Checksum => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'checksum');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBotAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botName}/aliases/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::PutBotAliasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::PutBotAlias - Arguments for method PutBotAlias on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBotAlias on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method PutBotAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBotAlias.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $PutBotAliasResponse = $models . lex->PutBotAlias(
      BotName     => 'MyBotName',
      BotVersion  => 'MyVersion',
      Name        => 'MyAliasName',
      Checksum    => 'MyString',         # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $BotName         = $PutBotAliasResponse->BotName;
    my $BotVersion      = $PutBotAliasResponse->BotVersion;
    my $Checksum        = $PutBotAliasResponse->Checksum;
    my $CreatedDate     = $PutBotAliasResponse->CreatedDate;
    my $Description     = $PutBotAliasResponse->Description;
    my $LastUpdatedDate = $PutBotAliasResponse->LastUpdatedDate;
    my $Name            = $PutBotAliasResponse->Name;

    # Returns a L<Paws::LexModels::PutBotAliasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/PutBotAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotName => Str

The name of the bot.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot.



=head2 Checksum => Str

Identifies a specific revision of the C<$LATEST> version.

When you create a new bot alias, leave the C<checksum> field blank. If
you specify a checksum you get a C<BadRequestException> exception.

When you want to update a bot alias, set the C<checksum> field to the
checksum of the most recent revision of the C<$LATEST> version. If you
don't specify the C< checksum> field, or if the checksum does not match
the C<$LATEST> version, you get a C<PreconditionFailedException>
exception.



=head2 Description => Str

A description of the alias.



=head2 B<REQUIRED> Name => Str

The name of the alias. The name is I<not> case sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBotAlias in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

