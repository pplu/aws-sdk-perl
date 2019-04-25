package Paws::GuardDuty;
  use Moose;
  sub service { 'guardduty' }
  sub signing_name { 'guardduty' }
  sub version { '2017-11-28' }
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
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::AcceptInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ArchiveFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::ArchiveFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::CreateDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::CreateFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::CreateIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::CreateMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSampleFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::CreateSampleFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateThreatIntelSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::CreateThreatIntelSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeclineInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DeclineInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DeleteDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DeleteFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DeleteInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DeleteIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DeleteMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteThreatIntelSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DeleteThreatIntelSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateFromMasterAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DisassociateFromMasterAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::DisassociateMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFindingsStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetFindingsStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInvitationsCount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetInvitationsCount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMasterAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetMasterAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetThreatIntelSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::GetThreatIntelSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InviteMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::InviteMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDetectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::ListDetectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFilters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::ListFilters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::ListFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::ListInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIPSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::ListIPSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::ListMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThreatIntelSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::ListThreatIntelSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMonitoringMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::StartMonitoringMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopMonitoringMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::StopMonitoringMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnarchiveFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::UnarchiveFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::UpdateDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::UpdateFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFindingsFeedback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::UpdateFindingsFeedback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::UpdateIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateThreatIntelSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GuardDuty::UpdateThreatIntelSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDetectors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDetectors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDetectors(@_, NextToken => $next_result->NextToken);
        push @{ $result->DetectorIds }, @{ $next_result->DetectorIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DetectorIds') foreach (@{ $result->DetectorIds });
        $result = $self->ListDetectors(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DetectorIds') foreach (@{ $result->DetectorIds });
    }

    return undef
  }
  sub ListAllFilters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFilters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFilters(@_, NextToken => $next_result->NextToken);
        push @{ $result->FilterNames }, @{ $next_result->FilterNames };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FilterNames') foreach (@{ $result->FilterNames });
        $result = $self->ListFilters(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FilterNames') foreach (@{ $result->FilterNames });
    }

    return undef
  }
  sub ListAllFindings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFindings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFindings(@_, NextToken => $next_result->NextToken);
        push @{ $result->FindingIds }, @{ $next_result->FindingIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FindingIds') foreach (@{ $result->FindingIds });
        $result = $self->ListFindings(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FindingIds') foreach (@{ $result->FindingIds });
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
  sub ListAllIPSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIPSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListIPSets(@_, NextToken => $next_result->NextToken);
        push @{ $result->IpSetIds }, @{ $next_result->IpSetIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IpSetIds') foreach (@{ $result->IpSetIds });
        $result = $self->ListIPSets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IpSetIds') foreach (@{ $result->IpSetIds });
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
  sub ListAllThreatIntelSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListThreatIntelSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListThreatIntelSets(@_, NextToken => $next_result->NextToken);
        push @{ $result->ThreatIntelSetIds }, @{ $next_result->ThreatIntelSetIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ThreatIntelSetIds') foreach (@{ $result->ThreatIntelSetIds });
        $result = $self->ListThreatIntelSets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ThreatIntelSetIds') foreach (@{ $result->ThreatIntelSetIds });
    }

    return undef
  }


  sub operations { qw/AcceptInvitation ArchiveFindings CreateDetector CreateFilter CreateIPSet CreateMembers CreateSampleFindings CreateThreatIntelSet DeclineInvitations DeleteDetector DeleteFilter DeleteInvitations DeleteIPSet DeleteMembers DeleteThreatIntelSet DisassociateFromMasterAccount DisassociateMembers GetDetector GetFilter GetFindings GetFindingsStatistics GetInvitationsCount GetIPSet GetMasterAccount GetMembers GetThreatIntelSet InviteMembers ListDetectors ListFilters ListFindings ListInvitations ListIPSets ListMembers ListThreatIntelSets StartMonitoringMembers StopMonitoringMembers UnarchiveFindings UpdateDetector UpdateFilter UpdateFindingsFeedback UpdateIPSet UpdateThreatIntelSet / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty - Perl Interface to AWS Amazon GuardDuty

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('GuardDuty');
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

Assess, monitor, manage, and remediate security issues across your AWS
infrastructure, applications, and data.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28>


=head1 METHODS

=head2 AcceptInvitation

=over

=item DetectorId => Str

=item InvitationId => Str

=item MasterId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::AcceptInvitation>

Returns: a L<Paws::GuardDuty::AcceptInvitationResponse> instance

Accepts the invitation to be monitored by a master GuardDuty account.


=head2 ArchiveFindings

=over

=item DetectorId => Str

=item FindingIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GuardDuty::ArchiveFindings>

Returns: a L<Paws::GuardDuty::ArchiveFindingsResponse> instance

Archives Amazon GuardDuty findings specified by the list of finding
IDs.


=head2 CreateDetector

=over

=item Enable => Bool

=item [ClientToken => Str]

=item [FindingPublishingFrequency => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::CreateDetector>

Returns: a L<Paws::GuardDuty::CreateDetectorResponse> instance

Creates a single Amazon GuardDuty detector. A detector is an object
that represents the GuardDuty service. A detector must be created in
order for GuardDuty to become operational.


=head2 CreateFilter

=over

=item DetectorId => Str

=item FindingCriteria => L<Paws::GuardDuty::FindingCriteria>

=item Name => Str

=item [Action => Str]

=item [ClientToken => Str]

=item [Description => Str]

=item [Rank => Int]


=back

Each argument is described in detail in: L<Paws::GuardDuty::CreateFilter>

Returns: a L<Paws::GuardDuty::CreateFilterResponse> instance

Creates a filter using the specified finding criteria.


=head2 CreateIPSet

=over

=item Activate => Bool

=item DetectorId => Str

=item Format => Str

=item Location => Str

=item Name => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::CreateIPSet>

Returns: a L<Paws::GuardDuty::CreateIPSetResponse> instance

Creates a new IPSet - a list of trusted IP addresses that have been
whitelisted for secure communication with AWS infrastructure and
applications.


=head2 CreateMembers

=over

=item AccountDetails => ArrayRef[L<Paws::GuardDuty::AccountDetail>]

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::CreateMembers>

Returns: a L<Paws::GuardDuty::CreateMembersResponse> instance

Creates member accounts of the current AWS account by specifying a list
of AWS account IDs. The current AWS account can then invite these
members to manage GuardDuty in their accounts.


=head2 CreateSampleFindings

=over

=item DetectorId => Str

=item [FindingTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::GuardDuty::CreateSampleFindings>

Returns: a L<Paws::GuardDuty::CreateSampleFindingsResponse> instance

Generates example findings of types specified by the list of finding
types. If 'NULL' is specified for findingTypes, the API generates
example findings of all supported finding types.


=head2 CreateThreatIntelSet

=over

=item Activate => Bool

=item DetectorId => Str

=item Format => Str

=item Location => Str

=item Name => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::CreateThreatIntelSet>

Returns: a L<Paws::GuardDuty::CreateThreatIntelSetResponse> instance

Create a new ThreatIntelSet. ThreatIntelSets consist of known malicious
IP addresses. GuardDuty generates findings based on ThreatIntelSets.


=head2 DeclineInvitations

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GuardDuty::DeclineInvitations>

Returns: a L<Paws::GuardDuty::DeclineInvitationsResponse> instance

Declines invitations sent to the current member account by AWS account
specified by their account IDs.


=head2 DeleteDetector

=over

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::DeleteDetector>

Returns: a L<Paws::GuardDuty::DeleteDetectorResponse> instance

Deletes a Amazon GuardDuty detector specified by the detector ID.


=head2 DeleteFilter

=over

=item DetectorId => Str

=item FilterName => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::DeleteFilter>

Returns: a L<Paws::GuardDuty::DeleteFilterResponse> instance

Deletes the filter specified by the filter name.


=head2 DeleteInvitations

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GuardDuty::DeleteInvitations>

Returns: a L<Paws::GuardDuty::DeleteInvitationsResponse> instance

Deletes invitations sent to the current member account by AWS accounts
specified by their account IDs.


=head2 DeleteIPSet

=over

=item DetectorId => Str

=item IpSetId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::DeleteIPSet>

Returns: a L<Paws::GuardDuty::DeleteIPSetResponse> instance

Deletes the IPSet specified by the IPSet ID.


=head2 DeleteMembers

=over

=item AccountIds => ArrayRef[Str|Undef]

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::DeleteMembers>

Returns: a L<Paws::GuardDuty::DeleteMembersResponse> instance

Deletes GuardDuty member accounts (to the current GuardDuty master
account) specified by the account IDs.


=head2 DeleteThreatIntelSet

=over

=item DetectorId => Str

=item ThreatIntelSetId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::DeleteThreatIntelSet>

Returns: a L<Paws::GuardDuty::DeleteThreatIntelSetResponse> instance

Deletes ThreatIntelSet specified by the ThreatIntelSet ID.


=head2 DisassociateFromMasterAccount

=over

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::DisassociateFromMasterAccount>

Returns: a L<Paws::GuardDuty::DisassociateFromMasterAccountResponse> instance

Disassociates the current GuardDuty member account from its master
account.


=head2 DisassociateMembers

=over

=item AccountIds => ArrayRef[Str|Undef]

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::DisassociateMembers>

Returns: a L<Paws::GuardDuty::DisassociateMembersResponse> instance

Disassociates GuardDuty member accounts (to the current GuardDuty
master account) specified by the account IDs.


=head2 GetDetector

=over

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetDetector>

Returns: a L<Paws::GuardDuty::GetDetectorResponse> instance

Retrieves an Amazon GuardDuty detector specified by the detectorId.


=head2 GetFilter

=over

=item DetectorId => Str

=item FilterName => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetFilter>

Returns: a L<Paws::GuardDuty::GetFilterResponse> instance

Returns the details of the filter specified by the filter name.


=head2 GetFindings

=over

=item DetectorId => Str

=item FindingIds => ArrayRef[Str|Undef]

=item [SortCriteria => L<Paws::GuardDuty::SortCriteria>]


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetFindings>

Returns: a L<Paws::GuardDuty::GetFindingsResponse> instance

Describes Amazon GuardDuty findings specified by finding IDs.


=head2 GetFindingsStatistics

=over

=item DetectorId => Str

=item FindingStatisticTypes => ArrayRef[Str|Undef]

=item [FindingCriteria => L<Paws::GuardDuty::FindingCriteria>]


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetFindingsStatistics>

Returns: a L<Paws::GuardDuty::GetFindingsStatisticsResponse> instance

Lists Amazon GuardDuty findings' statistics for the specified detector
ID.


=head2 GetInvitationsCount






Each argument is described in detail in: L<Paws::GuardDuty::GetInvitationsCount>

Returns: a L<Paws::GuardDuty::GetInvitationsCountResponse> instance

Returns the count of all GuardDuty membership invitations that were
sent to the current member account except the currently accepted
invitation.


=head2 GetIPSet

=over

=item DetectorId => Str

=item IpSetId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetIPSet>

Returns: a L<Paws::GuardDuty::GetIPSetResponse> instance

Retrieves the IPSet specified by the IPSet ID.


=head2 GetMasterAccount

=over

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetMasterAccount>

Returns: a L<Paws::GuardDuty::GetMasterAccountResponse> instance

Provides the details for the GuardDuty master account to the current
GuardDuty member account.


=head2 GetMembers

=over

=item AccountIds => ArrayRef[Str|Undef]

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetMembers>

Returns: a L<Paws::GuardDuty::GetMembersResponse> instance

Retrieves GuardDuty member accounts (to the current GuardDuty master
account) specified by the account IDs.


=head2 GetThreatIntelSet

=over

=item DetectorId => Str

=item ThreatIntelSetId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::GetThreatIntelSet>

Returns: a L<Paws::GuardDuty::GetThreatIntelSetResponse> instance

Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet
ID.


=head2 InviteMembers

=over

=item AccountIds => ArrayRef[Str|Undef]

=item DetectorId => Str

=item [DisableEmailNotification => Bool]

=item [Message => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::InviteMembers>

Returns: a L<Paws::GuardDuty::InviteMembersResponse> instance

Invites other AWS accounts (created as members of the current AWS
account by CreateMembers) to enable GuardDuty and allow the current AWS
account to view and manage these accounts' GuardDuty findings on their
behalf as the master account.


=head2 ListDetectors

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::ListDetectors>

Returns: a L<Paws::GuardDuty::ListDetectorsResponse> instance

Lists detectorIds of all the existing Amazon GuardDuty detector
resources.


=head2 ListFilters

=over

=item DetectorId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::ListFilters>

Returns: a L<Paws::GuardDuty::ListFiltersResponse> instance

Returns a paginated list of the current filters.


=head2 ListFindings

=over

=item DetectorId => Str

=item [FindingCriteria => L<Paws::GuardDuty::FindingCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortCriteria => L<Paws::GuardDuty::SortCriteria>]


=back

Each argument is described in detail in: L<Paws::GuardDuty::ListFindings>

Returns: a L<Paws::GuardDuty::ListFindingsResponse> instance

Lists Amazon GuardDuty findings for the specified detector ID.


=head2 ListInvitations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::ListInvitations>

Returns: a L<Paws::GuardDuty::ListInvitationsResponse> instance

Lists all GuardDuty membership invitations that were sent to the
current AWS account.


=head2 ListIPSets

=over

=item DetectorId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::ListIPSets>

Returns: a L<Paws::GuardDuty::ListIPSetsResponse> instance

Lists the IPSets of the GuardDuty service specified by the detector ID.


=head2 ListMembers

=over

=item DetectorId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OnlyAssociated => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::ListMembers>

Returns: a L<Paws::GuardDuty::ListMembersResponse> instance

Lists details about all member accounts for the current GuardDuty
master account.


=head2 ListThreatIntelSets

=over

=item DetectorId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::ListThreatIntelSets>

Returns: a L<Paws::GuardDuty::ListThreatIntelSetsResponse> instance

Lists the ThreatIntelSets of the GuardDuty service specified by the
detector ID.


=head2 StartMonitoringMembers

=over

=item AccountIds => ArrayRef[Str|Undef]

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::StartMonitoringMembers>

Returns: a L<Paws::GuardDuty::StartMonitoringMembersResponse> instance

Re-enables GuardDuty to monitor findings of the member accounts
specified by the account IDs. A master GuardDuty account can run this
command after disabling GuardDuty from monitoring these members'
findings by running StopMonitoringMembers.


=head2 StopMonitoringMembers

=over

=item AccountIds => ArrayRef[Str|Undef]

=item DetectorId => Str


=back

Each argument is described in detail in: L<Paws::GuardDuty::StopMonitoringMembers>

Returns: a L<Paws::GuardDuty::StopMonitoringMembersResponse> instance

Disables GuardDuty from monitoring findings of the member accounts
specified by the account IDs. After running this command, a master
GuardDuty account can run StartMonitoringMembers to re-enable GuardDuty
to monitor these membersE<rsquo> findings.


=head2 UnarchiveFindings

=over

=item DetectorId => Str

=item FindingIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GuardDuty::UnarchiveFindings>

Returns: a L<Paws::GuardDuty::UnarchiveFindingsResponse> instance

Unarchives Amazon GuardDuty findings specified by the list of finding
IDs.


=head2 UpdateDetector

=over

=item DetectorId => Str

=item [Enable => Bool]

=item [FindingPublishingFrequency => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::UpdateDetector>

Returns: a L<Paws::GuardDuty::UpdateDetectorResponse> instance

Updates an Amazon GuardDuty detector specified by the detectorId.


=head2 UpdateFilter

=over

=item DetectorId => Str

=item FilterName => Str

=item [Action => Str]

=item [Description => Str]

=item [FindingCriteria => L<Paws::GuardDuty::FindingCriteria>]

=item [Rank => Int]


=back

Each argument is described in detail in: L<Paws::GuardDuty::UpdateFilter>

Returns: a L<Paws::GuardDuty::UpdateFilterResponse> instance

Updates the filter specified by the filter name.


=head2 UpdateFindingsFeedback

=over

=item DetectorId => Str

=item Feedback => Str

=item FindingIds => ArrayRef[Str|Undef]

=item [Comments => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::UpdateFindingsFeedback>

Returns: a L<Paws::GuardDuty::UpdateFindingsFeedbackResponse> instance

Marks specified Amazon GuardDuty findings as useful or not useful.


=head2 UpdateIPSet

=over

=item DetectorId => Str

=item IpSetId => Str

=item [Activate => Bool]

=item [Location => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::UpdateIPSet>

Returns: a L<Paws::GuardDuty::UpdateIPSetResponse> instance

Updates the IPSet specified by the IPSet ID.


=head2 UpdateThreatIntelSet

=over

=item DetectorId => Str

=item ThreatIntelSetId => Str

=item [Activate => Bool]

=item [Location => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::GuardDuty::UpdateThreatIntelSet>

Returns: a L<Paws::GuardDuty::UpdateThreatIntelSetResponse> instance

Updates the ThreatIntelSet specified by ThreatIntelSet ID.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDetectors(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDetectors([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DetectorIds, passing the object as the first parameter, and the string 'DetectorIds' as the second parameter 

If not, it will return a a L<Paws::GuardDuty::ListDetectorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFilters(sub { },DetectorId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllFilters(DetectorId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FilterNames, passing the object as the first parameter, and the string 'FilterNames' as the second parameter 

If not, it will return a a L<Paws::GuardDuty::ListFiltersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFindings(sub { },DetectorId => Str, [FindingCriteria => L<Paws::GuardDuty::FindingCriteria>, MaxResults => Int, NextToken => Str, SortCriteria => L<Paws::GuardDuty::SortCriteria>])

=head2 ListAllFindings(DetectorId => Str, [FindingCriteria => L<Paws::GuardDuty::FindingCriteria>, MaxResults => Int, NextToken => Str, SortCriteria => L<Paws::GuardDuty::SortCriteria>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FindingIds, passing the object as the first parameter, and the string 'FindingIds' as the second parameter 

If not, it will return a a L<Paws::GuardDuty::ListFindingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInvitations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllInvitations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Invitations, passing the object as the first parameter, and the string 'Invitations' as the second parameter 

If not, it will return a a L<Paws::GuardDuty::ListInvitationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIPSets(sub { },DetectorId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllIPSets(DetectorId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IpSetIds, passing the object as the first parameter, and the string 'IpSetIds' as the second parameter 

If not, it will return a a L<Paws::GuardDuty::ListIPSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMembers(sub { },DetectorId => Str, [MaxResults => Int, NextToken => Str, OnlyAssociated => Str])

=head2 ListAllMembers(DetectorId => Str, [MaxResults => Int, NextToken => Str, OnlyAssociated => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Members, passing the object as the first parameter, and the string 'Members' as the second parameter 

If not, it will return a a L<Paws::GuardDuty::ListMembersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllThreatIntelSets(sub { },DetectorId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllThreatIntelSets(DetectorId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ThreatIntelSetIds, passing the object as the first parameter, and the string 'ThreatIntelSetIds' as the second parameter 

If not, it will return a a L<Paws::GuardDuty::ListThreatIntelSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

