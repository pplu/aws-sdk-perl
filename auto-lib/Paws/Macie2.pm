package Paws::Macie2;
  use Moose;
  sub service { 'macie2' }
  sub signing_name { 'macie2' }
  sub version { '2020-01-01' }
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
    my $call_object = $self->new_with_coercions('Paws::Macie2::AcceptInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetCustomDataIdentifiers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::BatchGetCustomDataIdentifiers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateClassificationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::CreateClassificationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCustomDataIdentifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::CreateCustomDataIdentifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFindingsFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::CreateFindingsFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::CreateInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::CreateMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSampleFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::CreateSampleFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeclineInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::DeclineInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCustomDataIdentifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::DeleteCustomDataIdentifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFindingsFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::DeleteFindingsFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::DeleteInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::DeleteMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBuckets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::DescribeBuckets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClassificationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::DescribeClassificationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrganizationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::DescribeOrganizationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableMacie {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::DisableMacie', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableOrganizationAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::DisableOrganizationAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateFromAdministratorAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::DisassociateFromAdministratorAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateFromMasterAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::DisassociateFromMasterAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::DisassociateMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableMacie {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::EnableMacie', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableOrganizationAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::EnableOrganizationAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAdministratorAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::GetAdministratorAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::GetBucketStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetClassificationExportConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::GetClassificationExportConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCustomDataIdentifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::GetCustomDataIdentifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::GetFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFindingsFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::GetFindingsFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFindingsPublicationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::GetFindingsPublicationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFindingStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::GetFindingStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInvitationsCount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::GetInvitationsCount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMacieSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::GetMacieSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMasterAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::GetMasterAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::GetMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUsageStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::GetUsageStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUsageTotals {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::GetUsageTotals', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClassificationJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::ListClassificationJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCustomDataIdentifiers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::ListCustomDataIdentifiers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::ListFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFindingsFilters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::ListFindingsFilters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::ListInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::ListMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOrganizationAdminAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::ListOrganizationAdminAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutClassificationExportConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::PutClassificationExportConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutFindingsPublicationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::PutFindingsPublicationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::SearchResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestCustomDataIdentifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::TestCustomDataIdentifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateClassificationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::UpdateClassificationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFindingsFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::UpdateFindingsFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMacieSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::UpdateMacieSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMemberSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::UpdateMemberSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateOrganizationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie2::UpdateOrganizationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllBuckets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeBuckets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeBuckets(@_, nextToken => $next_result->nextToken);
        push @{ $result->buckets }, @{ $next_result->buckets };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'buckets') foreach (@{ $result->buckets });
        $result = $self->DescribeBuckets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'buckets') foreach (@{ $result->buckets });
    }

    return undef
  }
  sub GetAllUsageStatistics {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetUsageStatistics(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetUsageStatistics(@_, nextToken => $next_result->nextToken);
        push @{ $result->records }, @{ $next_result->records };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'records') foreach (@{ $result->records });
        $result = $self->GetUsageStatistics(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'records') foreach (@{ $result->records });
    }

    return undef
  }
  sub ListAllClassificationJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClassificationJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListClassificationJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListClassificationJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllCustomDataIdentifiers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCustomDataIdentifiers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCustomDataIdentifiers(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListCustomDataIdentifiers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllFindings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFindings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFindings(@_, nextToken => $next_result->nextToken);
        push @{ $result->findingIds }, @{ $next_result->findingIds };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'findingIds') foreach (@{ $result->findingIds });
        $result = $self->ListFindings(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'findingIds') foreach (@{ $result->findingIds });
    }

    return undef
  }
  sub ListAllFindingsFilters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFindingsFilters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFindingsFilters(@_, nextToken => $next_result->nextToken);
        push @{ $result->findingsFilterListItems }, @{ $next_result->findingsFilterListItems };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'findingsFilterListItems') foreach (@{ $result->findingsFilterListItems });
        $result = $self->ListFindingsFilters(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'findingsFilterListItems') foreach (@{ $result->findingsFilterListItems });
    }

    return undef
  }
  sub ListAllInvitations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInvitations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListInvitations(@_, nextToken => $next_result->nextToken);
        push @{ $result->invitations }, @{ $next_result->invitations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'invitations') foreach (@{ $result->invitations });
        $result = $self->ListInvitations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'invitations') foreach (@{ $result->invitations });
    }

    return undef
  }
  sub ListAllMembers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMembers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMembers(@_, nextToken => $next_result->nextToken);
        push @{ $result->members }, @{ $next_result->members };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'members') foreach (@{ $result->members });
        $result = $self->ListMembers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'members') foreach (@{ $result->members });
    }

    return undef
  }
  sub ListAllOrganizationAdminAccounts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOrganizationAdminAccounts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListOrganizationAdminAccounts(@_, nextToken => $next_result->nextToken);
        push @{ $result->adminAccounts }, @{ $next_result->adminAccounts };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'adminAccounts') foreach (@{ $result->adminAccounts });
        $result = $self->ListOrganizationAdminAccounts(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'adminAccounts') foreach (@{ $result->adminAccounts });
    }

    return undef
  }
  sub SearchAllResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchResources(@_, nextToken => $next_result->nextToken);
        push @{ $result->matchingResources }, @{ $next_result->matchingResources };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'matchingResources') foreach (@{ $result->matchingResources });
        $result = $self->SearchResources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'matchingResources') foreach (@{ $result->matchingResources });
    }

    return undef
  }


  sub operations { qw/AcceptInvitation BatchGetCustomDataIdentifiers CreateClassificationJob CreateCustomDataIdentifier CreateFindingsFilter CreateInvitations CreateMember CreateSampleFindings DeclineInvitations DeleteCustomDataIdentifier DeleteFindingsFilter DeleteInvitations DeleteMember DescribeBuckets DescribeClassificationJob DescribeOrganizationConfiguration DisableMacie DisableOrganizationAdminAccount DisassociateFromAdministratorAccount DisassociateFromMasterAccount DisassociateMember EnableMacie EnableOrganizationAdminAccount GetAdministratorAccount GetBucketStatistics GetClassificationExportConfiguration GetCustomDataIdentifier GetFindings GetFindingsFilter GetFindingsPublicationConfiguration GetFindingStatistics GetInvitationsCount GetMacieSession GetMasterAccount GetMember GetUsageStatistics GetUsageTotals ListClassificationJobs ListCustomDataIdentifiers ListFindings ListFindingsFilters ListInvitations ListMembers ListOrganizationAdminAccounts ListTagsForResource PutClassificationExportConfiguration PutFindingsPublicationConfiguration SearchResources TagResource TestCustomDataIdentifier UntagResource UpdateClassificationJob UpdateFindingsFilter UpdateMacieSession UpdateMemberSession UpdateOrganizationConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2 - Perl Interface to AWS Amazon Macie 2

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Macie2');
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

Amazon Macie is a fully managed data security and data privacy service
that uses machine learning and pattern matching to discover and protect
your sensitive data in AWS. Macie automates the discovery of sensitive
data, such as PII and intellectual property, to provide you with
insight into the data that your organization stores in AWS. Macie also
provides an inventory of your Amazon S3 buckets, which it continually
monitors for you. If Macie detects sensitive data or potential data
access issues, it generates detailed findings for you to review and act
upon as necessary.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2-2020-01-01>


=head1 METHODS

=head2 AcceptInvitation

=over

=item InvitationId => Str

=item [AdministratorAccountId => Str]

=item [MasterAccount => Str]


=back

Each argument is described in detail in: L<Paws::Macie2::AcceptInvitation>

Returns: a L<Paws::Macie2::AcceptInvitationResponse> instance

Accepts an Amazon Macie membership invitation that was received from a
specific account.


=head2 BatchGetCustomDataIdentifiers

=over

=item [Ids => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Macie2::BatchGetCustomDataIdentifiers>

Returns: a L<Paws::Macie2::BatchGetCustomDataIdentifiersResponse> instance

Retrieves information about one or more custom data identifiers.


=head2 CreateClassificationJob

=over

=item ClientToken => Str

=item JobType => Str

=item Name => Str

=item S3JobDefinition => L<Paws::Macie2::S3JobDefinition>

=item [CustomDataIdentifierIds => ArrayRef[Str|Undef]]

=item [Description => Str]

=item [InitialRun => Bool]

=item [SamplingPercentage => Int]

=item [ScheduleFrequency => L<Paws::Macie2::JobScheduleFrequency>]

=item [Tags => L<Paws::Macie2::TagMap>]


=back

Each argument is described in detail in: L<Paws::Macie2::CreateClassificationJob>

Returns: a L<Paws::Macie2::CreateClassificationJobResponse> instance

Creates and defines the settings for a classification job.


=head2 CreateCustomDataIdentifier

=over

=item [ClientToken => Str]

=item [Description => Str]

=item [IgnoreWords => ArrayRef[Str|Undef]]

=item [Keywords => ArrayRef[Str|Undef]]

=item [MaximumMatchDistance => Int]

=item [Name => Str]

=item [Regex => Str]

=item [Tags => L<Paws::Macie2::TagMap>]


=back

Each argument is described in detail in: L<Paws::Macie2::CreateCustomDataIdentifier>

Returns: a L<Paws::Macie2::CreateCustomDataIdentifierResponse> instance

Creates and defines the criteria and other settings for a custom data
identifier.


=head2 CreateFindingsFilter

=over

=item Action => Str

=item FindingCriteria => L<Paws::Macie2::FindingCriteria>

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Position => Int]

=item [Tags => L<Paws::Macie2::TagMap>]


=back

Each argument is described in detail in: L<Paws::Macie2::CreateFindingsFilter>

Returns: a L<Paws::Macie2::CreateFindingsFilterResponse> instance

Creates and defines the criteria and other settings for a findings
filter.


=head2 CreateInvitations

=over

=item AccountIds => ArrayRef[Str|Undef]

=item [DisableEmailNotification => Bool]

=item [Message => Str]


=back

Each argument is described in detail in: L<Paws::Macie2::CreateInvitations>

Returns: a L<Paws::Macie2::CreateInvitationsResponse> instance

Sends an Amazon Macie membership invitation to one or more accounts.


=head2 CreateMember

=over

=item Account => L<Paws::Macie2::AccountDetail>

=item [Tags => L<Paws::Macie2::TagMap>]


=back

Each argument is described in detail in: L<Paws::Macie2::CreateMember>

Returns: a L<Paws::Macie2::CreateMemberResponse> instance

Associates an account with an Amazon Macie administrator account.


=head2 CreateSampleFindings

=over

=item [FindingTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Macie2::CreateSampleFindings>

Returns: a L<Paws::Macie2::CreateSampleFindingsResponse> instance

Creates sample findings.


=head2 DeclineInvitations

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Macie2::DeclineInvitations>

Returns: a L<Paws::Macie2::DeclineInvitationsResponse> instance

Declines Amazon Macie membership invitations that were received from
specific accounts.


=head2 DeleteCustomDataIdentifier

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Macie2::DeleteCustomDataIdentifier>

Returns: a L<Paws::Macie2::DeleteCustomDataIdentifierResponse> instance

Soft deletes a custom data identifier.


=head2 DeleteFindingsFilter

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Macie2::DeleteFindingsFilter>

Returns: a L<Paws::Macie2::DeleteFindingsFilterResponse> instance

Deletes a findings filter.


=head2 DeleteInvitations

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Macie2::DeleteInvitations>

Returns: a L<Paws::Macie2::DeleteInvitationsResponse> instance

Deletes Amazon Macie membership invitations that were received from
specific accounts.


=head2 DeleteMember

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Macie2::DeleteMember>

Returns: a L<Paws::Macie2::DeleteMemberResponse> instance

Deletes the association between an Amazon Macie administrator account
and an account.


=head2 DescribeBuckets

=over

=item [Criteria => L<Paws::Macie2::BucketCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortCriteria => L<Paws::Macie2::BucketSortCriteria>]


=back

Each argument is described in detail in: L<Paws::Macie2::DescribeBuckets>

Returns: a L<Paws::Macie2::DescribeBucketsResponse> instance

Retrieves (queries) statistical data and other information about one or
more S3 buckets that Amazon Macie monitors and analyzes.


=head2 DescribeClassificationJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Macie2::DescribeClassificationJob>

Returns: a L<Paws::Macie2::DescribeClassificationJobResponse> instance

Retrieves the status and settings for a classification job.


=head2 DescribeOrganizationConfiguration






Each argument is described in detail in: L<Paws::Macie2::DescribeOrganizationConfiguration>

Returns: a L<Paws::Macie2::DescribeOrganizationConfigurationResponse> instance

Retrieves the Amazon Macie configuration settings for an Amazon Web
Services organization.


=head2 DisableMacie






Each argument is described in detail in: L<Paws::Macie2::DisableMacie>

Returns: a L<Paws::Macie2::DisableMacieResponse> instance

Disables an Amazon Macie account and deletes Macie resources for the
account.


=head2 DisableOrganizationAdminAccount

=over

=item AdminAccountId => Str


=back

Each argument is described in detail in: L<Paws::Macie2::DisableOrganizationAdminAccount>

Returns: a L<Paws::Macie2::DisableOrganizationAdminAccountResponse> instance

Disables an account as the delegated Amazon Macie administrator account
for an Amazon Web Services organization.


=head2 DisassociateFromAdministratorAccount






Each argument is described in detail in: L<Paws::Macie2::DisassociateFromAdministratorAccount>

Returns: a L<Paws::Macie2::DisassociateFromAdministratorAccountResponse> instance

Disassociates a member account from its Amazon Macie administrator
account.


=head2 DisassociateFromMasterAccount






Each argument is described in detail in: L<Paws::Macie2::DisassociateFromMasterAccount>

Returns: a L<Paws::Macie2::DisassociateFromMasterAccountResponse> instance

(Deprecated) Disassociates a member account from its Amazon Macie
administrator account. This operation has been replaced by the

DisassociateFromAdministratorAccount operation.


=head2 DisassociateMember

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Macie2::DisassociateMember>

Returns: a L<Paws::Macie2::DisassociateMemberResponse> instance

Disassociates an Amazon Macie administrator account from a member
account.


=head2 EnableMacie

=over

=item [ClientToken => Str]

=item [FindingPublishingFrequency => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Macie2::EnableMacie>

Returns: a L<Paws::Macie2::EnableMacieResponse> instance

Enables Amazon Macie and specifies the configuration settings for a
Macie account.


=head2 EnableOrganizationAdminAccount

=over

=item AdminAccountId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Macie2::EnableOrganizationAdminAccount>

Returns: a L<Paws::Macie2::EnableOrganizationAdminAccountResponse> instance

Designates an account as the delegated Amazon Macie administrator
account for an Amazon Web Services organization.


=head2 GetAdministratorAccount






Each argument is described in detail in: L<Paws::Macie2::GetAdministratorAccount>

Returns: a L<Paws::Macie2::GetAdministratorAccountResponse> instance

Retrieves information about the Amazon Macie administrator account for
an account.


=head2 GetBucketStatistics

=over

=item [AccountId => Str]


=back

Each argument is described in detail in: L<Paws::Macie2::GetBucketStatistics>

Returns: a L<Paws::Macie2::GetBucketStatisticsResponse> instance

Retrieves (queries) aggregated statistical data for all the S3 buckets
that Amazon Macie monitors and analyzes.


=head2 GetClassificationExportConfiguration






Each argument is described in detail in: L<Paws::Macie2::GetClassificationExportConfiguration>

Returns: a L<Paws::Macie2::GetClassificationExportConfigurationResponse> instance

Retrieves the configuration settings for storing data classification
results.


=head2 GetCustomDataIdentifier

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Macie2::GetCustomDataIdentifier>

Returns: a L<Paws::Macie2::GetCustomDataIdentifierResponse> instance

Retrieves the criteria and other settings for a custom data identifier.


=head2 GetFindings

=over

=item FindingIds => ArrayRef[Str|Undef]

=item [SortCriteria => L<Paws::Macie2::SortCriteria>]


=back

Each argument is described in detail in: L<Paws::Macie2::GetFindings>

Returns: a L<Paws::Macie2::GetFindingsResponse> instance

Retrieves the details of one or more findings.


=head2 GetFindingsFilter

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Macie2::GetFindingsFilter>

Returns: a L<Paws::Macie2::GetFindingsFilterResponse> instance

Retrieves the criteria and other settings for a findings filter.


=head2 GetFindingsPublicationConfiguration






Each argument is described in detail in: L<Paws::Macie2::GetFindingsPublicationConfiguration>

Returns: a L<Paws::Macie2::GetFindingsPublicationConfigurationResponse> instance

Retrieves the configuration settings for publishing findings to
Security Hub.


=head2 GetFindingStatistics

=over

=item GroupBy => Str

=item [FindingCriteria => L<Paws::Macie2::FindingCriteria>]

=item [Size => Int]

=item [SortCriteria => L<Paws::Macie2::FindingStatisticsSortCriteria>]


=back

Each argument is described in detail in: L<Paws::Macie2::GetFindingStatistics>

Returns: a L<Paws::Macie2::GetFindingStatisticsResponse> instance

Retrieves (queries) aggregated statistical data about findings.


=head2 GetInvitationsCount






Each argument is described in detail in: L<Paws::Macie2::GetInvitationsCount>

Returns: a L<Paws::Macie2::GetInvitationsCountResponse> instance

Retrieves the count of Amazon Macie membership invitations that were
received by an account.


=head2 GetMacieSession






Each argument is described in detail in: L<Paws::Macie2::GetMacieSession>

Returns: a L<Paws::Macie2::GetMacieSessionResponse> instance

Retrieves the current status and configuration settings for an Amazon
Macie account.


=head2 GetMasterAccount






Each argument is described in detail in: L<Paws::Macie2::GetMasterAccount>

Returns: a L<Paws::Macie2::GetMasterAccountResponse> instance

(Deprecated) Retrieves information about the Amazon Macie administrator
account for an account. This operation has been replaced by the

GetAdministratorAccount operation.


=head2 GetMember

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Macie2::GetMember>

Returns: a L<Paws::Macie2::GetMemberResponse> instance

Retrieves information about an account that's associated with an Amazon
Macie administrator account.


=head2 GetUsageStatistics

=over

=item [FilterBy => ArrayRef[L<Paws::Macie2::UsageStatisticsFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => L<Paws::Macie2::UsageStatisticsSortBy>]

=item [TimeRange => Str]


=back

Each argument is described in detail in: L<Paws::Macie2::GetUsageStatistics>

Returns: a L<Paws::Macie2::GetUsageStatisticsResponse> instance

Retrieves (queries) quotas and aggregated usage data for one or more
accounts.


=head2 GetUsageTotals

=over

=item [TimeRange => Str]


=back

Each argument is described in detail in: L<Paws::Macie2::GetUsageTotals>

Returns: a L<Paws::Macie2::GetUsageTotalsResponse> instance

Retrieves (queries) aggregated usage data for an account.


=head2 ListClassificationJobs

=over

=item [FilterCriteria => L<Paws::Macie2::ListJobsFilterCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortCriteria => L<Paws::Macie2::ListJobsSortCriteria>]


=back

Each argument is described in detail in: L<Paws::Macie2::ListClassificationJobs>

Returns: a L<Paws::Macie2::ListClassificationJobsResponse> instance

Retrieves a subset of information about one or more classification
jobs.


=head2 ListCustomDataIdentifiers

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Macie2::ListCustomDataIdentifiers>

Returns: a L<Paws::Macie2::ListCustomDataIdentifiersResponse> instance

Retrieves a subset of information about all the custom data identifiers
for an account.


=head2 ListFindings

=over

=item [FindingCriteria => L<Paws::Macie2::FindingCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortCriteria => L<Paws::Macie2::SortCriteria>]


=back

Each argument is described in detail in: L<Paws::Macie2::ListFindings>

Returns: a L<Paws::Macie2::ListFindingsResponse> instance

Retrieves a subset of information about one or more findings.


=head2 ListFindingsFilters

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Macie2::ListFindingsFilters>

Returns: a L<Paws::Macie2::ListFindingsFiltersResponse> instance

Retrieves a subset of information about all the findings filters for an
account.


=head2 ListInvitations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Macie2::ListInvitations>

Returns: a L<Paws::Macie2::ListInvitationsResponse> instance

Retrieves information about all the Amazon Macie membership invitations
that were received by an account.


=head2 ListMembers

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OnlyAssociated => Str]


=back

Each argument is described in detail in: L<Paws::Macie2::ListMembers>

Returns: a L<Paws::Macie2::ListMembersResponse> instance

Retrieves information about the accounts that are associated with an
Amazon Macie administrator account.


=head2 ListOrganizationAdminAccounts

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Macie2::ListOrganizationAdminAccounts>

Returns: a L<Paws::Macie2::ListOrganizationAdminAccountsResponse> instance

Retrieves information about the delegated Amazon Macie administrator
account for an Amazon Web Services organization.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Macie2::ListTagsForResource>

Returns: a L<Paws::Macie2::ListTagsForResourceResponse> instance

Retrieves the tags (keys and values) that are associated with a
classification job, custom data identifier, findings filter, or member
account.


=head2 PutClassificationExportConfiguration

=over

=item Configuration => L<Paws::Macie2::ClassificationExportConfiguration>


=back

Each argument is described in detail in: L<Paws::Macie2::PutClassificationExportConfiguration>

Returns: a L<Paws::Macie2::PutClassificationExportConfigurationResponse> instance

Creates or updates the configuration settings for storing data
classification results.


=head2 PutFindingsPublicationConfiguration

=over

=item [ClientToken => Str]

=item [SecurityHubConfiguration => L<Paws::Macie2::SecurityHubConfiguration>]


=back

Each argument is described in detail in: L<Paws::Macie2::PutFindingsPublicationConfiguration>

Returns: a L<Paws::Macie2::PutFindingsPublicationConfigurationResponse> instance

Updates the configuration settings for publishing findings to Security
Hub.


=head2 SearchResources

=over

=item [BucketCriteria => L<Paws::Macie2::SearchResourcesBucketCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortCriteria => L<Paws::Macie2::SearchResourcesSortCriteria>]


=back

Each argument is described in detail in: L<Paws::Macie2::SearchResources>

Returns: a L<Paws::Macie2::SearchResourcesResponse> instance

Retrieves (queries) statistical data and other information about Amazon
Web Services resources that Amazon Macie monitors and analyzes.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Macie2::TagMap>


=back

Each argument is described in detail in: L<Paws::Macie2::TagResource>

Returns: a L<Paws::Macie2::TagResourceResponse> instance

Adds or updates one or more tags (keys and values) that are associated
with a classification job, custom data identifier, findings filter, or
member account.


=head2 TestCustomDataIdentifier

=over

=item Regex => Str

=item SampleText => Str

=item [IgnoreWords => ArrayRef[Str|Undef]]

=item [Keywords => ArrayRef[Str|Undef]]

=item [MaximumMatchDistance => Int]


=back

Each argument is described in detail in: L<Paws::Macie2::TestCustomDataIdentifier>

Returns: a L<Paws::Macie2::TestCustomDataIdentifierResponse> instance

Tests a custom data identifier.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Macie2::UntagResource>

Returns: a L<Paws::Macie2::UntagResourceResponse> instance

Removes one or more tags (keys and values) from a classification job,
custom data identifier, findings filter, or member account.


=head2 UpdateClassificationJob

=over

=item JobId => Str

=item JobStatus => Str


=back

Each argument is described in detail in: L<Paws::Macie2::UpdateClassificationJob>

Returns: a L<Paws::Macie2::UpdateClassificationJobResponse> instance

Changes the status of a classification job.


=head2 UpdateFindingsFilter

=over

=item Id => Str

=item [Action => Str]

=item [ClientToken => Str]

=item [Description => Str]

=item [FindingCriteria => L<Paws::Macie2::FindingCriteria>]

=item [Name => Str]

=item [Position => Int]


=back

Each argument is described in detail in: L<Paws::Macie2::UpdateFindingsFilter>

Returns: a L<Paws::Macie2::UpdateFindingsFilterResponse> instance

Updates the criteria and other settings for a findings filter.


=head2 UpdateMacieSession

=over

=item [FindingPublishingFrequency => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Macie2::UpdateMacieSession>

Returns: a L<Paws::Macie2::UpdateMacieSessionResponse> instance

Suspends or re-enables an Amazon Macie account, or updates the
configuration settings for a Macie account.


=head2 UpdateMemberSession

=over

=item Id => Str

=item Status => Str


=back

Each argument is described in detail in: L<Paws::Macie2::UpdateMemberSession>

Returns: a L<Paws::Macie2::UpdateMemberSessionResponse> instance

Enables an Amazon Macie administrator to suspend or re-enable a member
account.


=head2 UpdateOrganizationConfiguration

=over

=item AutoEnable => Bool


=back

Each argument is described in detail in: L<Paws::Macie2::UpdateOrganizationConfiguration>

Returns: a L<Paws::Macie2::UpdateOrganizationConfigurationResponse> instance

Updates the Amazon Macie configuration settings for an Amazon Web
Services organization.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllBuckets(sub { },[Criteria => L<Paws::Macie2::BucketCriteria>, MaxResults => Int, NextToken => Str, SortCriteria => L<Paws::Macie2::BucketSortCriteria>])

=head2 DescribeAllBuckets([Criteria => L<Paws::Macie2::BucketCriteria>, MaxResults => Int, NextToken => Str, SortCriteria => L<Paws::Macie2::BucketSortCriteria>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - buckets, passing the object as the first parameter, and the string 'buckets' as the second parameter 

If not, it will return a a L<Paws::Macie2::DescribeBucketsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllUsageStatistics(sub { },[FilterBy => ArrayRef[L<Paws::Macie2::UsageStatisticsFilter>], MaxResults => Int, NextToken => Str, SortBy => L<Paws::Macie2::UsageStatisticsSortBy>, TimeRange => Str])

=head2 GetAllUsageStatistics([FilterBy => ArrayRef[L<Paws::Macie2::UsageStatisticsFilter>], MaxResults => Int, NextToken => Str, SortBy => L<Paws::Macie2::UsageStatisticsSortBy>, TimeRange => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - records, passing the object as the first parameter, and the string 'records' as the second parameter 

If not, it will return a a L<Paws::Macie2::GetUsageStatisticsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllClassificationJobs(sub { },[FilterCriteria => L<Paws::Macie2::ListJobsFilterCriteria>, MaxResults => Int, NextToken => Str, SortCriteria => L<Paws::Macie2::ListJobsSortCriteria>])

=head2 ListAllClassificationJobs([FilterCriteria => L<Paws::Macie2::ListJobsFilterCriteria>, MaxResults => Int, NextToken => Str, SortCriteria => L<Paws::Macie2::ListJobsSortCriteria>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::Macie2::ListClassificationJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCustomDataIdentifiers(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllCustomDataIdentifiers([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::Macie2::ListCustomDataIdentifiersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFindings(sub { },[FindingCriteria => L<Paws::Macie2::FindingCriteria>, MaxResults => Int, NextToken => Str, SortCriteria => L<Paws::Macie2::SortCriteria>])

=head2 ListAllFindings([FindingCriteria => L<Paws::Macie2::FindingCriteria>, MaxResults => Int, NextToken => Str, SortCriteria => L<Paws::Macie2::SortCriteria>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - findingIds, passing the object as the first parameter, and the string 'findingIds' as the second parameter 

If not, it will return a a L<Paws::Macie2::ListFindingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFindingsFilters(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllFindingsFilters([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - findingsFilterListItems, passing the object as the first parameter, and the string 'findingsFilterListItems' as the second parameter 

If not, it will return a a L<Paws::Macie2::ListFindingsFiltersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInvitations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllInvitations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - invitations, passing the object as the first parameter, and the string 'invitations' as the second parameter 

If not, it will return a a L<Paws::Macie2::ListInvitationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMembers(sub { },[MaxResults => Int, NextToken => Str, OnlyAssociated => Str])

=head2 ListAllMembers([MaxResults => Int, NextToken => Str, OnlyAssociated => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - members, passing the object as the first parameter, and the string 'members' as the second parameter 

If not, it will return a a L<Paws::Macie2::ListMembersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOrganizationAdminAccounts(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllOrganizationAdminAccounts([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - adminAccounts, passing the object as the first parameter, and the string 'adminAccounts' as the second parameter 

If not, it will return a a L<Paws::Macie2::ListOrganizationAdminAccountsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllResources(sub { },[BucketCriteria => L<Paws::Macie2::SearchResourcesBucketCriteria>, MaxResults => Int, NextToken => Str, SortCriteria => L<Paws::Macie2::SearchResourcesSortCriteria>])

=head2 SearchAllResources([BucketCriteria => L<Paws::Macie2::SearchResourcesBucketCriteria>, MaxResults => Int, NextToken => Str, SortCriteria => L<Paws::Macie2::SearchResourcesSortCriteria>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - matchingResources, passing the object as the first parameter, and the string 'matchingResources' as the second parameter 

If not, it will return a a L<Paws::Macie2::SearchResourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

