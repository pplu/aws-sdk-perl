# Generated from default/object.tt
package Paws::Comprehend::BatchDetectKeyPhrasesItemResult;
  use Moo;
  use Types::Standard qw/Int ArrayRef/;
  use Paws::Comprehend::Types qw/Comprehend_KeyPhrase/;
  has Index => (is => 'ro', isa => Int);
  has KeyPhrases => (is => 'ro', isa => ArrayRef[Comprehend_KeyPhrase]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'KeyPhrases' => {
                                 'type' => 'ArrayRef[Comprehend_KeyPhrase]',
                                 'class' => 'Paws::Comprehend::KeyPhrase'
                               },
               'Index' => {
                            'type' => 'Int'
                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::BatchDetectKeyPhrasesItemResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::BatchDetectKeyPhrasesItemResult object:

  $service_obj->Method(Att1 => { Index => $value, ..., KeyPhrases => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::BatchDetectKeyPhrasesItemResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Index

=head1 DESCRIPTION

The result of calling the operation. The operation returns one object
for each document that is successfully processed by the operation.

=head1 ATTRIBUTES


=head2 Index => Int

  The zero-based index of the document in the input list.


=head2 KeyPhrases => ArrayRef[Comprehend_KeyPhrase]

  One or more KeyPhrase objects, one for each key phrase detected in the
document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

