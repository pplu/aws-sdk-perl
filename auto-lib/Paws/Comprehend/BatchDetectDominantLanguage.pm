
package Paws::Comprehend::BatchDetectDominantLanguage;
  use Moose;
  has TextList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDetectDominantLanguage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::BatchDetectDominantLanguageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::BatchDetectDominantLanguage - Arguments for method BatchDetectDominantLanguage on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDetectDominantLanguage on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method BatchDetectDominantLanguage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDetectDominantLanguage.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $BatchDetectDominantLanguageResponse =
      $comprehend->BatchDetectDominantLanguage(
      TextList => [
        'MyString', ...    # min: 1
      ],

      );

    # Results:
    my $ErrorList  = $BatchDetectDominantLanguageResponse->ErrorList;
    my $ResultList = $BatchDetectDominantLanguageResponse->ResultList;

    # Returns a L<Paws::Comprehend::BatchDetectDominantLanguageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/BatchDetectDominantLanguage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TextList => ArrayRef[Str|Undef]

A list containing the text of the input documents. The list can contain
a maximum of 25 documents. Each document should contain at least 20
characters and must contain fewer than 5,000 bytes of UTF-8 encoded
characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDetectDominantLanguage in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

