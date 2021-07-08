
package Paws::Comprehend::DetectPiiEntities;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has Text => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetectPiiEntities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::DetectPiiEntitiesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DetectPiiEntities - Arguments for method DetectPiiEntities on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectPiiEntities on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method DetectPiiEntities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectPiiEntities.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $DetectPiiEntitiesResponse = $comprehend->DetectPiiEntities(
      LanguageCode => 'en',
      Text         => 'MyString',

    );

    # Results:
    my $Entities = $DetectPiiEntitiesResponse->Entities;

    # Returns a L<Paws::Comprehend::DetectPiiEntitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/DetectPiiEntities>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LanguageCode => Str

The language of the input documents.

Valid values are: C<"en">, C<"es">, C<"fr">, C<"de">, C<"it">, C<"pt">, C<"ar">, C<"hi">, C<"ja">, C<"ko">, C<"zh">, C<"zh-TW">

=head2 B<REQUIRED> Text => Str

A UTF-8 text string. Each string must contain fewer that 5,000 bytes of
UTF-8 encoded characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectPiiEntities in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

