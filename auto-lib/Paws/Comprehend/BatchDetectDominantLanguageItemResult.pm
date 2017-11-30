package Paws::Comprehend::BatchDetectDominantLanguageItemResult;
  use Moose;
  has Index => (is => 'ro', isa => 'Int');
  has Languages => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::DominantLanguage]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::BatchDetectDominantLanguageItemResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::BatchDetectDominantLanguageItemResult object:

  $service_obj->Method(Att1 => { Index => $value, ..., Languages => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::BatchDetectDominantLanguageItemResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Index

=head1 DESCRIPTION

The result of calling the operation. The operation returns one object
for each document that is successfully processed by the operation.

=head1 ATTRIBUTES


=head2 Index => Int

  The zero-based index of the document in the input list.


=head2 Languages => ArrayRef[L<Paws::Comprehend::DominantLanguage>]

  One or more DominantLanguage objects describing the dominant languages
in the document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

