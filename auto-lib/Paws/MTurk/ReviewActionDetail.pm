package Paws::MTurk::ReviewActionDetail;
  use Moose;
  has ActionId => (is => 'ro', isa => 'Str');
  has ActionName => (is => 'ro', isa => 'Str');
  has CompleteTime => (is => 'ro', isa => 'Str');
  has ErrorCode => (is => 'ro', isa => 'Str');
  has Result => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TargetId => (is => 'ro', isa => 'Str');
  has TargetType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ReviewActionDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MTurk::ReviewActionDetail object:

  $service_obj->Method(Att1 => { ActionId => $value, ..., TargetType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MTurk::ReviewActionDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionId

=head1 DESCRIPTION

Both the AssignmentReviewReport and the HITReviewReport elements
contains the ReviewActionDetail data structure. This structure is
returned multiple times for each action specified in the Review Policy.

=head1 ATTRIBUTES


=head2 ActionId => Str

  The unique identifier for the action.


=head2 ActionName => Str

  The nature of the action itself. The Review Policy is responsible for
examining the HIT and Assignments, emitting results, and deciding which
other actions will be necessary.


=head2 CompleteTime => Str

  The date when the action was completed.


=head2 ErrorCode => Str

  Present only when the Results have a FAILED Status.


=head2 Result => Str

  A description of the outcome of the review.


=head2 Status => Str

  The current disposition of the action: INTENDED, SUCCEEDED, FAILED, or
CANCELLED.


=head2 TargetId => Str

  The specific HITId or AssignmentID targeted by the action.


=head2 TargetType => Str

  The type of object in TargetId.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

