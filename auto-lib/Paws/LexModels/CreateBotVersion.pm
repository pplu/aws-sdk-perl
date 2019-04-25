
package Paws::LexModels::CreateBotVersion;
  use Moose;
  has Checksum => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'checksum');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBotVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{name}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::CreateBotVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::CreateBotVersion - Arguments for method CreateBotVersion on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBotVersion on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method CreateBotVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBotVersion.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $CreateBotVersionResponse = $models . lex->CreateBotVersion(
      Name     => 'MyBotName',
      Checksum => 'MyString',    # OPTIONAL
    );

    # Results:
    my $AbortStatement      = $CreateBotVersionResponse->AbortStatement;
    my $Checksum            = $CreateBotVersionResponse->Checksum;
    my $ChildDirected       = $CreateBotVersionResponse->ChildDirected;
    my $ClarificationPrompt = $CreateBotVersionResponse->ClarificationPrompt;
    my $CreatedDate         = $CreateBotVersionResponse->CreatedDate;
    my $Description         = $CreateBotVersionResponse->Description;
    my $FailureReason       = $CreateBotVersionResponse->FailureReason;
    my $IdleSessionTTLInSeconds =
      $CreateBotVersionResponse->IdleSessionTTLInSeconds;
    my $Intents         = $CreateBotVersionResponse->Intents;
    my $LastUpdatedDate = $CreateBotVersionResponse->LastUpdatedDate;
    my $Locale          = $CreateBotVersionResponse->Locale;
    my $Name            = $CreateBotVersionResponse->Name;
    my $Status          = $CreateBotVersionResponse->Status;
    my $Version         = $CreateBotVersionResponse->Version;
    my $VoiceId         = $CreateBotVersionResponse->VoiceId;

    # Returns a L<Paws::LexModels::CreateBotVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/CreateBotVersion>

=head1 ATTRIBUTES


=head2 Checksum => Str

Identifies a specific revision of the C<$LATEST> version of the bot. If
you specify a checksum and the C<$LATEST> version of the bot has a
different checksum, a C<PreconditionFailedException> exception is
returned and Amazon Lex doesn't publish a new version. If you don't
specify a checksum, Amazon Lex publishes the C<$LATEST> version.



=head2 B<REQUIRED> Name => Str

The name of the bot that you want to create a new version of. The name
is case sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBotVersion in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

