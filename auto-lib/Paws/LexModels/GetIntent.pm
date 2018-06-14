
package Paws::LexModels::GetIntent;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'version', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIntent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/intents/{name}/versions/{version}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetIntentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetIntent - Arguments for method GetIntent on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIntent on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method GetIntent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIntent.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $GetIntentResponse = $models . lex->GetIntent(
      Name    => 'MyIntentName',
      Version => 'MyVersion',

    );

    # Results:
    my $SampleUtterances      = $GetIntentResponse->SampleUtterances;
    my $RejectionStatement    = $GetIntentResponse->RejectionStatement;
    my $ParentIntentSignature = $GetIntentResponse->ParentIntentSignature;
    my $FulfillmentActivity   = $GetIntentResponse->FulfillmentActivity;
    my $DialogCodeHook        = $GetIntentResponse->DialogCodeHook;
    my $LastUpdatedDate       = $GetIntentResponse->LastUpdatedDate;
    my $ConclusionStatement   = $GetIntentResponse->ConclusionStatement;
    my $Slots                 = $GetIntentResponse->Slots;
    my $CreatedDate           = $GetIntentResponse->CreatedDate;
    my $Version               = $GetIntentResponse->Version;
    my $FollowUpPrompt        = $GetIntentResponse->FollowUpPrompt;
    my $ConfirmationPrompt    = $GetIntentResponse->ConfirmationPrompt;
    my $Description           = $GetIntentResponse->Description;
    my $Name                  = $GetIntentResponse->Name;
    my $Checksum              = $GetIntentResponse->Checksum;

    # Returns a L<Paws::LexModels::GetIntentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/lex/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the intent. The name is case sensitive.



=head2 B<REQUIRED> Version => Str

The version of the intent.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIntent in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

