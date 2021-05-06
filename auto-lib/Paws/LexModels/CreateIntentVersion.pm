
package Paws::LexModels::CreateIntentVersion;
  use Moose;
  has Checksum => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'checksum');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIntentVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/intents/{name}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::CreateIntentVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::CreateIntentVersion - Arguments for method CreateIntentVersion on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIntentVersion on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method CreateIntentVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIntentVersion.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $CreateIntentVersionResponse = $models . lex->CreateIntentVersion(
      Name     => 'MyIntentName',
      Checksum => 'MyString',       # OPTIONAL
    );

    # Results:
    my $Checksum            = $CreateIntentVersionResponse->Checksum;
    my $ConclusionStatement = $CreateIntentVersionResponse->ConclusionStatement;
    my $ConfirmationPrompt  = $CreateIntentVersionResponse->ConfirmationPrompt;
    my $CreatedDate         = $CreateIntentVersionResponse->CreatedDate;
    my $Description         = $CreateIntentVersionResponse->Description;
    my $DialogCodeHook      = $CreateIntentVersionResponse->DialogCodeHook;
    my $FollowUpPrompt      = $CreateIntentVersionResponse->FollowUpPrompt;
    my $FulfillmentActivity = $CreateIntentVersionResponse->FulfillmentActivity;
    my $LastUpdatedDate     = $CreateIntentVersionResponse->LastUpdatedDate;
    my $Name                = $CreateIntentVersionResponse->Name;
    my $ParentIntentSignature =
      $CreateIntentVersionResponse->ParentIntentSignature;
    my $RejectionStatement = $CreateIntentVersionResponse->RejectionStatement;
    my $SampleUtterances   = $CreateIntentVersionResponse->SampleUtterances;
    my $Slots              = $CreateIntentVersionResponse->Slots;
    my $Version            = $CreateIntentVersionResponse->Version;

    # Returns a L<Paws::LexModels::CreateIntentVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/CreateIntentVersion>

=head1 ATTRIBUTES


=head2 Checksum => Str

Checksum of the C<$LATEST> version of the intent that should be used to
create the new version. If you specify a checksum and the C<$LATEST>
version of the intent has a different checksum, Amazon Lex returns a
C<PreconditionFailedException> exception and doesn't publish a new
version. If you don't specify a checksum, Amazon Lex publishes the
C<$LATEST> version.



=head2 B<REQUIRED> Name => Str

The name of the intent that you want to create a new version of. The
name is case sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIntentVersion in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

