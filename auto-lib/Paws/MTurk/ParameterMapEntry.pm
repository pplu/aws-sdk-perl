package Paws::MTurk::ParameterMapEntry;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ParameterMapEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MTurk::ParameterMapEntry object:

  $service_obj->Method(Att1 => { Key => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MTurk::ParameterMapEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

This data structure is the data type for the AnswerKey parameter of the
ScoreMyKnownAnswers/2011-09-01 Review Policy.

=head1 ATTRIBUTES


=head2 Key => Str

  The QuestionID from the HIT that is used to identify which question
requires Mechanical Turk to score as part of the
ScoreMyKnownAnswers/2011-09-01 Review Policy.


=head2 Values => ArrayRef[Str|Undef]

  The list of answers to the question specified in the MapEntry Key
element. The Worker must match all values in order for the answer to be
scored correctly.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

