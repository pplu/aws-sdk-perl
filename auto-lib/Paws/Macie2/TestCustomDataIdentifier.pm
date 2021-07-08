
package Paws::Macie2::TestCustomDataIdentifier;
  use Moose;
  has IgnoreWords => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ignoreWords');
  has Keywords => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'keywords');
  has MaximumMatchDistance => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maximumMatchDistance');
  has Regex => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'regex', required => 1);
  has SampleText => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sampleText', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestCustomDataIdentifier');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/custom-data-identifiers/test');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::TestCustomDataIdentifierResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::TestCustomDataIdentifier - Arguments for method TestCustomDataIdentifier on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestCustomDataIdentifier on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method TestCustomDataIdentifier.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestCustomDataIdentifier.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $TestCustomDataIdentifierResponse = $macie2->TestCustomDataIdentifier(
      Regex                => 'My__string',
      SampleText           => 'My__string',
      IgnoreWords          => [ 'My__string', ... ],    # OPTIONAL
      Keywords             => [ 'My__string', ... ],    # OPTIONAL
      MaximumMatchDistance => 1,                        # OPTIONAL
    );

    # Results:
    my $MatchCount = $TestCustomDataIdentifierResponse->MatchCount;

    # Returns a L<Paws::Macie2::TestCustomDataIdentifierResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/TestCustomDataIdentifier>

=head1 ATTRIBUTES


=head2 IgnoreWords => ArrayRef[Str|Undef]

An array that lists specific character sequences (ignore words) to
exclude from the results. If the text matched by the regular expression
is the same as any string in this array, Amazon Macie ignores it. The
array can contain as many as 10 ignore words. Each ignore word can
contain 4-90 characters. Ignore words are case sensitive.



=head2 Keywords => ArrayRef[Str|Undef]

An array that lists specific character sequences (keywords), one of
which must be within proximity (maximumMatchDistance) of the regular
expression to match. The array can contain as many as 50 keywords. Each
keyword can contain 3-90 characters. Keywords aren't case sensitive.



=head2 MaximumMatchDistance => Int

The maximum number of characters that can exist between text that
matches the regex pattern and the character sequences specified by the
keywords array. Macie includes or excludes a result based on the
proximity of a keyword to text that matches the regex pattern. The
distance can be 1-300 characters. The default value is 50.



=head2 B<REQUIRED> Regex => Str

The regular expression (I<regex>) that defines the pattern to match.
The expression can contain as many as 512 characters.



=head2 B<REQUIRED> SampleText => Str

The sample text to inspect by using the custom data identifier. The
text can contain as many as 1,000 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestCustomDataIdentifier in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

