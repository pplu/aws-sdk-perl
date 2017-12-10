
package Paws::Translate::TranslateText;
  use Moose;
  has SourceLanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has TargetLanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has Text => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TranslateText');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Translate::TranslateTextResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::TranslateText - Arguments for method TranslateText on L<Paws::Translate>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TranslateText on the 
Amazon Translate service. Use the attributes of this class
as arguments to method TranslateText.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TranslateText.

As an example:

  $service_obj->TranslateText(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceLanguageCode => Str

One of the supported language codes for the source text. If the
C<TargetLanguageCode> is not "en", the C<SourceLanguageCode> must be
"en".



=head2 B<REQUIRED> TargetLanguageCode => Str

One of the supported language codes for the target text. If the
C<SourceLanguageCode> is not "en", the C<TargetLanguageCode> must be
"en".



=head2 B<REQUIRED> Text => Str

The text to translate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TranslateText in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

