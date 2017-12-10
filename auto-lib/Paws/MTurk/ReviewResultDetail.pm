package Paws::MTurk::ReviewResultDetail;
  use Moose;
  has ActionId => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str');
  has QuestionId => (is => 'ro', isa => 'Str');
  has SubjectId => (is => 'ro', isa => 'Str');
  has SubjectType => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ReviewResultDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MTurk::ReviewResultDetail object:

  $service_obj->Method(Att1 => { ActionId => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MTurk::ReviewResultDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionId

=head1 DESCRIPTION

This data structure is returned multiple times for each result
specified in the Review Policy.

=head1 ATTRIBUTES


=head2 ActionId => Str

  A unique identifier of the Review action result.


=head2 Key => Str

  Key identifies the particular piece of reviewed information.


=head2 QuestionId => Str

  Specifies the QuestionId the result is describing. Depending on whether
the TargetType is a HIT or Assignment this results could specify
multiple values. If TargetType is HIT and QuestionId is absent, then
the result describes results of the HIT, including the HIT agreement
score. If ObjectType is Assignment and QuestionId is absent, then the
result describes the Worker's performance on the HIT.


=head2 SubjectId => Str

  The HITID or AssignmentId about which this result was taken. Note that
HIT-level Review Policies will often emit results about both the HIT
itself and its Assignments, while Assignment-level review policies
generally only emit results about the Assignment itself.


=head2 SubjectType => Str

  The type of the object from the SubjectId field.


=head2 Value => Str

  The values of Key provided by the review policies you have selected.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

