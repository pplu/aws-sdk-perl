
package Paws::Comprehend::ContainsPiiEntities;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has Text => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ContainsPiiEntities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::ContainsPiiEntitiesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ContainsPiiEntities - Arguments for method ContainsPiiEntities on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ContainsPiiEntities on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method ContainsPiiEntities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ContainsPiiEntities.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $ContainsPiiEntitiesResponse = $comprehend->ContainsPiiEntities(
      LanguageCode => 'en',
      Text         => 'MyString',

    );

    # Results:
    my $Labels = $ContainsPiiEntitiesResponse->Labels;

    # Returns a L<Paws::Comprehend::ContainsPiiEntitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/ContainsPiiEntities>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LanguageCode => Str

The language of the input documents.

Valid values are: C<"en">, C<"es">, C<"fr">, C<"de">, C<"it">, C<"pt">, C<"ar">, C<"hi">, C<"ja">, C<"ko">, C<"zh">, C<"zh-TW">

=head2 B<REQUIRED> Text => Str

Creates a new document classification request to analyze a single
document in real-time, returning personally identifiable information
(PII) entity labels.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ContainsPiiEntities in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

