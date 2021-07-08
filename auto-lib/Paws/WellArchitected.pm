package Paws::WellArchitected;
  use Moose;
  sub service { 'wellarchitected' }
  sub signing_name { 'wellarchitected' }
  sub version { '2020-03-31' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateLenses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::AssociateLenses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMilestone {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::CreateMilestone', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::CreateWorkload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkloadShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::CreateWorkloadShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::DeleteWorkload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkloadShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::DeleteWorkloadShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateLenses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::DisassociateLenses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAnswer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::GetAnswer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLensReview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::GetLensReview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLensReviewReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::GetLensReviewReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLensVersionDifference {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::GetLensVersionDifference', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMilestone {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::GetMilestone', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::GetWorkload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAnswers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListAnswers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLenses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListLenses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLensReviewImprovements {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListLensReviewImprovements', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLensReviews {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListLensReviews', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMilestones {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListMilestones', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNotifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListNotifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListShareInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListShareInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkloads {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListWorkloads', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkloadShares {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListWorkloadShares', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAnswer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UpdateAnswer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLensReview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UpdateLensReview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateShareInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UpdateShareInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UpdateWorkload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkloadShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UpdateWorkloadShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpgradeLensReview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UpgradeLensReview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateLenses CreateMilestone CreateWorkload CreateWorkloadShare DeleteWorkload DeleteWorkloadShare DisassociateLenses GetAnswer GetLensReview GetLensReviewReport GetLensVersionDifference GetMilestone GetWorkload ListAnswers ListLenses ListLensReviewImprovements ListLensReviews ListMilestones ListNotifications ListShareInvitations ListTagsForResource ListWorkloads ListWorkloadShares TagResource UntagResource UpdateAnswer UpdateLensReview UpdateShareInvitation UpdateWorkload UpdateWorkloadShare UpgradeLensReview / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected - Perl Interface to AWS AWS Well-Architected Tool

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('WellArchitected');
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

AWS Well-Architected Tool

This is the I<AWS Well-Architected Tool API Reference>. The AWS
Well-Architected Tool API provides programmatic access to the AWS
Well-Architected Tool (http://aws.amazon.com/well-architected-tool) in
the AWS Management Console
(https://console.aws.amazon.com/wellarchitected). For information about
the AWS Well-Architected Tool, see the AWS Well-Architected Tool User
Guide
(https://docs.aws.amazon.com/wellarchitected/latest/userguide/intro.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31>


=head1 METHODS

=head2 AssociateLenses

=over

=item LensAliases => ArrayRef[Str|Undef]

=item WorkloadId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::AssociateLenses>

Returns: nothing

Associate a lens to a workload.


=head2 CreateMilestone

=over

=item ClientRequestToken => Str

=item MilestoneName => Str

=item WorkloadId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::CreateMilestone>

Returns: a L<Paws::WellArchitected::CreateMilestoneOutput> instance

Create a milestone for an existing workload.


=head2 CreateWorkload

=over

=item ClientRequestToken => Str

=item Description => Str

=item Environment => Str

=item Lenses => ArrayRef[Str|Undef]

=item ReviewOwner => Str

=item WorkloadName => Str

=item [AccountIds => ArrayRef[Str|Undef]]

=item [ArchitecturalDesign => Str]

=item [AwsRegions => ArrayRef[Str|Undef]]

=item [Industry => Str]

=item [IndustryType => Str]

=item [NonAwsRegions => ArrayRef[Str|Undef]]

=item [Notes => Str]

=item [PillarPriorities => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::WellArchitected::TagMap>]


=back

Each argument is described in detail in: L<Paws::WellArchitected::CreateWorkload>

Returns: a L<Paws::WellArchitected::CreateWorkloadOutput> instance

Create a new workload.

The owner of a workload can share the workload with other AWS accounts
and IAM users in the same AWS Region. Only the owner of a workload can
delete it.

For more information, see Defining a Workload
(https://docs.aws.amazon.com/wellarchitected/latest/userguide/define-workload.html)
in the I<AWS Well-Architected Tool User Guide>.


=head2 CreateWorkloadShare

=over

=item ClientRequestToken => Str

=item PermissionType => Str

=item SharedWith => Str

=item WorkloadId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::CreateWorkloadShare>

Returns: a L<Paws::WellArchitected::CreateWorkloadShareOutput> instance

Create a workload share.

The owner of a workload can share it with other AWS accounts and IAM
users in the same AWS Region. Shared access to a workload is not
removed until the workload invitation is deleted.

For more information, see Sharing a Workload
(https://docs.aws.amazon.com/wellarchitected/latest/userguide/workloads-sharing.html)
in the I<AWS Well-Architected Tool User Guide>.


=head2 DeleteWorkload

=over

=item ClientRequestToken => Str

=item WorkloadId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::DeleteWorkload>

Returns: nothing

Delete an existing workload.


=head2 DeleteWorkloadShare

=over

=item ClientRequestToken => Str

=item ShareId => Str

=item WorkloadId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::DeleteWorkloadShare>

Returns: nothing

Delete a workload share.


=head2 DisassociateLenses

=over

=item LensAliases => ArrayRef[Str|Undef]

=item WorkloadId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::DisassociateLenses>

Returns: nothing

Disassociate a lens from a workload.

The AWS Well-Architected Framework lens (C<wellarchitected>) cannot be
removed from a workload.


=head2 GetAnswer

=over

=item LensAlias => Str

=item QuestionId => Str

=item WorkloadId => Str

=item [MilestoneNumber => Int]


=back

Each argument is described in detail in: L<Paws::WellArchitected::GetAnswer>

Returns: a L<Paws::WellArchitected::GetAnswerOutput> instance

Get lens review.


=head2 GetLensReview

=over

=item LensAlias => Str

=item WorkloadId => Str

=item [MilestoneNumber => Int]


=back

Each argument is described in detail in: L<Paws::WellArchitected::GetLensReview>

Returns: a L<Paws::WellArchitected::GetLensReviewOutput> instance

Get lens review.


=head2 GetLensReviewReport

=over

=item LensAlias => Str

=item WorkloadId => Str

=item [MilestoneNumber => Int]


=back

Each argument is described in detail in: L<Paws::WellArchitected::GetLensReviewReport>

Returns: a L<Paws::WellArchitected::GetLensReviewReportOutput> instance

Get lens review report.


=head2 GetLensVersionDifference

=over

=item BaseLensVersion => Str

=item LensAlias => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::GetLensVersionDifference>

Returns: a L<Paws::WellArchitected::GetLensVersionDifferenceOutput> instance

Get lens version differences.


=head2 GetMilestone

=over

=item MilestoneNumber => Int

=item WorkloadId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::GetMilestone>

Returns: a L<Paws::WellArchitected::GetMilestoneOutput> instance

Get a milestone for an existing workload.


=head2 GetWorkload

=over

=item WorkloadId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::GetWorkload>

Returns: a L<Paws::WellArchitected::GetWorkloadOutput> instance

Get an existing workload.


=head2 ListAnswers

=over

=item LensAlias => Str

=item WorkloadId => Str

=item [MaxResults => Int]

=item [MilestoneNumber => Int]

=item [NextToken => Str]

=item [PillarId => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListAnswers>

Returns: a L<Paws::WellArchitected::ListAnswersOutput> instance

List of answers.


=head2 ListLenses

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListLenses>

Returns: a L<Paws::WellArchitected::ListLensesOutput> instance

List the available lenses.


=head2 ListLensReviewImprovements

=over

=item LensAlias => Str

=item WorkloadId => Str

=item [MaxResults => Int]

=item [MilestoneNumber => Int]

=item [NextToken => Str]

=item [PillarId => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListLensReviewImprovements>

Returns: a L<Paws::WellArchitected::ListLensReviewImprovementsOutput> instance

List lens review improvements.


=head2 ListLensReviews

=over

=item WorkloadId => Str

=item [MaxResults => Int]

=item [MilestoneNumber => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListLensReviews>

Returns: a L<Paws::WellArchitected::ListLensReviewsOutput> instance

List lens reviews.


=head2 ListMilestones

=over

=item WorkloadId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListMilestones>

Returns: a L<Paws::WellArchitected::ListMilestonesOutput> instance

List all milestones for an existing workload.


=head2 ListNotifications

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [WorkloadId => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListNotifications>

Returns: a L<Paws::WellArchitected::ListNotificationsOutput> instance

List lens notifications.


=head2 ListShareInvitations

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [WorkloadNamePrefix => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListShareInvitations>

Returns: a L<Paws::WellArchitected::ListShareInvitationsOutput> instance

List the workload invitations.


=head2 ListTagsForResource

=over

=item WorkloadArn => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListTagsForResource>

Returns: a L<Paws::WellArchitected::ListTagsForResourceOutput> instance

List the tags for a resource.


=head2 ListWorkloads

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [WorkloadNamePrefix => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListWorkloads>

Returns: a L<Paws::WellArchitected::ListWorkloadsOutput> instance

List workloads. Paginated.


=head2 ListWorkloadShares

=over

=item WorkloadId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SharedWithPrefix => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListWorkloadShares>

Returns: a L<Paws::WellArchitected::ListWorkloadSharesOutput> instance

List the workload shares associated with the workload.


=head2 TagResource

=over

=item Tags => L<Paws::WellArchitected::TagMap>

=item WorkloadArn => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::TagResource>

Returns: a L<Paws::WellArchitected::TagResourceOutput> instance

Adds one or more tags to the specified resource.


=head2 UntagResource

=over

=item TagKeys => ArrayRef[Str|Undef]

=item WorkloadArn => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::UntagResource>

Returns: a L<Paws::WellArchitected::UntagResourceOutput> instance

Deletes specified tags from a resource.


=head2 UpdateAnswer

=over

=item LensAlias => Str

=item QuestionId => Str

=item WorkloadId => Str

=item [IsApplicable => Bool]

=item [Notes => Str]

=item [SelectedChoices => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::WellArchitected::UpdateAnswer>

Returns: a L<Paws::WellArchitected::UpdateAnswerOutput> instance

Update the answer to a specific question in a workload review.


=head2 UpdateLensReview

=over

=item LensAlias => Str

=item WorkloadId => Str

=item [LensNotes => Str]

=item [PillarNotes => L<Paws::WellArchitected::PillarNotes>]


=back

Each argument is described in detail in: L<Paws::WellArchitected::UpdateLensReview>

Returns: a L<Paws::WellArchitected::UpdateLensReviewOutput> instance

Update lens review.


=head2 UpdateShareInvitation

=over

=item ShareInvitationAction => Str

=item ShareInvitationId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::UpdateShareInvitation>

Returns: a L<Paws::WellArchitected::UpdateShareInvitationOutput> instance

Update a workload invitation.


=head2 UpdateWorkload

=over

=item WorkloadId => Str

=item [AccountIds => ArrayRef[Str|Undef]]

=item [ArchitecturalDesign => Str]

=item [AwsRegions => ArrayRef[Str|Undef]]

=item [Description => Str]

=item [Environment => Str]

=item [ImprovementStatus => Str]

=item [Industry => Str]

=item [IndustryType => Str]

=item [IsReviewOwnerUpdateAcknowledged => Bool]

=item [NonAwsRegions => ArrayRef[Str|Undef]]

=item [Notes => Str]

=item [PillarPriorities => ArrayRef[Str|Undef]]

=item [ReviewOwner => Str]

=item [WorkloadName => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::UpdateWorkload>

Returns: a L<Paws::WellArchitected::UpdateWorkloadOutput> instance

Update an existing workload.


=head2 UpdateWorkloadShare

=over

=item PermissionType => Str

=item ShareId => Str

=item WorkloadId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::UpdateWorkloadShare>

Returns: a L<Paws::WellArchitected::UpdateWorkloadShareOutput> instance

Update a workload share.


=head2 UpgradeLensReview

=over

=item LensAlias => Str

=item MilestoneName => Str

=item WorkloadId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::UpgradeLensReview>

Returns: nothing

Upgrade lens review.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

