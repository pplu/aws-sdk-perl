package Paws::MTurk::QualificationRequest;
  use Moose;
  has Answer => (is => 'ro', isa => 'Str');
  has QualificationRequestId => (is => 'ro', isa => 'Str');
  has QualificationTypeId => (is => 'ro', isa => 'Str');
  has SubmitTime => (is => 'ro', isa => 'Str');
  has Test => (is => 'ro', isa => 'Str');
  has WorkerId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::QualificationRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MTurk::QualificationRequest object:

  $service_obj->Method(Att1 => { Answer => $value, ..., WorkerId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MTurk::QualificationRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Answer

=head1 DESCRIPTION

The QualificationRequest data structure represents a request a Worker
has made for a Qualification.

=head1 ATTRIBUTES


=head2 Answer => Str

  The Worker's answers for the Qualification type's test contained in a
QuestionFormAnswers document, if the type has a test and the Worker has
submitted answers. If the Worker does not provide any answers, Answer
may be empty.


=head2 QualificationRequestId => Str

  The ID of the Qualification request, a unique identifier generated when
the request was submitted.


=head2 QualificationTypeId => Str

  The ID of the Qualification type the Worker is requesting, as returned
by the CreateQualificationType operation.


=head2 SubmitTime => Str

  The date and time the Qualification request had a status of Submitted.
This is either the time the Worker submitted answers for a
Qualification test, or the time the Worker requested the Qualification
if the Qualification type does not have a test.


=head2 Test => Str

  The contents of the Qualification test that was presented to the
Worker, if the type has a test and the Worker has submitted answers.
This value is identical to the QuestionForm associated with the
Qualification type at the time the Worker requests the Qualification.


=head2 WorkerId => Str

  The ID of the Worker requesting the Qualification.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

