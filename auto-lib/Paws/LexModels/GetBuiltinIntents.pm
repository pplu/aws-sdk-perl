
package Paws::LexModels::GetBuiltinIntents;
  use Moose;
  has Locale => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'locale');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SignatureContains => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'signatureContains');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBuiltinIntents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/builtins/intents/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetBuiltinIntentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBuiltinIntents - Arguments for method GetBuiltinIntents on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBuiltinIntents on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method GetBuiltinIntents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBuiltinIntents.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $GetBuiltinIntentsResponse = $models . lex->GetBuiltinIntents(
      Locale            => 'en-US',          # OPTIONAL
      MaxResults        => 1,                # OPTIONAL
      NextToken         => 'MyNextToken',    # OPTIONAL
      SignatureContains => 'MyString',       # OPTIONAL
    );

    # Results:
    my $Intents   = $GetBuiltinIntentsResponse->Intents;
    my $NextToken = $GetBuiltinIntentsResponse->NextToken;

    # Returns a L<Paws::LexModels::GetBuiltinIntentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/GetBuiltinIntents>

=head1 ATTRIBUTES


=head2 Locale => Str

A list of locales that the intent supports.

Valid values are: C<"en-US">, C<"en-GB">, C<"de-DE">

=head2 MaxResults => Int

The maximum number of intents to return in the response. The default is
10.



=head2 NextToken => Str

A pagination token that fetches the next page of intents. If this API
call is truncated, Amazon Lex returns a pagination token in the
response. To fetch the next page of intents, use the pagination token
in the next request.



=head2 SignatureContains => Str

Substring to match in built-in intent signatures. An intent will be
returned if any part of its signature matches the substring. For
example, "xyz" matches both "xyzabc" and "abcxyz." To find the
signature for an intent, see Standard Built-in Intents
(https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents)
in the I<Alexa Skills Kit>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBuiltinIntents in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

