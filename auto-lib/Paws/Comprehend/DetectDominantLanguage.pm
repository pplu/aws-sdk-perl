
package Paws::Comprehend::DetectDominantLanguage;
  use Moose;
  has Text => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetectDominantLanguage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::DetectDominantLanguageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DetectDominantLanguage - Arguments for method DetectDominantLanguage on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectDominantLanguage on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method DetectDominantLanguage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectDominantLanguage.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $DetectDominantLanguageResponse = $comprehend->DetectDominantLanguage(
      Text => 'MyString',

    );

    # Results:
    my $Languages = $DetectDominantLanguageResponse->Languages;

    # Returns a L<Paws::Comprehend::DetectDominantLanguageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/DetectDominantLanguage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Text => Str

A UTF-8 text string. Each string should contain at least 20 characters
and must contain fewer that 5,000 bytes of UTF-8 encoded characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectDominantLanguage in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

