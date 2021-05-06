
package Paws::LexModels::GetBuiltinIntent;
  use Moose;
  has Signature => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'signature', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBuiltinIntent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/builtins/intents/{signature}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetBuiltinIntentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBuiltinIntent - Arguments for method GetBuiltinIntent on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBuiltinIntent on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method GetBuiltinIntent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBuiltinIntent.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $GetBuiltinIntentResponse = $models . lex->GetBuiltinIntent(
      Signature => 'MyBuiltinIntentSignature',

    );

    # Results:
    my $Signature        = $GetBuiltinIntentResponse->Signature;
    my $Slots            = $GetBuiltinIntentResponse->Slots;
    my $SupportedLocales = $GetBuiltinIntentResponse->SupportedLocales;

    # Returns a L<Paws::LexModels::GetBuiltinIntentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/GetBuiltinIntent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Signature => Str

The unique identifier for a built-in intent. To find the signature for
an intent, see Standard Built-in Intents
(https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents)
in the I<Alexa Skills Kit>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBuiltinIntent in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

