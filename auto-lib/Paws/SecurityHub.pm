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


  sub operations { qw/AcceptInvitation BatchDisableStandards BatchEnableStandards BatchImportFindings CreateInsight CreateMembers DeclineInvitations DeleteInsight DeleteInvitations DeleteMembers DisableImportFindingsForProduct DisableSecurityHub DisassociateFromMasterAccount DisassociateMembers EnableImportFindingsForProduct EnableSecurityHub GetEnabledStandards GetFindings GetInsightResults GetInsights GetInvitationsCount GetMasterAccount GetMembers InviteMembers ListEnabledProductsForImport ListInvitations ListMembers UpdateFindings UpdateInsight / }

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

AWS Security Hub provides you with a comprehensive view of your
security state within AWS and your compliance with the security
industry standards and best practices. Security Hub collects security
data from across AWS accounts, services, and supported third-party
partners and helps you analyze your security trends and identify the
highest priority security issues. For more information, see AWS
Security Hub User Guide.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26>


=head1 METHODS

=head2 AcceptInvitation

=over

=item [InvitationId => Str]

=item [MasterId => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::AcceptInvitation>

Returns: a L<Paws::SecurityHub::AcceptInvitationResponse> instance

Accepts the invitation to be monitored by a master SecurityHub account.


=head2 BatchDisableStandards

=over

=item StandardsSubscriptionArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityHub::BatchDisableStandards>

Returns: a L<Paws::SecurityHub::BatchDisableStandardsResponse> instance

Disables the standards specified by the standards subscription ARNs. In
the context of Security Hub, supported standards (for example, CIS AWS
Foundations) are automated and continuous checks that help determine
your compliance status against security industry (including AWS) best
practices.


=head2 BatchEnableStandards

=over

=item StandardsSubscriptionRequests => ArrayRef[L<Paws::SecurityHub::StandardsSubscriptionRequest>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::BatchEnableStandards>

Returns: a L<Paws::SecurityHub::BatchEnableStandardsResponse> instance

Enables the standards specified by the standards ARNs. In the context
of Security Hub, supported standards (for example, CIS AWS Foundations)
are automated and continuous checks that help determine your compliance
status against security industry (including AWS) best practices.


=head2 BatchImportFindings

=over

=item Findings => ArrayRef[L<Paws::SecurityHub::AwsSecurityFinding>]


=back

Each argument is described in detail in: L<Paws::SecurityHub::BatchImportFindings>

Returns: a L<Paws::SecurityHub::BatchImportFindingsResponse> instance

Imports security findings that are generated by the integrated
third-party products into Security Hub.


=head2 CreateInsight

=over

=item Filters => L<Paws::SecurityHub::AwsSecurityFindingFilters>

=item GroupByAttribute => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::CreateInsight>

Returns: a L<Paws::SecurityHub::CreateInsightResponse> instance

Creates an insight, which is a consolidation of findings that
identifies a security area that requires attention or intervention.


=head2 CreateMembers

=over

=item [AccountDetails => ArrayRef[L<Paws::SecurityHub::AccountDetails>]]


=back

Each argument is described in detail in: L<Paws::SecurityHub::CreateMembers>

Returns: a L<Paws::SecurityHub::CreateMembersResponse> instance

Creates member Security Hub accounts in the current AWS account (which
becomes the master Security Hub account) that has Security Hub enabled.


=head2 DeclineInvitations

=over

=item [AccountIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DeclineInvitations>

Returns: a L<Paws::SecurityHub::DeclineInvitationsResponse> instance

Declines invitations that are sent to this AWS account (invitee) by the
AWS accounts (inviters) that are specified by the account IDs.


=head2 DeleteInsight

=over

=item InsightArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::DeleteInsight>

Returns: a L<Paws::SecurityHub::DeleteInsightResponse> instance

Deletes an insight that is specified by the insight ARN.


=head2 DeleteInvitations

=over

=item [AccountIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DeleteInvitations>

Returns: a L<Paws::SecurityHub::DeleteInvitationsResponse> instance

Deletes invitations that are sent to this AWS account (invitee) by the
AWS accounts (inviters) that are specified by their account IDs.


=head2 DeleteMembers

=over

=item [AccountIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DeleteMembers>

Returns: a L<Paws::SecurityHub::DeleteMembersResponse> instance

Deletes the Security Hub member accounts that are specified by the
account IDs.


=head2 DisableImportFindingsForProduct

=over

=item ProductSubscriptionArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::DisableImportFindingsForProduct>

Returns: a L<Paws::SecurityHub::DisableImportFindingsForProductResponse> instance

Stops you from being able to import findings generated by integrated
third-party providers into Security Hub.


=head2 DisableSecurityHub






Each argument is described in detail in: L<Paws::SecurityHub::DisableSecurityHub>

Returns: a L<Paws::SecurityHub::DisableSecurityHubResponse> instance

Disables the AWS Security Hub Service.


=head2 DisassociateFromMasterAccount






Each argument is described in detail in: L<Paws::SecurityHub::DisassociateFromMasterAccount>

Returns: a L<Paws::SecurityHub::DisassociateFromMasterAccountResponse> instance

Disassociates the current Security Hub member account from its master
account.


=head2 DisassociateMembers

=over

=item [AccountIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SecurityHub::DisassociateMembers>

Returns: a L<Paws::SecurityHub::DisassociateMembersResponse> instance

Disassociates the Security Hub member accounts that are specified by
the account IDs from their master account.


=head2 EnableImportFindingsForProduct

=over

=item ProductArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityHub::EnableImportFindingsForProduct>

Returns: a L<Paws::SecurityHub::EnableImportFindingsForProductResponse> instance

Enables you to import findings generated by integrated third-party
providers into Security Hub.


=head2 EnableSecurityHub






Each argument is described in detail in: L<Paws::SecurityHub::EnableSecurityHub>

Returns: a L<Paws::SecurityHub::EnableSecurityHubResponse> instance

Enables the AWS Security Hub service.


=head2 GetEnabledStandards

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StandardsSubscriptionArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SecurityHub::GetEnabledStandards>

Returns: a L<Paws::SecurityHub::GetEnabledStandardsResponse> instance

Lists and describes enabled standards.


=head2 GetFindings

=over

=item [Filters => L<Paws::SecurityHub::AwsSecurityFindingFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortCriteria => ArrayRef[L<Paws::SecurityHub::SortCriterion>]]


=back

Each argument is described in detail in: L<Paws::SecurityHub::GetFindings>

Returns: a L<Paws::SecurityHub::GetFindingsResponse> instance

Lists and describes Security Hub-aggregated findings that are specified
by filter attributes.


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

Lists and describes insights that are specified by insight ARNs.


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

Returns the details on the Security Hub member accounts that are
specified by the account IDs.


=head2 InviteMembers

=over

=item [AccountIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SecurityHub::InviteMembers>

Returns: a L<Paws::SecurityHub::InviteMembersResponse> instance

Invites other AWS accounts to enable Security Hub and become Security
Hub member accounts. When an account accepts the invitation and becomes
a member account, the master account can view Security Hub findings of
the member account.


=head2 ListEnabledProductsForImport

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::ListEnabledProductsForImport>

Returns: a L<Paws::SecurityHub::ListEnabledProductsForImportResponse> instance

Lists all Security Hub-integrated third-party findings providers.


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


=head2 UpdateFindings

=over

=item Filters => L<Paws::SecurityHub::AwsSecurityFindingFilters>

=item [Note => L<Paws::SecurityHub::NoteUpdate>]

=item [RecordState => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::UpdateFindings>

Returns: a L<Paws::SecurityHub::UpdateFindingsResponse> instance

Updates the AWS Security Hub-aggregated findings specified by the
filter attributes.


=head2 UpdateInsight

=over

=item InsightArn => Str

=item [Filters => L<Paws::SecurityHub::AwsSecurityFindingFilters>]

=item [GroupByAttribute => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::SecurityHub::UpdateInsight>

Returns: a L<Paws::SecurityHub::UpdateInsightResponse> instance

Updates the AWS Security Hub insight specified by the insight ARN.




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

