package Paws::MTurk::HIT;
  use Moose;
  has AssignmentDurationInSeconds => (is => 'ro', isa => 'Int');
  has AutoApprovalDelayInSeconds => (is => 'ro', isa => 'Int');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Expiration => (is => 'ro', isa => 'Str');
  has HITGroupId => (is => 'ro', isa => 'Str');
  has HITId => (is => 'ro', isa => 'Str');
  has HITLayoutId => (is => 'ro', isa => 'Str');
  has HITReviewStatus => (is => 'ro', isa => 'Str');
  has HITStatus => (is => 'ro', isa => 'Str');
  has HITTypeId => (is => 'ro', isa => 'Str');
  has Keywords => (is => 'ro', isa => 'Str');
  has MaxAssignments => (is => 'ro', isa => 'Int');
  has NumberOfAssignmentsAvailable => (is => 'ro', isa => 'Int');
  has NumberOfAssignmentsCompleted => (is => 'ro', isa => 'Int');
  has NumberOfAssignmentsPending => (is => 'ro', isa => 'Int');
  has QualificationRequirements => (is => 'ro', isa => 'ArrayRef[Paws::MTurk::QualificationRequirement]');
  has Question => (is => 'ro', isa => 'Str');
  has RequesterAnnotation => (is => 'ro', isa => 'Str');
  has Reward => (is => 'ro', isa => 'Str');
  has Title => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::HIT

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MTurk::HIT object:

  $service_obj->Method(Att1 => { AssignmentDurationInSeconds => $value, ..., Title => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MTurk::HIT object:

  $result = $service_obj->Method(...);
  $result->Att1->AssignmentDurationInSeconds

=head1 DESCRIPTION

The HIT data structure represents a single HIT, including all the
information necessary for a Worker to accept and complete the HIT.

=head1 ATTRIBUTES


=head2 AssignmentDurationInSeconds => Int

  The length of time, in seconds, that a Worker has to complete the HIT
after accepting it.


=head2 AutoApprovalDelayInSeconds => Int

  The amount of time, in seconds, after the Worker submits an assignment
for the HIT that the results are automatically approved by Amazon
Mechanical Turk. This is the amount of time the Requester has to reject
an assignment submitted by a Worker before the assignment is
auto-approved and the Worker is paid.


=head2 CreationTime => Str

  The date and time the HIT was created.


=head2 Description => Str

  A general description of the HIT.


=head2 Expiration => Str

  The date and time the HIT expires.


=head2 HITGroupId => Str

  The ID of the HIT Group of this HIT.


=head2 HITId => Str

  A unique identifier for the HIT.


=head2 HITLayoutId => Str

  The ID of the HIT Layout of this HIT.


=head2 HITReviewStatus => Str

  Indicates the review status of the HIT. Valid Values are NotReviewed |
MarkedForReview | ReviewedAppropriate | ReviewedInappropriate.


=head2 HITStatus => Str

  The status of the HIT and its assignments. Valid Values are Assignable
| Unassignable | Reviewable | Reviewing | Disposed.


=head2 HITTypeId => Str

  The ID of the HIT type of this HIT


=head2 Keywords => Str

  One or more words or phrases that describe the HIT, separated by
commas. Search terms similar to the keywords of a HIT are more likely
to have the HIT in the search results.


=head2 MaxAssignments => Int

  The number of times the HIT can be accepted and completed before the
HIT becomes unavailable.


=head2 NumberOfAssignmentsAvailable => Int

  The number of assignments for this HIT that are available for Workers
to accept.


=head2 NumberOfAssignmentsCompleted => Int

  The number of assignments for this HIT that have been approved or
rejected.


=head2 NumberOfAssignmentsPending => Int

  The number of assignments for this HIT that are being previewed or have
been accepted by Workers, but have not yet been submitted, returned, or
abandoned.


=head2 QualificationRequirements => ArrayRef[L<Paws::MTurk::QualificationRequirement>]

  Conditions that a Worker's Qualifications must meet in order to accept
the HIT. A HIT can have between zero and ten Qualification
requirements. All requirements must be met in order for a Worker to
accept the HIT. Additionally, other actions can be restricted using the
C<ActionsGuarded> field on each C<QualificationRequirement> structure.


=head2 Question => Str

  The data the Worker completing the HIT uses produce the results. This
is either either a QuestionForm, HTMLQuestion or an ExternalQuestion
data structure.


=head2 RequesterAnnotation => Str

  An arbitrary data field the Requester who created the HIT can use. This
field is visible only to the creator of the HIT.


=head2 Reward => Str

  


=head2 Title => Str

  The title of the HIT.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

