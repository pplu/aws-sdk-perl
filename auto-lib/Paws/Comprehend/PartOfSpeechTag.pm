package Paws::Comprehend::PartOfSpeechTag;
  use Moose;
  has Score => (is => 'ro', isa => 'Num');
  has Tag => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::PartOfSpeechTag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::PartOfSpeechTag object:

  $service_obj->Method(Att1 => { Score => $value, ..., Tag => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::PartOfSpeechTag object:

  $result = $service_obj->Method(...);
  $result->Att1->Score

=head1 DESCRIPTION

Identifies the part of speech represented by the token and gives the
confidence that Amazon Comprehend has that the part of speech was
correctly identified. For more information about the parts of speech
that Amazon Comprehend can identify, see how-syntax.

=head1 ATTRIBUTES


=head2 Score => Num

  The confidence that Amazon Comprehend has that the part of speech was
correctly identified.


=head2 Tag => Str

  Identifies the part of speech that the token represents.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

