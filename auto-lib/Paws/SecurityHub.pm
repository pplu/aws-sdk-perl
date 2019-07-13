package Paws::SecurityHub;
  use Moose;
  sub service { 'securityhub' }
  sub signing_name { 'securityhub' }
  sub version { '2018-10-26' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AcceptInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::AcceptInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDisableStandards {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::BatchDisableStandards', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchEnableStandards {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::BatchEnableStandards', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchImportFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::BatchImportFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateActionTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::CreateActionTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInsight {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::CreateInsight', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::CreateMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeclineInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DeclineInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteActionTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DeleteActionTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInsight {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DeleteInsight', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DeleteInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DeleteMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeActionTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DescribeActionTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHub {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DescribeHub', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProducts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DescribeProducts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableImportFindingsForProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DisableImportFindingsForProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableSecurityHub {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DisableSecurityHub', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateFromMasterAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DisassociateFromMasterAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DisassociateMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableImportFindingsForProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::EnableImportFindingsForProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableSecurityHub {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::EnableSecurityHub', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnabledStandards {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::GetEnabledStandards', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::GetFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInsightResults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::GetInsightResults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInsights {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::GetInsights', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInvitationsCount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::GetInvitationsCount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMasterAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::GetMasterAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::GetMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InviteMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::InviteMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnabledProductsForImport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::ListEnabledProductsForImport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::ListInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::ListMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateActionTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::UpdateActionTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::UpdateFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInsight {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::UpdateInsight', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllEnabledStandards {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetEnabledStandards(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetEnabledStandards(@_, NextToken => $next_result->NextToken);
        push @{ $result->StandardsSubscriptions }, @{ $next_result->StandardsSubscriptions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'StandardsSubscriptions') foreach (@{ $result->StandardsSubscriptions });
        $result = $self->GetEnabledStandards(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'StandardsSubscriptions') foreach (@{ $result->StandardsSubscriptions });
    }

    return undef
  }
  sub GetAllFindings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetFindings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetFindings(@_, NextToken => $next_result->NextToken);
        push @{ $result->Findings }, @{ $next_result->Findings };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Findings') foreach (@{ $result->Findings });
        $result = $self->GetFindings(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Findings') foreach (@{ $result->Findings });
    }

    return undef
  }
  sub GetAllInsights {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetInsights(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetInsights(@_, NextToken => $next_result->NextToken);
        push @{ $result->Insights }, @{ $next_result->Insights };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Insights') foreach (@{ $result->Insights });
        $result = $self->GetInsights(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Insights') foreach (@{ $result->Insights });
    }

    return undef
  }
  sub ListAllEnabledProductsForImport {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnabledProductsForImport(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEnabledProductsForImport(@_, NextToken => $next_result->NextToken);
        push @{ $result->ProductSubscriptions }, @{ $next_result->ProductSubscriptions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ProductSubscriptions') foreach (@{ $result->ProductSubscriptions });
        $result = $self->ListEnabledProductsForImport(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ProductSubscriptions') foreach (@{ $result->ProductSubscriptions });
    }

    return undef
  }
  sub ListAllInvitations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInvitations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListInvitations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Invitations }, @{ $next_result->Invitations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Invitations') foreach (@{ $result->Invitations });
        $result = $self->ListInvitations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Invitations') foreach (@{ $result->Invitations });
    }

    return undef
  }
  sub ListAllMembers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMembers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMembers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Members }, @{ $next_result->Members };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Members') foreach (@{ $result->Members });
        $result = $self->ListMembers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Members') foreach (@{ $result->Members });
    }

    return undef
  }


  sub operations { qw/AcceptInvitation BatchDisableStandards BatchEnableStandards BatchImportFindings CreateActionTarget CreateInsight CreateMembers DeclineInvitations DeleteActionTarget DeleteInsight DeleteInvitations DeleteMembers DescribeActionTargets DescribeHub DescribeProducts DisableImportFindingsForProduct DisableSecurityHub DisassociateFromMasterAccount DisassociateMembers EnableImportFindingsForProduct EnableSecurityHub GetEnabledStandards GetFindings GetInsightResults GetInsights GetInvitationsCount GetMasterAccount GetMembers InviteMembers ListEnabledProductsForImport ListInvitations ListMembers ListTagsForResource TagResource UntagResource UpdateActionTarget UpdateFindings UpdateInsight / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub - Perl Interface to AWS AWS SecurityHub

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SecurityHub');
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

Security Hub provides you with a comprehensive view of the security
state of your AWS environment and resources. It also provides you with
the compliance status of your environment based on CIS AWS Foundations
compliance checks. Security Hub collects security data from AWS
accounts, services, and integrated third-party products and helps you
analyze security trends in your environment to identify the highest
priority security issues. For more information about Security Hub, see
the I< AWS Security Hub User Guide
(https://docs.aws.amazon.com/securityhub/latest/userguide/what-is-securityhub.html)
>.

When you use operations in the Security Hub API, the requests are
executed only in the AWS Region that is currently active or in the
specific AWS Region that you specify in your request. Any configuration
or settings change that results from the operation is applied only to
that Region. To make the same change in other Regions, execute the same
command for each Region to apply the change to. For example, if your
Region is set to C<us-west-2>, when you use C<CreateMembers> to add a
member account to Security Hub, the association of the member account
with the master account is created only in the us-west-2 Region.
Security Hub must be enabled for the member account in the same Region
that the invite was sent from.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26>


=head1 METHODS

=head2 AcceptInvitation

=over

=item [InvitationId => Str]

=item [MasterId => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::AcceptInvitation>

Returns: a L<Paws::SecurityHub::AcceptInvitationResponse> instance

Accepts the invitation to be a member account and be monitored by the
Security Hub master account that the invitation was sent from. When the
member account accepts the invitation, permission is granted to the
master account to view findings generated in the member account.


=head2 BatchDisableStandards

=over

=item StandardsSubscriptionArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::BatchDisableStandards>

Returns: a L<Paws::SecurityHub::BatchDisableStandardsResponse> instance

Disables the standards specified by the provided
C<StandardsSubscriptionArns>. For more information, see Standards
Supported in AWS Security Hub
(https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html).


=head2 BatchEnableStandards

=over

=item StandardsSubscriptionRequests => ArrayRef[L<Paws::SecurityHub::StandardsSubscriptionRequest>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::BatchEnableStandards>

Returns: a L<Paws::SecurityHub::BatchEnableStandardsResponse> instance

Enables the standards specified by the provided C<standardsArn>. In
this release, only CIS AWS Foundations standards are supported. For
more information, see Standards Supported in AWS Security Hub
(https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html).


=head2 BatchImportFindings

=over

=item Findings => ArrayRef[L<Paws::SecurityHub::AwsSecurityFinding>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::BatchImportFindings>

Returns: a L<Paws::SecurityHub::BatchImportFindingsResponse> instance

Imports security findings generated from an integrated third-party
product into Security Hub. This action is requested by the integrated
product to import its findings into Security Hub. The maximum allowed
size for a finding is 240 Kb. An error is returned for any finding
larger than 240 Kb.


=head2 CreateActionTarget

=over

=item Description => Str

=item Id => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::CreateActionTarget>

Returns: a L<Paws::SecurityHub::CreateActionTargetResponse> instance

Creates a custom action target in Security Hub. You can use custom
actions on findings and insights in Security Hub to trigger target
actions in Amazon CloudWatch Events.


=head2 CreateInsight

=over

=item Filters => L<Paws::SecurityHub::AwsSecurityFindingFilters>

=item GroupByAttribute => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::CreateInsight>

Returns: a L<Paws::SecurityHub::CreateInsightResponse> instance

Creates a custom insight in Security Hub. An insight is a consolidation
of findings that relate to a security issue that requires attention or
remediation. Use the C<GroupByAttribute> to group the related findings
in the insight.


=head2 CreateMembers

=over

=item [AccountDetails => ArrayRef[L<Paws::SecurityHub::AccountDetails>]]


=back

Each argument is described in detail in: L<Paws::SecurityHub::CreateMembers>

Returns: a L<Paws::SecurityHub::CreateMembersResponse> instance

Creates a member association in Security Hub between the specified
accounts and the account used to make the request, which is the master
account. To successfully create a member, you must use this action from
an account that already has Security Hub enabled. You can use the
EnableSecurityHub to enable Security Hub.

After you use C<CreateMembers> to create member account associations in
Security Hub, you need to use the InviteMembers action, which invites
the accounts to enable Security Hub and become member accounts in
Security Hub. If the invitation is accepted by the account owner, the
account becomes a member account in Security Hub, and a permission
policy is added that permits the master account to view the findings
generated in the member account. When Security Hub is enabled in the
invited account, findings start being sent to both the member and
master accounts.

You can remove the association between the master and member accounts
by using the DisassociateFromMasterAccount or DisassociateMembers
operation.


=head2 DeclineInvitations

=over

=item [AccountIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DeclineInvitations>

Returns: a L<Paws::SecurityHub::DeclineInvitationsResponse> instance

Declines invitations to become a member account.


=head2 DeleteActionTarget

=over

=item ActionTargetArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::DeleteActionTarget>

Returns: a L<Paws::SecurityHub::DeleteActionTargetResponse> instance

Deletes a custom action target from Security Hub. Deleting a custom
action target doesn't affect any findings or insights that were already
sent to Amazon CloudWatch Events using the custom action.


=head2 DeleteInsight

=over

=item InsightArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::DeleteInsight>

Returns: a L<Paws::SecurityHub::DeleteInsightResponse> instance

Deletes the insight specified by the C<InsightArn>.


=head2 DeleteInvitations

=over

=item [AccountIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DeleteInvitations>

Returns: a L<Paws::SecurityHub::DeleteInvitationsResponse> instance

Deletes invitations received by the AWS account to become a member
account.


=head2 DeleteMembers

=over

=item [AccountIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DeleteMembers>

Returns: a L<Paws::SecurityHub::DeleteMembersResponse> instance

Deletes the specified member accounts from Security Hub.


=head2 DescribeActionTargets

=over

=item [ActionTargetArns => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DescribeActionTargets>

Returns: a L<Paws::SecurityHub::DescribeActionTargetsResponse> instance

Returns a list of the custom action targets in Security Hub in your
account.


=head2 DescribeHub

=over

=item [HubArn => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DescribeHub>

Returns: a L<Paws::SecurityHub::DescribeHubResponse> instance

Returns details about the Hub resource in your account, including the
C<HubArn> and the time when you enabled Security Hub.


=head2 DescribeProducts

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DescribeProducts>

Returns: a L<Paws::SecurityHub::DescribeProductsResponse> instance

Returns information about the products available that you can subscribe
to and integrate with Security Hub to consolidate findings.


=head2 DisableImportFindingsForProduct

=over

=item ProductSubscriptionArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::DisableImportFindingsForProduct>

Returns: a L<Paws::SecurityHub::DisableImportFindingsForProductResponse> instance

Disables the integration of the specified product with Security Hub.
Findings from that product are no longer sent to Security Hub after the
integration is disabled.


=head2 DisableSecurityHub






Each argument is described in detail in: L<Paws::SecurityHub::DisableSecurityHub>

Returns: a L<Paws::SecurityHub::DisableSecurityHubResponse> instance

Disables Security Hub in your account only in the current Region. To
disable Security Hub in all Regions, you must submit one request per
Region where you have enabled Security Hub. When you disable Security
Hub for a master account, it doesn't disable Security Hub for any
associated member accounts.

When you disable Security Hub, your existing findings and insights and
any Security Hub configuration settings are deleted after 90 days and
can't be recovered. Any standards that were enabled are disabled, and
your master and member account associations are removed. If you want to
save your existing findings, you must export them before you disable
Security Hub.


=head2 DisassociateFromMasterAccount






Each argument is described in detail in: L<Paws::SecurityHub::DisassociateFromMasterAccount>

Returns: a L<Paws::SecurityHub::DisassociateFromMasterAccountResponse> instance

Disassociates the current Security Hub member account from the
associated master account.


=head2 DisassociateMembers

=over

=item [AccountIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DisassociateMembers>

Returns: a L<Paws::SecurityHub::DisassociateMembersResponse> instance

Disassociates the specified member accounts from the associated master
account.


=head2 EnableImportFindingsForProduct

=over

=item ProductArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::EnableImportFindingsForProduct>

Returns: a L<Paws::SecurityHub::EnableImportFindingsForProductResponse> instance

Enables the integration of a partner product with Security Hub.
Integrated products send findings to Security Hub. When you enable a
product integration, a permission policy that grants permission for the
product to send findings to Security Hub is applied.


=head2 EnableSecurityHub

=over

=item [Tags => L<Paws::SecurityHub::TagMap>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::EnableSecurityHub>

Returns: a L<Paws::SecurityHub::EnableSecurityHubResponse> instance

Enables Security Hub for your account in the current Region or the
Region you specify in the request. When you enable Security Hub, you
grant to Security Hub the permissions necessary to gather findings from
AWS Config, Amazon GuardDuty, Amazon Inspector, and Amazon Macie. To
learn more, see Setting Up AWS Security Hub
(https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-settingup.html).


=head2 GetEnabledStandards

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StandardsSubscriptionArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SecurityHub::GetEnabledStandards>

Returns: a L<Paws::SecurityHub::GetEnabledStandardsResponse> instance

Returns a list of the standards that are currently enabled.


=head2 GetFindings

=over

=item [Filters => L<Paws::SecurityHub::AwsSecurityFindingFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortCriteria => ArrayRef[L<Paws::SecurityHub::SortCriterion>]]


=back

Each argument is described in detail in: L<Paws::SecurityHub::GetFindings>

Returns: a L<Paws::SecurityHub::GetFindingsResponse> instance

Returns a list of findings that match the specified criteria.


=head2 GetInsightResults

=over

=item InsightArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::GetInsightResults>

Returns: a L<Paws::SecurityHub::GetInsightResultsResponse> instance

Lists the results of the Security Hub insight that the insight ARN
specifies.


=head2 GetInsights

=over

=item [InsightArns => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::GetInsights>

Returns: a L<Paws::SecurityHub::GetInsightsResponse> instance

Lists and describes insights that insight ARNs specify.


=head2 GetInvitationsCount






Each argument is described in detail in: L<Paws::SecurityHub::GetInvitationsCount>

Returns: a L<Paws::SecurityHub::GetInvitationsCountResponse> instance

Returns the count of all Security Hub membership invitations that were
sent to the current member account, not including the currently
accepted invitation.


=head2 GetMasterAccount






Each argument is described in detail in: L<Paws::SecurityHub::GetMasterAccount>

Returns: a L<Paws::SecurityHub::GetMasterAccountResponse> instance

Provides the details for the Security Hub master account to the current
member account.


=head2 GetMembers

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::GetMembers>

Returns: a L<Paws::SecurityHub::GetMembersResponse> instance

Returns the details on the Security Hub member accounts that the
account IDs specify.


=head2 InviteMembers

=over

=item [AccountIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SecurityHub::InviteMembers>

Returns: a L<Paws::SecurityHub::InviteMembersResponse> instance

Invites other AWS accounts to become member accounts for the Security
Hub master account that the invitation is sent from. Before you can use
this action to invite a member, you must first create the member
account in Security Hub by using the CreateMembers action. When the
account owner accepts the invitation to become a member account and
enables Security Hub, the master account can view the findings
generated from member account.


=head2 ListEnabledProductsForImport

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::ListEnabledProductsForImport>

Returns: a L<Paws::SecurityHub::ListEnabledProductsForImportResponse> instance

Lists all findings-generating solutions (products) whose findings you
have subscribed to receive in Security Hub.


=head2 ListInvitations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::ListInvitations>

Returns: a L<Paws::SecurityHub::ListInvitationsResponse> instance

Lists all Security Hub membership invitations that were sent to the
current AWS account.


=head2 ListMembers

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OnlyAssociated => Bool]


=back

Each argument is described in detail in: L<Paws::SecurityHub::ListMembers>

Returns: a L<Paws::SecurityHub::ListMembersResponse> instance

Lists details about all member accounts for the current Security Hub
master account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::ListTagsForResource>

Returns: a L<Paws::SecurityHub::ListTagsForResourceResponse> instance

Returns a list of tags associated with a resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::SecurityHub::TagMap>


=back

Each argument is described in detail in: L<Paws::SecurityHub::TagResource>

Returns: a L<Paws::SecurityHub::TagResourceResponse> instance

Adds one or more tags to a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::UntagResource>

Returns: a L<Paws::SecurityHub::UntagResourceResponse> instance

Removes one or more tags from a resource.


=head2 UpdateActionTarget

=over

=item ActionTargetArn => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::UpdateActionTarget>

Returns: a L<Paws::SecurityHub::UpdateActionTargetResponse> instance

Updates the name and description of a custom action target in Security
Hub.


=head2 UpdateFindings

=over

=item Filters => L<Paws::SecurityHub::AwsSecurityFindingFilters>

=item [Note => L<Paws::SecurityHub::NoteUpdate>]

=item [RecordState => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::UpdateFindings>

Returns: a L<Paws::SecurityHub::UpdateFindingsResponse> instance

Updates the C<Note> and C<RecordState> of the Security Hub-aggregated
findings that the filter attributes specify. Any member account that
can view the finding also sees the update to the finding.


=head2 UpdateInsight

=over

=item InsightArn => Str

=item [Filters => L<Paws::SecurityHub::AwsSecurityFindingFilters>]

=item [GroupByAttribute => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::UpdateInsight>

Returns: a L<Paws::SecurityHub::UpdateInsightResponse> instance

Updates the Security Hub insight that the insight ARN specifies.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllEnabledStandards(sub { },[MaxResults => Int, NextToken => Str, StandardsSubscriptionArns => ArrayRef[Str|Undef]])

=head2 GetAllEnabledStandards([MaxResults => Int, NextToken => Str, StandardsSubscriptionArns => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StandardsSubscriptions, passing the object as the first parameter, and the string 'StandardsSubscriptions' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::GetEnabledStandardsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllFindings(sub { },[Filters => L<Paws::SecurityHub::AwsSecurityFindingFilters>, MaxResults => Int, NextToken => Str, SortCriteria => ArrayRef[L<Paws::SecurityHub::SortCriterion>]])

=head2 GetAllFindings([Filters => L<Paws::SecurityHub::AwsSecurityFindingFilters>, MaxResults => Int, NextToken => Str, SortCriteria => ArrayRef[L<Paws::SecurityHub::SortCriterion>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Findings, passing the object as the first parameter, and the string 'Findings' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::GetFindingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllInsights(sub { },[InsightArns => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 GetAllInsights([InsightArns => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Insights, passing the object as the first parameter, and the string 'Insights' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::GetInsightsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnabledProductsForImport(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllEnabledProductsForImport([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProductSubscriptions, passing the object as the first parameter, and the string 'ProductSubscriptions' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::ListEnabledProductsForImportResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInvitations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllInvitations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Invitations, passing the object as the first parameter, and the string 'Invitations' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::ListInvitationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMembers(sub { },[MaxResults => Int, NextToken => Str, OnlyAssociated => Bool])

=head2 ListAllMembers([MaxResults => Int, NextToken => Str, OnlyAssociated => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Members, passing the object as the first parameter, and the string 'Members' as the second parameter 

If not, it will return a a L<Paws::SecurityHub::ListMembersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

