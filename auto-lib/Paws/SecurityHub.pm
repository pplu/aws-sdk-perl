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

  
  sub AcceptAdministratorInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::AcceptAdministratorInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
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
  sub BatchUpdateFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::BatchUpdateFindings', @_);
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
  sub DescribeOrganizationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DescribeOrganizationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProducts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DescribeProducts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStandards {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DescribeStandards', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStandardsControls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DescribeStandardsControls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableImportFindingsForProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DisableImportFindingsForProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableOrganizationAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DisableOrganizationAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableSecurityHub {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DisableSecurityHub', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateFromAdministratorAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::DisassociateFromAdministratorAccount', @_);
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
  sub EnableOrganizationAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::EnableOrganizationAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableSecurityHub {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::EnableSecurityHub', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAdministratorAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::GetAdministratorAccount', @_);
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
  sub ListOrganizationAdminAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::ListOrganizationAdminAccounts', @_);
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
  sub UpdateOrganizationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::UpdateOrganizationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSecurityHubConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::UpdateSecurityHubConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStandardsControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityHub::UpdateStandardsControl', @_);
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


  sub operations { qw/AcceptAdministratorInvitation AcceptInvitation BatchDisableStandards BatchEnableStandards BatchImportFindings BatchUpdateFindings CreateActionTarget CreateInsight CreateMembers DeclineInvitations DeleteActionTarget DeleteInsight DeleteInvitations DeleteMembers DescribeActionTargets DescribeHub DescribeOrganizationConfiguration DescribeProducts DescribeStandards DescribeStandardsControls DisableImportFindingsForProduct DisableOrganizationAdminAccount DisableSecurityHub DisassociateFromAdministratorAccount DisassociateFromMasterAccount DisassociateMembers EnableImportFindingsForProduct EnableOrganizationAdminAccount EnableSecurityHub GetAdministratorAccount GetEnabledStandards GetFindings GetInsightResults GetInsights GetInvitationsCount GetMasterAccount GetMembers InviteMembers ListEnabledProductsForImport ListInvitations ListMembers ListOrganizationAdminAccounts ListTagsForResource TagResource UntagResource UpdateActionTarget UpdateFindings UpdateInsight UpdateOrganizationConfiguration UpdateSecurityHubConfiguration UpdateStandardsControl / }

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
the readiness status of your environment based on controls from
supported security standards. Security Hub collects security data from
AWS accounts, services, and integrated third-party products and helps
you analyze security trends in your environment to identify the highest
priority security issues. For more information about Security Hub, see
the I< AWS Security Hub User Guide
(https://docs.aws.amazon.com/securityhub/latest/userguide/what-is-securityhub.html)
>.

When you use operations in the Security Hub API, the requests are
executed only in the AWS Region that is currently active or in the
specific AWS Region that you specify in your request. Any configuration
or settings change that results from the operation is applied only to
that Region. To make the same change in other Regions, execute the same
command for each Region to apply the change to.

For example, if your Region is set to C<us-west-2>, when you use C<
CreateMembers > to add a member account to Security Hub, the
association of the member account with the administrator account is
created only in the C<us-west-2> Region. Security Hub must be enabled
for the member account in the same Region that the invitation was sent
from.

The following throttling limits apply to using Security Hub API
operations.

=over

=item *

C<BatchEnableStandards > - C<RateLimit> of 1 request per second,
C<BurstLimit> of 1 request per second.

=item *

C<GetFindings > - C<RateLimit> of 3 requests per second. C<BurstLimit>
of 6 requests per second.

=item *

C<UpdateFindings > - C<RateLimit> of 1 request per second.
C<BurstLimit> of 5 requests per second.

=item *

C<UpdateStandardsControl > - C<RateLimit> of 1 request per second,
C<BurstLimit> of 5 requests per second.

=item *

All other operations - C<RateLimit> of 10 requests per second.
C<BurstLimit> of 30 requests per second.

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26>


=head1 METHODS

=head2 AcceptAdministratorInvitation

=over

=item AdministratorId => Str

=item InvitationId => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::AcceptAdministratorInvitation>

Returns: a L<Paws::SecurityHub::AcceptAdministratorInvitationResponse> instance

Accepts the invitation to be a member account and be monitored by the
Security Hub administrator account that the invitation was sent from.

This operation is only used by member accounts that are not added
through Organizations.

When the member account accepts the invitation, permission is granted
to the administrator account to view findings generated in the member
account.


=head2 AcceptInvitation

=over

=item InvitationId => Str

=item MasterId => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::AcceptInvitation>

Returns: a L<Paws::SecurityHub::AcceptInvitationResponse> instance

This method is deprecated. Instead, use
C<AcceptAdministratorInvitation>.

The Security Hub console continues to use C<AcceptInvitation>. It will
eventually change to use C<AcceptAdministratorInvitation>. Any IAM
policies that specifically control access to this function must
continue to use C<AcceptInvitation>. You should also add
C<AcceptAdministratorInvitation> to your policies to ensure that the
correct permissions are in place after the console begins to use
C<AcceptAdministratorInvitation>.

Accepts the invitation to be a member account and be monitored by the
Security Hub administrator account that the invitation was sent from.

This operation is only used by member accounts that are not added
through Organizations.

When the member account accepts the invitation, permission is granted
to the administrator account to view findings generated in the member
account.


=head2 BatchDisableStandards

=over

=item StandardsSubscriptionArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::BatchDisableStandards>

Returns: a L<Paws::SecurityHub::BatchDisableStandardsResponse> instance

Disables the standards specified by the provided
C<StandardsSubscriptionArns>.

For more information, see Security Standards
(https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html)
section of the I<AWS Security Hub User Guide>.


=head2 BatchEnableStandards

=over

=item StandardsSubscriptionRequests => ArrayRef[L<Paws::SecurityHub::StandardsSubscriptionRequest>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::BatchEnableStandards>

Returns: a L<Paws::SecurityHub::BatchEnableStandardsResponse> instance

Enables the standards specified by the provided C<StandardsArn>. To
obtain the ARN for a standard, use the C< DescribeStandards >
operation.

For more information, see the Security Standards
(https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html)
section of the I<AWS Security Hub User Guide>.


=head2 BatchImportFindings

=over

=item Findings => ArrayRef[L<Paws::SecurityHub::AwsSecurityFinding>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::BatchImportFindings>

Returns: a L<Paws::SecurityHub::BatchImportFindingsResponse> instance

Imports security findings generated from an integrated product into
Security Hub. This action is requested by the integrated product to
import its findings into Security Hub.

The maximum allowed size for a finding is 240 Kb. An error is returned
for any finding larger than 240 Kb.

After a finding is created, C<BatchImportFindings> cannot be used to
update the following finding fields and objects, which Security Hub
customers use to manage their investigation workflow.

=over

=item *

C<Note>

=item *

C<UserDefinedFields>

=item *

C<VerificationState>

=item *

C<Workflow>

=back

Finding providers also should not use C<BatchImportFindings> to update
the following attributes.

=over

=item *

C<Confidence>

=item *

C<Criticality>

=item *

C<RelatedFindings>

=item *

C<Severity>

=item *

C<Types>

=back

Instead, finding providers use C<FindingProviderFields> to provide
values for these attributes.


=head2 BatchUpdateFindings

=over

=item FindingIdentifiers => ArrayRef[L<Paws::SecurityHub::AwsSecurityFindingIdentifier>]

=item [Confidence => Int]

=item [Criticality => Int]

=item [Note => L<Paws::SecurityHub::NoteUpdate>]

=item [RelatedFindings => ArrayRef[L<Paws::SecurityHub::RelatedFinding>]]

=item [Severity => L<Paws::SecurityHub::SeverityUpdate>]

=item [Types => ArrayRef[Str|Undef]]

=item [UserDefinedFields => L<Paws::SecurityHub::FieldMap>]

=item [VerificationState => Str]

=item [Workflow => L<Paws::SecurityHub::WorkflowUpdate>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::BatchUpdateFindings>

Returns: a L<Paws::SecurityHub::BatchUpdateFindingsResponse> instance

Used by Security Hub customers to update information about their
investigation into a finding. Requested by administrator accounts or
member accounts. Administrator accounts can update findings for their
account and their member accounts. Member accounts can update findings
for their account.

Updates from C<BatchUpdateFindings> do not affect the value of
C<UpdatedAt> for a finding.

Administrator and member accounts can use C<BatchUpdateFindings> to
update the following finding fields and objects.

=over

=item *

C<Confidence>

=item *

C<Criticality>

=item *

C<Note>

=item *

C<RelatedFindings>

=item *

C<Severity>

=item *

C<Types>

=item *

C<UserDefinedFields>

=item *

C<VerificationState>

=item *

C<Workflow>

=back

You can configure IAM policies to restrict access to fields and field
values. For example, you might not want member accounts to be able to
suppress findings or change the finding severity. See Configuring
access to BatchUpdateFindings
(https://docs.aws.amazon.com/securityhub/latest/userguide/finding-update-batchupdatefindings.html#batchupdatefindings-configure-access)
in the I<AWS Security Hub User Guide>.


=head2 CreateActionTarget

=over

=item Description => Str

=item Id => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::CreateActionTarget>

Returns: a L<Paws::SecurityHub::CreateActionTargetResponse> instance

Creates a custom action target in Security Hub.

You can use custom actions on findings and insights in Security Hub to
trigger target actions in Amazon CloudWatch Events.


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
remediation.

To group the related findings in the insight, use the
C<GroupByAttribute>.


=head2 CreateMembers

=over

=item AccountDetails => ArrayRef[L<Paws::SecurityHub::AccountDetails>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::CreateMembers>

Returns: a L<Paws::SecurityHub::CreateMembersResponse> instance

Creates a member association in Security Hub between the specified
accounts and the account used to make the request, which is the
administrator account. If you are integrated with Organizations, then
the administrator account is designated by the organization management
account.

C<CreateMembers> is always used to add accounts that are not
organization members.

For accounts that are part of an organization, C<CreateMembers> is only
used in the following cases:

=over

=item *

Security Hub is not configured to automatically add new accounts in an
organization.

=item *

The account was disassociated or deleted in Security Hub.

=back

This action can only be used by an account that has Security Hub
enabled. To enable Security Hub, you can use the C< EnableSecurityHub >
operation.

For accounts that are not organization members, you create the account
association and then send an invitation to the member account. To send
the invitation, you use the C< InviteMembers > operation. If the
account owner accepts the invitation, the account becomes a member
account in Security Hub.

Accounts that are part of an organization do not receive an invitation.
They automatically become a member account in Security Hub.

A permissions policy is added that permits the administrator account to
view the findings generated in the member account. When Security Hub is
enabled in a member account, the member account findings are also
visible to the administrator account.

To remove the association between the administrator and member
accounts, use the C< DisassociateFromMasterAccount > or C<
DisassociateMembers > operation.


=head2 DeclineInvitations

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DeclineInvitations>

Returns: a L<Paws::SecurityHub::DeclineInvitationsResponse> instance

Declines invitations to become a member account.

This operation is only used by accounts that are not part of an
organization. Organization accounts do not receive invitations.


=head2 DeleteActionTarget

=over

=item ActionTargetArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::DeleteActionTarget>

Returns: a L<Paws::SecurityHub::DeleteActionTargetResponse> instance

Deletes a custom action target from Security Hub.

Deleting a custom action target does not affect any findings or
insights that were already sent to Amazon CloudWatch Events using the
custom action.


=head2 DeleteInsight

=over

=item InsightArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::DeleteInsight>

Returns: a L<Paws::SecurityHub::DeleteInsightResponse> instance

Deletes the insight specified by the C<InsightArn>.


=head2 DeleteInvitations

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DeleteInvitations>

Returns: a L<Paws::SecurityHub::DeleteInvitationsResponse> instance

Deletes invitations received by the AWS account to become a member
account.

This operation is only used by accounts that are not part of an
organization. Organization accounts do not receive invitations.


=head2 DeleteMembers

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DeleteMembers>

Returns: a L<Paws::SecurityHub::DeleteMembersResponse> instance

Deletes the specified member accounts from Security Hub.

Can be used to delete member accounts that belong to an organization as
well as member accounts that were invited manually.


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


=head2 DescribeOrganizationConfiguration






Each argument is described in detail in: L<Paws::SecurityHub::DescribeOrganizationConfiguration>

Returns: a L<Paws::SecurityHub::DescribeOrganizationConfigurationResponse> instance

Returns information about the Organizations configuration for Security
Hub. Can only be called from a Security Hub administrator account.


=head2 DescribeProducts

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProductArn => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DescribeProducts>

Returns: a L<Paws::SecurityHub::DescribeProductsResponse> instance

Returns information about product integrations in Security Hub.

You can optionally provide an integration ARN. If you provide an
integration ARN, then the results only include that integration.

If you do not provide an integration ARN, then the results include all
of the available product integrations.


=head2 DescribeStandards

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DescribeStandards>

Returns: a L<Paws::SecurityHub::DescribeStandardsResponse> instance

Returns a list of the available standards in Security Hub.

For each standard, the results include the standard ARN, the name, and
a description.


=head2 DescribeStandardsControls

=over

=item StandardsSubscriptionArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DescribeStandardsControls>

Returns: a L<Paws::SecurityHub::DescribeStandardsControlsResponse> instance

Returns a list of security standards controls.

For each control, the results include information about whether it is
currently enabled, the severity, and a link to remediation information.


=head2 DisableImportFindingsForProduct

=over

=item ProductSubscriptionArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::DisableImportFindingsForProduct>

Returns: a L<Paws::SecurityHub::DisableImportFindingsForProductResponse> instance

Disables the integration of the specified product with Security Hub.
After the integration is disabled, findings from that product are no
longer sent to Security Hub.


=head2 DisableOrganizationAdminAccount

=over

=item AdminAccountId => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::DisableOrganizationAdminAccount>

Returns: a L<Paws::SecurityHub::DisableOrganizationAdminAccountResponse> instance

Disables a Security Hub administrator account. Can only be called by
the organization management account.


=head2 DisableSecurityHub






Each argument is described in detail in: L<Paws::SecurityHub::DisableSecurityHub>

Returns: a L<Paws::SecurityHub::DisableSecurityHubResponse> instance

Disables Security Hub in your account only in the current Region. To
disable Security Hub in all Regions, you must submit one request per
Region where you have enabled Security Hub.

When you disable Security Hub for an administrator account, it doesn't
disable Security Hub for any associated member accounts.

When you disable Security Hub, your existing findings and insights and
any Security Hub configuration settings are deleted after 90 days and
cannot be recovered. Any standards that were enabled are disabled, and
your administrator and member account associations are removed.

If you want to save your existing findings, you must export them before
you disable Security Hub.


=head2 DisassociateFromAdministratorAccount






Each argument is described in detail in: L<Paws::SecurityHub::DisassociateFromAdministratorAccount>

Returns: a L<Paws::SecurityHub::DisassociateFromAdministratorAccountResponse> instance

Disassociates the current Security Hub member account from the
associated administrator account.

This operation is only used by accounts that are not part of an
organization. For organization accounts, only the administrator account
can disassociate a member account.


=head2 DisassociateFromMasterAccount






Each argument is described in detail in: L<Paws::SecurityHub::DisassociateFromMasterAccount>

Returns: a L<Paws::SecurityHub::DisassociateFromMasterAccountResponse> instance

This method is deprecated. Instead, use
C<DisassociateFromAdministratorAccount>.

The Security Hub console continues to use
C<DisassociateFromMasterAccount>. It will eventually change to use
C<DisassociateFromAdministratorAccount>. Any IAM policies that
specifically control access to this function must continue to use
C<DisassociateFromMasterAccount>. You should also add
C<DisassociateFromAdministratorAccount> to your policies to ensure that
the correct permissions are in place after the console begins to use
C<DisassociateFromAdministratorAccount>.

Disassociates the current Security Hub member account from the
associated administrator account.

This operation is only used by accounts that are not part of an
organization. For organization accounts, only the administrator account
can disassociate a member account.


=head2 DisassociateMembers

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DisassociateMembers>

Returns: a L<Paws::SecurityHub::DisassociateMembersResponse> instance

Disassociates the specified member accounts from the associated
administrator account.

Can be used to disassociate both accounts that are managed using
Organizations and accounts that were invited manually.


=head2 EnableImportFindingsForProduct

=over

=item ProductArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::EnableImportFindingsForProduct>

Returns: a L<Paws::SecurityHub::EnableImportFindingsForProductResponse> instance

Enables the integration of a partner product with Security Hub.
Integrated products send findings to Security Hub.

When you enable a product integration, a permissions policy that grants
permission for the product to send findings to Security Hub is applied.


=head2 EnableOrganizationAdminAccount

=over

=item AdminAccountId => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::EnableOrganizationAdminAccount>

Returns: a L<Paws::SecurityHub::EnableOrganizationAdminAccountResponse> instance

Designates the Security Hub administrator account for an organization.
Can only be called by the organization management account.


=head2 EnableSecurityHub

=over

=item [EnableDefaultStandards => Bool]

=item [Tags => L<Paws::SecurityHub::TagMap>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::EnableSecurityHub>

Returns: a L<Paws::SecurityHub::EnableSecurityHubResponse> instance

Enables Security Hub for your account in the current Region or the
Region you specify in the request.

When you enable Security Hub, you grant to Security Hub the permissions
necessary to gather findings from other services that are integrated
with Security Hub.

When you use the C<EnableSecurityHub> operation to enable Security Hub,
you also automatically enable the following standards.

=over

=item *

CIS AWS Foundations

=item *

AWS Foundational Security Best Practices

=back

You do not enable the Payment Card Industry Data Security Standard (PCI
DSS) standard.

To not enable the automatically enabled standards, set
C<EnableDefaultStandards> to C<false>.

After you enable Security Hub, to enable a standard, use the C<
BatchEnableStandards > operation. To disable a standard, use the C<
BatchDisableStandards > operation.

To learn more, see Setting Up AWS Security Hub
(https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-settingup.html)
in the I<AWS Security Hub User Guide>.


=head2 GetAdministratorAccount






Each argument is described in detail in: L<Paws::SecurityHub::GetAdministratorAccount>

Returns: a L<Paws::SecurityHub::GetAdministratorAccountResponse> instance

Provides the details for the Security Hub administrator account for the
current member account.

Can be used by both member accounts that are managed using
Organizations and accounts that were invited manually.


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

Lists the results of the Security Hub insight specified by the insight
ARN.


=head2 GetInsights

=over

=item [InsightArns => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::GetInsights>

Returns: a L<Paws::SecurityHub::GetInsightsResponse> instance

Lists and describes insights for the specified insight ARNs.


=head2 GetInvitationsCount






Each argument is described in detail in: L<Paws::SecurityHub::GetInvitationsCount>

Returns: a L<Paws::SecurityHub::GetInvitationsCountResponse> instance

Returns the count of all Security Hub membership invitations that were
sent to the current member account, not including the currently
accepted invitation.


=head2 GetMasterAccount






Each argument is described in detail in: L<Paws::SecurityHub::GetMasterAccount>

Returns: a L<Paws::SecurityHub::GetMasterAccountResponse> instance

This method is deprecated. Instead, use C<GetAdministratorAccount>.

The Security Hub console continues to use C<GetMasterAccount>. It will
eventually change to use C<GetAdministratorAccount>. Any IAM policies
that specifically control access to this function must continue to use
C<GetMasterAccount>. You should also add C<GetAdministratorAccount> to
your policies to ensure that the correct permissions are in place after
the console begins to use C<GetAdministratorAccount>.

Provides the details for the Security Hub administrator account for the
current member account.

Can be used by both member accounts that are managed using
Organizations and accounts that were invited manually.


=head2 GetMembers

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::GetMembers>

Returns: a L<Paws::SecurityHub::GetMembersResponse> instance

Returns the details for the Security Hub member accounts for the
specified account IDs.

An administrator account can be either the delegated Security Hub
administrator account for an organization or an administrator account
that enabled Security Hub manually.

The results include both member accounts that are managed using
Organizations and accounts that were invited manually.


=head2 InviteMembers

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::InviteMembers>

Returns: a L<Paws::SecurityHub::InviteMembersResponse> instance

Invites other AWS accounts to become member accounts for the Security
Hub administrator account that the invitation is sent from.

This operation is only used to invite accounts that do not belong to an
organization. Organization accounts do not receive invitations.

Before you can use this action to invite a member, you must first use
the C< CreateMembers > action to create the member account in Security
Hub.

When the account owner enables Security Hub and accepts the invitation
to become a member account, the administrator account can view the
findings generated from the member account.


=head2 ListEnabledProductsForImport

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::ListEnabledProductsForImport>

Returns: a L<Paws::SecurityHub::ListEnabledProductsForImportResponse> instance

Lists all findings-generating solutions (products) that you are
subscribed to receive findings from in Security Hub.


=head2 ListInvitations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::ListInvitations>

Returns: a L<Paws::SecurityHub::ListInvitationsResponse> instance

Lists all Security Hub membership invitations that were sent to the
current AWS account.

This operation is only used by accounts that are managed by invitation.
Accounts that are managed using the integration with AWS Organizations
do not receive invitations.


=head2 ListMembers

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OnlyAssociated => Bool]


=back

Each argument is described in detail in: L<Paws::SecurityHub::ListMembers>

Returns: a L<Paws::SecurityHub::ListMembersResponse> instance

Lists details about all member accounts for the current Security Hub
administrator account.

The results include both member accounts that belong to an organization
and member accounts that were invited manually.


=head2 ListOrganizationAdminAccounts

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::ListOrganizationAdminAccounts>

Returns: a L<Paws::SecurityHub::ListOrganizationAdminAccountsResponse> instance

Lists the Security Hub administrator accounts. Can only be called by
the organization management account.


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

C<UpdateFindings> is deprecated. Instead of C<UpdateFindings>, use
C<BatchUpdateFindings>.

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

Updates the Security Hub insight identified by the specified insight
ARN.


=head2 UpdateOrganizationConfiguration

=over

=item AutoEnable => Bool


=back

Each argument is described in detail in: L<Paws::SecurityHub::UpdateOrganizationConfiguration>

Returns: a L<Paws::SecurityHub::UpdateOrganizationConfigurationResponse> instance

Used to update the configuration related to Organizations. Can only be
called from a Security Hub administrator account.


=head2 UpdateSecurityHubConfiguration

=over

=item [AutoEnableControls => Bool]


=back

Each argument is described in detail in: L<Paws::SecurityHub::UpdateSecurityHubConfiguration>

Returns: a L<Paws::SecurityHub::UpdateSecurityHubConfigurationResponse> instance

Updates configuration options for Security Hub.


=head2 UpdateStandardsControl

=over

=item StandardsControlArn => Str

=item [ControlStatus => Str]

=item [DisabledReason => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::UpdateStandardsControl>

Returns: a L<Paws::SecurityHub::UpdateStandardsControlResponse> instance

Used to control whether an individual security standard control is
enabled or disabled.




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

