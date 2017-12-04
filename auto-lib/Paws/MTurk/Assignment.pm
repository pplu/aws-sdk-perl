package Paws::MTurk::Assignment;
  use Moose;
  has AcceptTime => (is => 'ro', isa => 'Str');
  has Answer => (is => 'ro', isa => 'Str');
  has ApprovalTime => (is => 'ro', isa => 'Str');
  has AssignmentId => (is => 'ro', isa => 'Str');
  has AssignmentStatus => (is => 'ro', isa => 'Str');
  has AutoApprovalTime => (is => 'ro', isa => 'Str');
  has Deadline => (is => 'ro', isa => 'Str');
  has HITId => (is => 'ro', isa => 'Str');
  has RejectionTime => (is => 'ro', isa => 'Str');
  has RequesterFeedback => (is => 'ro', isa => 'Str');
  has SubmitTime => (is => 'ro', isa => 'Str');
  has WorkerId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::Assignment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MTurk::Assignment object:

  $service_obj->Method(Att1 => { AcceptTime => $value, ..., WorkerId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MTurk::Assignment object:

  $result = $service_obj->Method(...);
  $result->Att1->AcceptTime

=head1 DESCRIPTION

The Assignment data structure represents a single assignment of a HIT
to a Worker. The assignment tracks the Worker's efforts to complete the
HIT, and contains the results for later retrieval.

=head1 ATTRIBUTES


=head2 AcceptTime => Str

  The date and time the Worker accepted the assignment.


=head2 Answer => Str

  The Worker's answers submitted for the HIT contained in a
QuestionFormAnswers document, if the Worker provides an answer. If the
Worker does not provide any answers, Answer may contain a
QuestionFormAnswers document, or Answer may be empty.


=head2 ApprovalTime => Str

  If the Worker has submitted results and the Requester has approved the
results, ApprovalTime is the date and time the Requester approved the
results. This value is omitted from the assignment if the Requester has
not yet approved the results.


=head2 AssignmentId => Str

  A unique identifier for the assignment.


=head2 AssignmentStatus => Str

  The status of the assignment.


=head2 AutoApprovalTime => Str

  If results have been submitted, AutoApprovalTime is the date and time
the results of the assignment results are considered Approved
automatically if they have not already been explicitly approved or
rejected by the Requester. This value is derived from the auto-approval
delay specified by the Requester in the HIT. This value is omitted from
the assignment if the Worker has not yet submitted results.


=head2 Deadline => Str

  The date and time of the deadline for the assignment. This value is
derived from the deadline specification for the HIT and the date and
time the Worker accepted the HIT.


=head2 HITId => Str

  The ID of the HIT.


=head2 RejectionTime => Str

  If the Worker has submitted results and the Requester has rejected the
results, RejectionTime is the date and time the Requester rejected the
results.


=head2 RequesterFeedback => Str

  The feedback string included with the call to the ApproveAssignment
operation or the RejectAssignment operation, if the Requester approved
or rejected the assignment and specified feedback.


=head2 SubmitTime => Str

  If the Worker has submitted results, SubmitTime is the date and time
the assignment was submitted. This value is omitted from the assignment
if the Worker has not yet submitted results.


=head2 WorkerId => Str

  The ID of the Worker who accepted the HIT.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

