
package Paws::Comprehend::BatchDetectSyntax;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has TextList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDetectSyntax');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::BatchDetectSyntaxResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::BatchDetectSyntax - Arguments for method BatchDetectSyntax on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDetectSyntax on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method BatchDetectSyntax.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDetectSyntax.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $BatchDetectSyntaxResponse = $comprehend->BatchDetectSyntax(
      LanguageCode => 'en',
      TextList     => [
        'MyString', ...    # min: 1
      ],

    );

    # Results:
    my $ErrorList  = $BatchDetectSyntaxResponse->ErrorList;
    my $ResultList = $BatchDetectSyntaxResponse->ResultList;

    # Returns a L<Paws::Comprehend::BatchDetectSyntaxResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/BatchDetectSyntax>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LanguageCode => Str

The language of the input documents. You can specify English ("en") or
Spanish ("es"). All documents must be in the same language.

Valid values are: C<"en">, C<"es">, C<"fr">, C<"de">, C<"it">, C<"pt">

=head2 B<REQUIRED> TextList => ArrayRef[Str|Undef]

A list containing the text of the input documents. The list can contain
a maximum of 25 documents. Each document must contain fewer that 5,000
bytes of UTF-8 encoded characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDetectSyntax in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

