
package Paws::LexModels::GetBot;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has VersionOrAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'versionoralias', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{name}/versions/{versionoralias}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetBotResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBot - Arguments for method GetBot on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBot on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method GetBot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBot.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $GetBotResponse = $models . lex->GetBot(
      Name           => 'MyBotName',
      VersionOrAlias => 'MyString',

    );

    # Results:
    my $ClarificationPrompt     = $GetBotResponse->ClarificationPrompt;
    my $Status                  = $GetBotResponse->Status;
    my $ChildDirected           = $GetBotResponse->ChildDirected;
    my $Locale                  = $GetBotResponse->Locale;
    my $AbortStatement          = $GetBotResponse->AbortStatement;
    my $LastUpdatedDate         = $GetBotResponse->LastUpdatedDate;
    my $VoiceId                 = $GetBotResponse->VoiceId;
    my $CreatedDate             = $GetBotResponse->CreatedDate;
    my $Version                 = $GetBotResponse->Version;
    my $FailureReason           = $GetBotResponse->FailureReason;
    my $Intents                 = $GetBotResponse->Intents;
    my $IdleSessionTTLInSeconds = $GetBotResponse->IdleSessionTTLInSeconds;
    my $Description             = $GetBotResponse->Description;
    my $Name                    = $GetBotResponse->Name;
    my $Checksum                = $GetBotResponse->Checksum;

    # Returns a L<Paws::LexModels::GetBotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/lex/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the bot. The name is case sensitive.



=head2 B<REQUIRED> VersionOrAlias => Str

The version or alias of the bot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBot in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

