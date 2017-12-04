package Paws::MTurk;
  use Moose;
  sub service { 'mturk-requester' }
  sub version { '2017-01-17' }
  sub target_prefix { 'MTurkRequesterServiceV20170117' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AcceptQualificationRequest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::AcceptQualificationRequest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ApproveAssignment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::ApproveAssignment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateQualificationWithWorker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::AssociateQualificationWithWorker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAdditionalAssignmentsForHIT {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::CreateAdditionalAssignmentsForHIT', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHIT {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::CreateHIT', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHITType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::CreateHITType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHITWithHITType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::CreateHITWithHITType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateQualificationType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::CreateQualificationType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkerBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::CreateWorkerBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHIT {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::DeleteHIT', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteQualificationType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::DeleteQualificationType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkerBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::DeleteWorkerBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateQualificationFromWorker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::DisassociateQualificationFromWorker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccountBalance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::GetAccountBalance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssignment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::GetAssignment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFileUploadURL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::GetFileUploadURL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetHIT {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::GetHIT', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQualificationScore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::GetQualificationScore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQualificationType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::GetQualificationType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssignmentsForHIT {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::ListAssignmentsForHIT', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBonusPayments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::ListBonusPayments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHITs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::ListHITs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHITsForQualificationType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::ListHITsForQualificationType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQualificationRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::ListQualificationRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQualificationTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::ListQualificationTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReviewableHITs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::ListReviewableHITs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReviewPolicyResultsForHIT {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::ListReviewPolicyResultsForHIT', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkerBlocks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::ListWorkerBlocks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkersWithQualificationType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::ListWorkersWithQualificationType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub NotifyWorkers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::NotifyWorkers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectAssignment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::RejectAssignment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectQualificationRequest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::RejectQualificationRequest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendBonus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::SendBonus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendTestEventNotification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::SendTestEventNotification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateExpirationForHIT {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::UpdateExpirationForHIT', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateHITReviewStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::UpdateHITReviewStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateHITTypeOfHIT {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::UpdateHITTypeOfHIT', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNotificationSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::UpdateNotificationSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQualificationType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MTurk::UpdateQualificationType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AcceptQualificationRequest ApproveAssignment AssociateQualificationWithWorker CreateAdditionalAssignmentsForHIT CreateHIT CreateHITType CreateHITWithHITType CreateQualificationType CreateWorkerBlock DeleteHIT DeleteQualificationType DeleteWorkerBlock DisassociateQualificationFromWorker GetAccountBalance GetAssignment GetFileUploadURL GetHIT GetQualificationScore GetQualificationType ListAssignmentsForHIT ListBonusPayments ListHITs ListHITsForQualificationType ListQualificationRequests ListQualificationTypes ListReviewableHITs ListReviewPolicyResultsForHIT ListWorkerBlocks ListWorkersWithQualificationType NotifyWorkers RejectAssignment RejectQualificationRequest SendBonus SendTestEventNotification UpdateExpirationForHIT UpdateHITReviewStatus UpdateHITTypeOfHIT UpdateNotificationSettings UpdateQualificationType / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk - Perl Interface to AWS Amazon Mechanical Turk

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MTurk');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Mechanical Turk API Reference

=head1 METHODS

=head2 AcceptQualificationRequest(QualificationRequestId => Str, [IntegerValue => Int])

Each argument is described in detail in: L<Paws::MTurk::AcceptQualificationRequest>

Returns: a L<Paws::MTurk::AcceptQualificationRequestResponse> instance

The C<AcceptQualificationRequest> operation approves a Worker's request
for a Qualification.

Only the owner of the Qualification type can grant a Qualification
request for that type.

A successful request for the C<AcceptQualificationRequest> operation
returns with no errors and an empty body.


=head2 ApproveAssignment(AssignmentId => Str, [OverrideRejection => Bool, RequesterFeedback => Str])

Each argument is described in detail in: L<Paws::MTurk::ApproveAssignment>

Returns: a L<Paws::MTurk::ApproveAssignmentResponse> instance

The C<ApproveAssignment> operation approves the results of a completed
assignment.

Approving an assignment initiates two payments from the Requester's
Amazon.com account

=over

=item *

The Worker who submitted the results is paid the reward specified in
the HIT.

=item *

Amazon Mechanical Turk fees are debited.

=back

If the Requester's account does not have adequate funds for these
payments, the call to ApproveAssignment returns an exception, and the
approval is not processed. You can include an optional feedback message
with the approval, which the Worker can see in the Status section of
the web site.

You can also call this operation for assignments that were previous
rejected and approve them by explicitly overriding the previous
rejection. This only works on rejected assignments that were submitted
within the previous 30 days and only if the assignment's related HIT
has not been deleted.


=head2 AssociateQualificationWithWorker(QualificationTypeId => Str, WorkerId => Str, [IntegerValue => Int, SendNotification => Bool])

Each argument is described in detail in: L<Paws::MTurk::AssociateQualificationWithWorker>

Returns: a L<Paws::MTurk::AssociateQualificationWithWorkerResponse> instance

The C<AssociateQualificationWithWorker> operation gives a Worker a
Qualification. C<AssociateQualificationWithWorker> does not require
that the Worker submit a Qualification request. It gives the
Qualification directly to the Worker.

You can only assign a Qualification of a Qualification type that you
created (using the C<CreateQualificationType> operation).

Note: C<AssociateQualificationWithWorker> does not affect any pending
Qualification requests for the Qualification by the Worker. If you
assign a Qualification to a Worker, then later grant a Qualification
request made by the Worker, the granting of the request may modify the
Qualification score. To resolve a pending Qualification request without
affecting the Qualification the Worker already has, reject the request
with the C<RejectQualificationRequest> operation.


=head2 CreateAdditionalAssignmentsForHIT(HITId => Str, NumberOfAdditionalAssignments => Int, [UniqueRequestToken => Str])

Each argument is described in detail in: L<Paws::MTurk::CreateAdditionalAssignmentsForHIT>

Returns: a L<Paws::MTurk::CreateAdditionalAssignmentsForHITResponse> instance

The C<CreateAdditionalAssignmentsForHIT> operation increases the
maximum number of assignments of an existing HIT.

To extend the maximum number of assignments, specify the number of
additional assignments.

=over

=item *

HITs created with fewer than 10 assignments cannot be extended to have
10 or more assignments. Attempting to add assignments in a way that
brings the total number of assignments for a HIT from fewer than 10
assignments to 10 or more assignments will result in an
C<AWS.MechanicalTurk.InvalidMaximumAssignmentsIncrease> exception.

=item *

HITs that were created before July 22, 2015 cannot be extended.
Attempting to extend HITs that were created before July 22, 2015 will
result in an C<AWS.MechanicalTurk.HITTooOldForExtension> exception.

=back



=head2 CreateHIT(AssignmentDurationInSeconds => Int, Description => Str, LifetimeInSeconds => Int, Reward => Str, Title => Str, [AssignmentReviewPolicy => L<Paws::MTurk::ReviewPolicy>, AutoApprovalDelayInSeconds => Int, HITLayoutId => Str, HITLayoutParameters => ArrayRef[L<Paws::MTurk::HITLayoutParameter>], HITReviewPolicy => L<Paws::MTurk::ReviewPolicy>, Keywords => Str, MaxAssignments => Int, QualificationRequirements => ArrayRef[L<Paws::MTurk::QualificationRequirement>], Question => Str, RequesterAnnotation => Str, UniqueRequestToken => Str])

Each argument is described in detail in: L<Paws::MTurk::CreateHIT>

Returns: a L<Paws::MTurk::CreateHITResponse> instance

The C<CreateHIT> operation creates a new Human Intelligence Task (HIT).
The new HIT is made available for Workers to find and accept on the
Amazon Mechanical Turk website.

This operation allows you to specify a new HIT by passing in values for
the properties of the HIT, such as its title, reward amount and number
of assignments. When you pass these values to C<CreateHIT>, a new HIT
is created for you, with a new C<HITTypeID>. The HITTypeID can be used
to create additional HITs in the future without needing to specify
common parameters such as the title, description and reward amount each
time.

An alternative way to create HITs is to first generate a HITTypeID
using the C<CreateHITType> operation and then call the
C<CreateHITWithHITType> operation. This is the recommended best
practice for Requesters who are creating large numbers of HITs.

CreateHIT also supports several ways to provide question data: by
providing a value for the C<Question> parameter that fully specifies
the contents of the HIT, or by providing a C<HitLayoutId> and
associated C<HitLayoutParameters>.

If a HIT is created with 10 or more maximum assignments, there is an
additional fee. For more information, see Amazon Mechanical Turk
Pricing (https://requester.mturk.com/pricing).


=head2 CreateHITType(AssignmentDurationInSeconds => Int, Description => Str, Reward => Str, Title => Str, [AutoApprovalDelayInSeconds => Int, Keywords => Str, QualificationRequirements => ArrayRef[L<Paws::MTurk::QualificationRequirement>]])

Each argument is described in detail in: L<Paws::MTurk::CreateHITType>

Returns: a L<Paws::MTurk::CreateHITTypeResponse> instance

The C<CreateHITType> operation creates a new HIT type. This operation
allows you to define a standard set of HIT properties to use when
creating HITs. If you register a HIT type with values that match an
existing HIT type, the HIT type ID of the existing type will be
returned.


=head2 CreateHITWithHITType(HITTypeId => Str, LifetimeInSeconds => Int, [AssignmentReviewPolicy => L<Paws::MTurk::ReviewPolicy>, HITLayoutId => Str, HITLayoutParameters => ArrayRef[L<Paws::MTurk::HITLayoutParameter>], HITReviewPolicy => L<Paws::MTurk::ReviewPolicy>, MaxAssignments => Int, Question => Str, RequesterAnnotation => Str, UniqueRequestToken => Str])

Each argument is described in detail in: L<Paws::MTurk::CreateHITWithHITType>

Returns: a L<Paws::MTurk::CreateHITWithHITTypeResponse> instance

The C<CreateHITWithHITType> operation creates a new Human Intelligence
Task (HIT) using an existing HITTypeID generated by the
C<CreateHITType> operation.

This is an alternative way to create HITs from the C<CreateHIT>
operation. This is the recommended best practice for Requesters who are
creating large numbers of HITs.

CreateHITWithHITType also supports several ways to provide question
data: by providing a value for the C<Question> parameter that fully
specifies the contents of the HIT, or by providing a C<HitLayoutId> and
associated C<HitLayoutParameters>.

If a HIT is created with 10 or more maximum assignments, there is an
additional fee. For more information, see Amazon Mechanical Turk
Pricing (https://requester.mturk.com/pricing).


=head2 CreateQualificationType(Description => Str, Name => Str, QualificationTypeStatus => Str, [AnswerKey => Str, AutoGranted => Bool, AutoGrantedValue => Int, Keywords => Str, RetryDelayInSeconds => Int, Test => Str, TestDurationInSeconds => Int])

Each argument is described in detail in: L<Paws::MTurk::CreateQualificationType>

Returns: a L<Paws::MTurk::CreateQualificationTypeResponse> instance

The C<CreateQualificationType> operation creates a new Qualification
type, which is represented by a C<QualificationType> data structure.


=head2 CreateWorkerBlock(Reason => Str, WorkerId => Str)

Each argument is described in detail in: L<Paws::MTurk::CreateWorkerBlock>

Returns: a L<Paws::MTurk::CreateWorkerBlockResponse> instance

The C<CreateWorkerBlock> operation allows you to prevent a Worker from
working on your HITs. For example, you can block a Worker who is
producing poor quality work. You can block up to 100,000 Workers.


=head2 DeleteHIT(HITId => Str)

Each argument is described in detail in: L<Paws::MTurk::DeleteHIT>

Returns: a L<Paws::MTurk::DeleteHITResponse> instance

The C<DeleteHIT> operation is used to delete HIT that is no longer
needed. Only the Requester who created the HIT can delete it.

You can only dispose of HITs that are in the C<Reviewable> state, with
all of their submitted assignments already either approved or rejected.
If you call the DeleteHIT operation on a HIT that is not in the
C<Reviewable> state (for example, that has not expired, or still has
active assignments), or on a HIT that is Reviewable but without all of
its submitted assignments already approved or rejected, the service
will return an error.

=over

=item *

HITs are automatically disposed of after 120 days.

=item *

After you dispose of a HIT, you can no longer approve the HIT's
rejected assignments.

=item *

Disposed HITs are not returned in results for the ListHITs operation.

=item *

Disposing HITs can improve the performance of operations such as
ListReviewableHITs and ListHITs.

=back



=head2 DeleteQualificationType(QualificationTypeId => Str)

Each argument is described in detail in: L<Paws::MTurk::DeleteQualificationType>

Returns: a L<Paws::MTurk::DeleteQualificationTypeResponse> instance

The C<DeleteQualificationType> deletes a Qualification type and deletes
any HIT types that are associated with the Qualification type.

This operation does not revoke Qualifications already assigned to
Workers because the Qualifications might be needed for active HITs. If
there are any pending requests for the Qualification type, Amazon
Mechanical Turk rejects those requests. After you delete a
Qualification type, you can no longer use it to create HITs or HIT
types.

DeleteQualificationType must wait for all the HITs that use the deleted
Qualification type to be deleted before completing. It may take up to
48 hours before DeleteQualificationType completes and the unique name
of the Qualification type is available for reuse with
CreateQualificationType.


=head2 DeleteWorkerBlock(WorkerId => Str, [Reason => Str])

Each argument is described in detail in: L<Paws::MTurk::DeleteWorkerBlock>

Returns: a L<Paws::MTurk::DeleteWorkerBlockResponse> instance

The C<DeleteWorkerBlock> operation allows you to reinstate a blocked
Worker to work on your HITs. This operation reverses the effects of the
CreateWorkerBlock operation. You need the Worker ID to use this
operation. If the Worker ID is missing or invalid, this operation fails
and returns the message E<ldquo>WorkerId is invalid.E<rdquo> If the
specified Worker is not blocked, this operation returns successfully.


=head2 DisassociateQualificationFromWorker(QualificationTypeId => Str, WorkerId => Str, [Reason => Str])

Each argument is described in detail in: L<Paws::MTurk::DisassociateQualificationFromWorker>

Returns: a L<Paws::MTurk::DisassociateQualificationFromWorkerResponse> instance

The C<DisassociateQualificationFromWorker> revokes a previously granted
Qualification from a user.

You can provide a text message explaining why the Qualification was
revoked. The user who had the Qualification can see this message.


=head2 GetAccountBalance()

Each argument is described in detail in: L<Paws::MTurk::GetAccountBalance>

Returns: a L<Paws::MTurk::GetAccountBalanceResponse> instance

The C<GetAccountBalance> operation retrieves the amount of money in
your Amazon Mechanical Turk account.


=head2 GetAssignment(AssignmentId => Str)

Each argument is described in detail in: L<Paws::MTurk::GetAssignment>

Returns: a L<Paws::MTurk::GetAssignmentResponse> instance

The C<GetAssignment> operation retrieves the details of the specified
Assignment.


=head2 GetFileUploadURL(AssignmentId => Str, QuestionIdentifier => Str)

Each argument is described in detail in: L<Paws::MTurk::GetFileUploadURL>

Returns: a L<Paws::MTurk::GetFileUploadURLResponse> instance

The C<GetFileUploadURL> operation generates and returns a temporary
URL. You use the temporary URL to retrieve a file uploaded by a Worker
as an answer to a FileUploadAnswer question for a HIT. The temporary
URL is generated the instant the GetFileUploadURL operation is called,
and is valid for 60 seconds. You can get a temporary file upload URL
any time until the HIT is disposed. After the HIT is disposed, any
uploaded files are deleted, and cannot be retrieved.


=head2 GetHIT(HITId => Str)

Each argument is described in detail in: L<Paws::MTurk::GetHIT>

Returns: a L<Paws::MTurk::GetHITResponse> instance

The C<GetHIT> operation retrieves the details of the specified HIT.


=head2 GetQualificationScore(QualificationTypeId => Str, WorkerId => Str)

Each argument is described in detail in: L<Paws::MTurk::GetQualificationScore>

Returns: a L<Paws::MTurk::GetQualificationScoreResponse> instance

The C<GetQualificationScore> operation returns the value of a Worker's
Qualification for a given Qualification type.

To get a Worker's Qualification, you must know the Worker's ID. The
Worker's ID is included in the assignment data returned by the
C<ListAssignmentsForHIT> operation.

Only the owner of a Qualification type can query the value of a
Worker's Qualification of that type.


=head2 GetQualificationType(QualificationTypeId => Str)

Each argument is described in detail in: L<Paws::MTurk::GetQualificationType>

Returns: a L<Paws::MTurk::GetQualificationTypeResponse> instance

The C<GetQualificationType>operation retrieves information about a
Qualification type using its ID.


=head2 ListAssignmentsForHIT(HITId => Str, [AssignmentStatuses => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::MTurk::ListAssignmentsForHIT>

Returns: a L<Paws::MTurk::ListAssignmentsForHITResponse> instance

The C<ListAssignmentsForHIT> operation retrieves completed assignments
for a HIT. You can use this operation to retrieve the results for a
HIT.

You can get assignments for a HIT at any time, even if the HIT is not
yet Reviewable. If a HIT requested multiple assignments, and has
received some results but has not yet become Reviewable, you can still
retrieve the partial results with this operation.

Use the AssignmentStatus parameter to control which set of assignments
for a HIT are returned. The ListAssignmentsForHIT operation can return
submitted assignments awaiting approval, or it can return assignments
that have already been approved or rejected. You can set
AssignmentStatus=Approved,Rejected to get assignments that have already
been approved and rejected together in one result set.

Only the Requester who created the HIT can retrieve the assignments for
that HIT.

Results are sorted and divided into numbered pages and the operation
returns a single page of results. You can use the parameters of the
operation to control sorting and pagination.


=head2 ListBonusPayments([AssignmentId => Str, HITId => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::MTurk::ListBonusPayments>

Returns: a L<Paws::MTurk::ListBonusPaymentsResponse> instance

The C<ListBonusPayments> operation retrieves the amounts of bonuses you
have paid to Workers for a given HIT or assignment.


=head2 ListHITs([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::MTurk::ListHITs>

Returns: a L<Paws::MTurk::ListHITsResponse> instance

The C<ListHITs> operation returns all of a Requester's HITs. The
operation returns HITs of any status, except for HITs that have been
deleted of with the DeleteHIT operation or that have been auto-deleted.


=head2 ListHITsForQualificationType(QualificationTypeId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::MTurk::ListHITsForQualificationType>

Returns: a L<Paws::MTurk::ListHITsForQualificationTypeResponse> instance

The C<ListHITsForQualificationType> operation returns the HITs that use
the given Qualification type for a Qualification requirement. The
operation returns HITs of any status, except for HITs that have been
deleted with the C<DeleteHIT> operation or that have been auto-deleted.


=head2 ListQualificationRequests([MaxResults => Int, NextToken => Str, QualificationTypeId => Str])

Each argument is described in detail in: L<Paws::MTurk::ListQualificationRequests>

Returns: a L<Paws::MTurk::ListQualificationRequestsResponse> instance

The C<ListQualificationRequests> operation retrieves requests for
Qualifications of a particular Qualification type. The owner of the
Qualification type calls this operation to poll for pending requests,
and accepts them using the AcceptQualification operation.


=head2 ListQualificationTypes(MustBeRequestable => Bool, [MaxResults => Int, MustBeOwnedByCaller => Bool, NextToken => Str, Query => Str])

Each argument is described in detail in: L<Paws::MTurk::ListQualificationTypes>

Returns: a L<Paws::MTurk::ListQualificationTypesResponse> instance

The C<ListQualificationRequests> operation retrieves requests for
Qualifications of a particular Qualification type. The owner of the
Qualification type calls this operation to poll for pending requests,
and accepts them using the AcceptQualification operation.


=head2 ListReviewableHITs([HITTypeId => Str, MaxResults => Int, NextToken => Str, Status => Str])

Each argument is described in detail in: L<Paws::MTurk::ListReviewableHITs>

Returns: a L<Paws::MTurk::ListReviewableHITsResponse> instance

The C<ListReviewableHITs> operation retrieves the HITs with Status
equal to Reviewable or Status equal to Reviewing that belong to the
Requester calling the operation.


=head2 ListReviewPolicyResultsForHIT(HITId => Str, [MaxResults => Int, NextToken => Str, PolicyLevels => ArrayRef[Str|Undef], RetrieveActions => Bool, RetrieveResults => Bool])

Each argument is described in detail in: L<Paws::MTurk::ListReviewPolicyResultsForHIT>

Returns: a L<Paws::MTurk::ListReviewPolicyResultsForHITResponse> instance

The C<ListReviewPolicyResultsForHIT> operation retrieves the computed
results and the actions taken in the course of executing your Review
Policies for a given HIT. For information about how to specify Review
Policies when you call CreateHIT, see Review Policies. The
ListReviewPolicyResultsForHIT operation can return results for both
Assignment-level and HIT-level review results.


=head2 ListWorkerBlocks([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::MTurk::ListWorkerBlocks>

Returns: a L<Paws::MTurk::ListWorkerBlocksResponse> instance

The C<ListWorkersBlocks> operation retrieves a list of Workers who are
blocked from working on your HITs.


=head2 ListWorkersWithQualificationType(QualificationTypeId => Str, [MaxResults => Int, NextToken => Str, Status => Str])

Each argument is described in detail in: L<Paws::MTurk::ListWorkersWithQualificationType>

Returns: a L<Paws::MTurk::ListWorkersWithQualificationTypeResponse> instance

The C<ListWorkersWithQualificationType> operation returns all of the
Workers that have been associated with a given Qualification type.


=head2 NotifyWorkers(MessageText => Str, Subject => Str, WorkerIds => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::MTurk::NotifyWorkers>

Returns: a L<Paws::MTurk::NotifyWorkersResponse> instance

The C<NotifyWorkers> operation sends an email to one or more Workers
that you specify with the Worker ID. You can specify up to 100 Worker
IDs to send the same message with a single call to the NotifyWorkers
operation. The NotifyWorkers operation will send a notification email
to a Worker only if you have previously approved or rejected work from
the Worker.


=head2 RejectAssignment(AssignmentId => Str, RequesterFeedback => Str)

Each argument is described in detail in: L<Paws::MTurk::RejectAssignment>

Returns: a L<Paws::MTurk::RejectAssignmentResponse> instance

The C<RejectAssignment> operation rejects the results of a completed
assignment.

You can include an optional feedback message with the rejection, which
the Worker can see in the Status section of the web site. When you
include a feedback message with the rejection, it helps the Worker
understand why the assignment was rejected, and can improve the quality
of the results the Worker submits in the future.

Only the Requester who created the HIT can reject an assignment for the
HIT.


=head2 RejectQualificationRequest(QualificationRequestId => Str, [Reason => Str])

Each argument is described in detail in: L<Paws::MTurk::RejectQualificationRequest>

Returns: a L<Paws::MTurk::RejectQualificationRequestResponse> instance

The C<RejectQualificationRequest> operation rejects a user's request
for a Qualification.

You can provide a text message explaining why the request was rejected.
The Worker who made the request can see this message.


=head2 SendBonus(AssignmentId => Str, BonusAmount => Str, Reason => Str, WorkerId => Str, [UniqueRequestToken => Str])

Each argument is described in detail in: L<Paws::MTurk::SendBonus>

Returns: a L<Paws::MTurk::SendBonusResponse> instance

The C<SendBonus> operation issues a payment of money from your account
to a Worker. This payment happens separately from the reward you pay to
the Worker when you approve the Worker's assignment. The SendBonus
operation requires the Worker's ID and the assignment ID as parameters
to initiate payment of the bonus. You must include a message that
explains the reason for the bonus payment, as the Worker may not be
expecting the payment. Amazon Mechanical Turk collects a fee for bonus
payments, similar to the HIT listing fee. This operation fails if your
account does not have enough funds to pay for both the bonus and the
fees.


=head2 SendTestEventNotification(Notification => L<Paws::MTurk::NotificationSpecification>, TestEventType => Str)

Each argument is described in detail in: L<Paws::MTurk::SendTestEventNotification>

Returns: a L<Paws::MTurk::SendTestEventNotificationResponse> instance

The C<SendTestEventNotification> operation causes Amazon Mechanical
Turk to send a notification message as if a HIT event occurred,
according to the provided notification specification. This allows you
to test notifications without setting up notifications for a real HIT
type and trying to trigger them using the website. When you call this
operation, the service attempts to send the test notification
immediately.


=head2 UpdateExpirationForHIT(ExpireAt => Str, HITId => Str)

Each argument is described in detail in: L<Paws::MTurk::UpdateExpirationForHIT>

Returns: a L<Paws::MTurk::UpdateExpirationForHITResponse> instance

The C<UpdateExpirationForHIT> operation allows you update the
expiration time of a HIT. If you update it to a time in the past, the
HIT will be immediately expired.


=head2 UpdateHITReviewStatus(HITId => Str, [Revert => Bool])

Each argument is described in detail in: L<Paws::MTurk::UpdateHITReviewStatus>

Returns: a L<Paws::MTurk::UpdateHITReviewStatusResponse> instance

The C<UpdateHITReviewStatus> operation updates the status of a HIT. If
the status is Reviewable, this operation can update the status to
Reviewing, or it can revert a Reviewing HIT back to the Reviewable
status.


=head2 UpdateHITTypeOfHIT(HITId => Str, HITTypeId => Str)

Each argument is described in detail in: L<Paws::MTurk::UpdateHITTypeOfHIT>

Returns: a L<Paws::MTurk::UpdateHITTypeOfHITResponse> instance

The C<UpdateHITTypeOfHIT> operation allows you to change the HITType
properties of a HIT. This operation disassociates the HIT from its old
HITType properties and associates it with the new HITType properties.
The HIT takes on the properties of the new HITType in place of the old
ones.


=head2 UpdateNotificationSettings(HITTypeId => Str, [Active => Bool, Notification => L<Paws::MTurk::NotificationSpecification>])

Each argument is described in detail in: L<Paws::MTurk::UpdateNotificationSettings>

Returns: a L<Paws::MTurk::UpdateNotificationSettingsResponse> instance

The C<UpdateNotificationSettings> operation creates, updates, disables
or re-enables notifications for a HIT type. If you call the
UpdateNotificationSettings operation for a HIT type that already has a
notification specification, the operation replaces the old
specification with a new one. You can call the
UpdateNotificationSettings operation to enable or disable notifications
for the HIT type, without having to modify the notification
specification itself by providing updates to the Active status without
specifying a new notification specification. To change the Active
status of a HIT type's notifications, the HIT type must already have a
notification specification, or one must be provided in the same call to
C<UpdateNotificationSettings>.


=head2 UpdateQualificationType(QualificationTypeId => Str, [AnswerKey => Str, AutoGranted => Bool, AutoGrantedValue => Int, Description => Str, QualificationTypeStatus => Str, RetryDelayInSeconds => Int, Test => Str, TestDurationInSeconds => Int])

Each argument is described in detail in: L<Paws::MTurk::UpdateQualificationType>

Returns: a L<Paws::MTurk::UpdateQualificationTypeResponse> instance

The C<UpdateQualificationType> operation modifies the attributes of an
existing Qualification type, which is represented by a
QualificationType data structure. Only the owner of a Qualification
type can modify its attributes.

Most attributes of a Qualification type can be changed after the type
has been created. However, the Name and Keywords fields cannot be
modified. The RetryDelayInSeconds parameter can be modified or added to
change the delay or to enable retries, but RetryDelayInSeconds cannot
be used to disable retries.

You can use this operation to update the test for a Qualification type.
The test is updated based on the values specified for the Test,
TestDurationInSeconds and AnswerKey parameters. All three parameters
specify the updated test. If you are updating the test for a type, you
must specify the Test and TestDurationInSeconds parameters. The
AnswerKey parameter is optional; omitting it specifies that the updated
test does not have an answer key.

If you omit the Test parameter, the test for the Qualification type is
unchanged. There is no way to remove a test from a Qualification type
that has one. If the type already has a test, you cannot update it to
be AutoGranted. If the Qualification type does not have a test and one
is provided by an update, the type will henceforth have a test.

If you want to update the test duration or answer key for an existing
test without changing the questions, you must specify a Test parameter
with the original questions, along with the updated values.

If you provide an updated Test but no AnswerKey, the new test will not
have an answer key. Requests for such Qualifications must be granted
manually.

You can also update the AutoGranted and AutoGrantedValue attributes of
the Qualification type.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

