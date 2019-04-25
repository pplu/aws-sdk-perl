package Paws::Comprehend::DominantLanguage;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str');
  has Score => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DominantLanguage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::DominantLanguage object:

  $service_obj->Method(Att1 => { LanguageCode => $value, ..., Score => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::DominantLanguage object:

  $result = $service_obj->Method(...);
  $result->Att1->LanguageCode

=head1 DESCRIPTION

Returns the code for the dominant language in the input text and the
level of confidence that Amazon Comprehend has in the accuracy of the
detection.

=head1 ATTRIBUTES


=head2 LanguageCode => Str

  The RFC 5646 language code for the dominant language. For more
information about RFC 5646, see Tags for Identifying Languages
(https://tools.ietf.org/html/rfc5646) on the I<IETF Tools> web site.


=head2 Score => Num

  The level of confidence that Amazon Comprehend has in the accuracy of
the detection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

