package Paws::Organizations;
  use Moose;
  sub service { 'organizations' }
  sub signing_name { 'organizations' }
  sub version { '2016-11-28' }
  sub target_prefix { 'AWSOrganizationsV20161128' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
       sub { defined $_[0]->http_status and $_[0]->http_status == 400 and $_[0]->code eq 'TooManyRequestsException' },
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AcceptHandshake {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::AcceptHandshake', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::AttachPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelHandshake {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::CancelHandshake', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::CreateAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGovCloudAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::CreateGovCloudAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::CreateOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOrganizationalUnit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::CreateOrganizationalUnit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::CreatePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeclineHandshake {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DeclineHandshake', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DeleteOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOrganizationalUnit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DeleteOrganizationalUnit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DeletePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterDelegatedAdministrator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DeregisterDelegatedAdministrator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DescribeAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCreateAccountStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DescribeCreateAccountStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEffectivePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DescribeEffectivePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHandshake {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DescribeHandshake', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DescribeOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrganizationalUnit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DescribeOrganizationalUnit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DescribePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DetachPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableAWSServiceAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DisableAWSServiceAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisablePolicyType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DisablePolicyType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableAllFeatures {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::EnableAllFeatures', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableAWSServiceAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::EnableAWSServiceAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnablePolicyType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::EnablePolicyType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InviteAccountToOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::InviteAccountToOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub LeaveOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::LeaveOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccountsForParent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListAccountsForParent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAWSServiceAccessForOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListAWSServiceAccessForOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChildren {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListChildren', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCreateAccountStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListCreateAccountStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDelegatedAdministrators {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListDelegatedAdministrators', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDelegatedServicesForAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListDelegatedServicesForAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHandshakesForAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListHandshakesForAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHandshakesForOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListHandshakesForOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOrganizationalUnitsForParent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListOrganizationalUnitsForParent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListParents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListParents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPoliciesForTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListPoliciesForTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRoots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListRoots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTargetsForPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListTargetsForPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MoveAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::MoveAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterDelegatedAdministrator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::RegisterDelegatedAdministrator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveAccountFromOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::RemoveAccountFromOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateOrganizationalUnit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::UpdateOrganizationalUnit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::UpdatePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAccounts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccounts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAccounts(@_, NextToken => $next_result->NextToken);
        push @{ $result->Accounts }, @{ $next_result->Accounts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Accounts') foreach (@{ $result->Accounts });
        $result = $self->ListAccounts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Accounts') foreach (@{ $result->Accounts });
    }

    return undef
  }
  sub ListAllAccountsForParent {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccountsForParent(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAccountsForParent(@_, NextToken => $next_result->NextToken);
        push @{ $result->Accounts }, @{ $next_result->Accounts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Accounts') foreach (@{ $result->Accounts });
        $result = $self->ListAccountsForParent(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Accounts') foreach (@{ $result->Accounts });
    }

    return undef
  }
  sub ListAllAWSServiceAccessForOrganization {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAWSServiceAccessForOrganization(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAWSServiceAccessForOrganization(@_, NextToken => $next_result->NextToken);
        push @{ $result->EnabledServicePrincipals }, @{ $next_result->EnabledServicePrincipals };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EnabledServicePrincipals') foreach (@{ $result->EnabledServicePrincipals });
        $result = $self->ListAWSServiceAccessForOrganization(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EnabledServicePrincipals') foreach (@{ $result->EnabledServicePrincipals });
    }

    return undef
  }
  sub ListAllChildren {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListChildren(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListChildren(@_, NextToken => $next_result->NextToken);
        push @{ $result->Children }, @{ $next_result->Children };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Children') foreach (@{ $result->Children });
        $result = $self->ListChildren(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Children') foreach (@{ $result->Children });
    }

    return undef
  }
  sub ListAllCreateAccountStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCreateAccountStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCreateAccountStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->CreateAccountStatuses }, @{ $next_result->CreateAccountStatuses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CreateAccountStatuses') foreach (@{ $result->CreateAccountStatuses });
        $result = $self->ListCreateAccountStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CreateAccountStatuses') foreach (@{ $result->CreateAccountStatuses });
    }

    return undef
  }
  sub ListAllDelegatedAdministrators {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDelegatedAdministrators(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDelegatedAdministrators(@_, NextToken => $next_result->NextToken);
        push @{ $result->DelegatedAdministrators }, @{ $next_result->DelegatedAdministrators };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DelegatedAdministrators') foreach (@{ $result->DelegatedAdministrators });
        $result = $self->ListDelegatedAdministrators(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DelegatedAdministrators') foreach (@{ $result->DelegatedAdministrators });
    }

    return undef
  }
  sub ListAllDelegatedServicesForAccount {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDelegatedServicesForAccount(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDelegatedServicesForAccount(@_, NextToken => $next_result->NextToken);
        push @{ $result->DelegatedServices }, @{ $next_result->DelegatedServices };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DelegatedServices') foreach (@{ $result->DelegatedServices });
        $result = $self->ListDelegatedServicesForAccount(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DelegatedServices') foreach (@{ $result->DelegatedServices });
    }

    return undef
  }
  sub ListAllHandshakesForAccount {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListHandshakesForAccount(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListHandshakesForAccount(@_, NextToken => $next_result->NextToken);
        push @{ $result->Handshakes }, @{ $next_result->Handshakes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Handshakes') foreach (@{ $result->Handshakes });
        $result = $self->ListHandshakesForAccount(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Handshakes') foreach (@{ $result->Handshakes });
    }

    return undef
  }
  sub ListAllHandshakesForOrganization {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListHandshakesForOrganization(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListHandshakesForOrganization(@_, NextToken => $next_result->NextToken);
        push @{ $result->Handshakes }, @{ $next_result->Handshakes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Handshakes') foreach (@{ $result->Handshakes });
        $result = $self->ListHandshakesForOrganization(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Handshakes') foreach (@{ $result->Handshakes });
    }

    return undef
  }
  sub ListAllOrganizationalUnitsForParent {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOrganizationalUnitsForParent(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListOrganizationalUnitsForParent(@_, NextToken => $next_result->NextToken);
        push @{ $result->OrganizationalUnits }, @{ $next_result->OrganizationalUnits };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'OrganizationalUnits') foreach (@{ $result->OrganizationalUnits });
        $result = $self->ListOrganizationalUnitsForParent(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'OrganizationalUnits') foreach (@{ $result->OrganizationalUnits });
    }

    return undef
  }
  sub ListAllParents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListParents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListParents(@_, NextToken => $next_result->NextToken);
        push @{ $result->Parents }, @{ $next_result->Parents };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Parents') foreach (@{ $result->Parents });
        $result = $self->ListParents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Parents') foreach (@{ $result->Parents });
    }

    return undef
  }
  sub ListAllPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPolicies(@_, NextToken => $next_result->NextToken);
        push @{ $result->Policies }, @{ $next_result->Policies };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Policies') foreach (@{ $result->Policies });
        $result = $self->ListPolicies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Policies') foreach (@{ $result->Policies });
    }

    return undef
  }
  sub ListAllPoliciesForTarget {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPoliciesForTarget(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPoliciesForTarget(@_, NextToken => $next_result->NextToken);
        push @{ $result->Policies }, @{ $next_result->Policies };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Policies') foreach (@{ $result->Policies });
        $result = $self->ListPoliciesForTarget(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Policies') foreach (@{ $result->Policies });
    }

    return undef
  }
  sub ListAllRoots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRoots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRoots(@_, NextToken => $next_result->NextToken);
        push @{ $result->Roots }, @{ $next_result->Roots };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Roots') foreach (@{ $result->Roots });
        $result = $self->ListRoots(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Roots') foreach (@{ $result->Roots });
    }

    return undef
  }
  sub ListAllTagsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTagsForResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTagsForResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }
  sub ListAllTargetsForPolicy {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTargetsForPolicy(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTargetsForPolicy(@_, NextToken => $next_result->NextToken);
        push @{ $result->Targets }, @{ $next_result->Targets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Targets') foreach (@{ $result->Targets });
        $result = $self->ListTargetsForPolicy(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Targets') foreach (@{ $result->Targets });
    }

    return undef
  }


  sub operations { qw/AcceptHandshake AttachPolicy CancelHandshake CreateAccount CreateGovCloudAccount CreateOrganization CreateOrganizationalUnit CreatePolicy DeclineHandshake DeleteOrganization DeleteOrganizationalUnit DeletePolicy DeregisterDelegatedAdministrator DescribeAccount DescribeCreateAccountStatus DescribeEffectivePolicy DescribeHandshake DescribeOrganization DescribeOrganizationalUnit DescribePolicy DetachPolicy DisableAWSServiceAccess DisablePolicyType EnableAllFeatures EnableAWSServiceAccess EnablePolicyType InviteAccountToOrganization LeaveOrganization ListAccounts ListAccountsForParent ListAWSServiceAccessForOrganization ListChildren ListCreateAccountStatus ListDelegatedAdministrators ListDelegatedServicesForAccount ListHandshakesForAccount ListHandshakesForOrganization ListOrganizationalUnitsForParent ListParents ListPolicies ListPoliciesForTarget ListRoots ListTagsForResource ListTargetsForPolicy MoveAccount RegisterDelegatedAdministrator RemoveAccountFromOrganization TagResource UntagResource UpdateOrganizationalUnit UpdatePolicy / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations - Perl Interface to AWS AWS Organizations

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Organizations');
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

AWS Organizations is a web service that enables you to consolidate your
multiple AWS accounts into an I<organization> and centrally manage your
accounts and their resources.

This guide provides descriptions of the Organizations operations. For
more information about using this service, see the AWS Organizations
User Guide
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html).

B<Support and feedback for AWS Organizations>

We welcome your feedback. Send your comments to
feedback-awsorganizations@amazon.com
(mailto:feedback-awsorganizations@amazon.com) or post your feedback and
questions in the AWS Organizations support forum
(http://forums.aws.amazon.com/forum.jspa?forumID=219). For more
information about the AWS support forums, see Forums Help
(http://forums.aws.amazon.com/help.jspa).

B<Endpoint to call When using the AWS CLI or the AWS SDK>

For the current release of Organizations, specify the C<us-east-1>
region for all AWS API and AWS CLI calls made from the commercial AWS
Regions outside of China. If calling from one of the AWS Regions in
China, then specify C<cn-northwest-1>. You can do this in the AWS CLI
by using these parameters and commands:

=over

=item *

Use the following parameter with each command to specify both the
endpoint and its region:

C<--endpoint-url https://organizations.us-east-1.amazonaws.com> I<(from
commercial AWS Regions outside of China)>

or

C<--endpoint-url https://organizations.cn-northwest-1.amazonaws.com.cn>
I<(from AWS Regions in China)>

=item *

Use the default endpoint, but configure your default region with this
command:

C<aws configure set default.region us-east-1> I<(from commercial AWS
Regions outside of China)>

or

C<aws configure set default.region cn-northwest-1> I<(from AWS Regions
in China)>

=item *

Use the following parameter with each command to specify the endpoint:

C<--region us-east-1> I<(from commercial AWS Regions outside of China)>

or

C<--region cn-northwest-1> I<(from AWS Regions in China)>

=back

B<Recording API Requests>

AWS Organizations supports AWS CloudTrail, a service that records AWS
API calls for your AWS account and delivers log files to an Amazon S3
bucket. By using information collected by AWS CloudTrail, you can
determine which requests the Organizations service received, who made
the request and when, and so on. For more about AWS Organizations and
its support for AWS CloudTrail, see Logging AWS Organizations Events
with AWS CloudTrail
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_incident-response.html#orgs_cloudtrail-integration)
in the I<AWS Organizations User Guide>. To learn more about AWS
CloudTrail, including how to turn it on and find your log files, see
the AWS CloudTrail User Guide
(http://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28>


=head1 METHODS

=head2 AcceptHandshake

=over

=item HandshakeId => Str


=back

Each argument is described in detail in: L<Paws::Organizations::AcceptHandshake>

Returns: a L<Paws::Organizations::AcceptHandshakeResponse> instance

Sends a response to the originator of a handshake agreeing to the
action proposed by the handshake request.

This operation can be called only by the following principals when they
also have the relevant IAM permissions:

=over

=item *

B<Invitation to join> or B<Approve all features request> handshakes:
only a principal from the member account.

The user who calls the API for an invitation to join must have the
C<organizations:AcceptHandshake> permission. If you enabled all
features in the organization, the user must also have the
C<iam:CreateServiceLinkedRole> permission so that AWS Organizations can
create the required service-linked role named
C<AWSServiceRoleForOrganizations>. For more information, see AWS
Organizations and Service-Linked Roles
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integration_services.html#orgs_integration_service-linked-roles)
in the I<AWS Organizations User Guide>.

=item *

B<Enable all features final confirmation> handshake: only a principal
from the management account.

For more information about invitations, see Inviting an AWS Account to
Join Your Organization
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_invites.html)
in the I<AWS Organizations User Guide.> For more information about
requests to enable all features in the organization, see Enabling All
Features in Your Organization
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html)
in the I<AWS Organizations User Guide.>

=back

After you accept a handshake, it continues to appear in the results of
relevant APIs for only 30 days. After that, it's deleted.


=head2 AttachPolicy

=over

=item PolicyId => Str

=item TargetId => Str


=back

Each argument is described in detail in: L<Paws::Organizations::AttachPolicy>

Returns: nothing

Attaches a policy to a root, an organizational unit (OU), or an
individual account. How the policy affects accounts depends on the type
of policy. Refer to the I<AWS Organizations User Guide> for information
about each policy type:

=over

=item *

AISERVICES_OPT_OUT_POLICY
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html)

=item *

BACKUP_POLICY
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html)

=item *

SERVICE_CONTROL_POLICY
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html)

=item *

TAG_POLICY
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html)

=back

This operation can be called only from the organization's management
account.


=head2 CancelHandshake

=over

=item HandshakeId => Str


=back

Each argument is described in detail in: L<Paws::Organizations::CancelHandshake>

Returns: a L<Paws::Organizations::CancelHandshakeResponse> instance

Cancels a handshake. Canceling a handshake sets the handshake state to
C<CANCELED>.

This operation can be called only from the account that originated the
handshake. The recipient of the handshake can't cancel it, but can use
DeclineHandshake instead. After a handshake is canceled, the recipient
can no longer respond to that handshake.

After you cancel a handshake, it continues to appear in the results of
relevant APIs for only 30 days. After that, it's deleted.


=head2 CreateAccount

=over

=item AccountName => Str

=item Email => Str

=item [IamUserAccessToBilling => Str]

=item [RoleName => Str]

=item [Tags => ArrayRef[L<Paws::Organizations::Tag>]]


=back

Each argument is described in detail in: L<Paws::Organizations::CreateAccount>

Returns: a L<Paws::Organizations::CreateAccountResponse> instance

Creates an AWS account that is automatically a member of the
organization whose credentials made the request. This is an
asynchronous request that AWS performs in the background. Because
C<CreateAccount> operates asynchronously, it can return a successful
completion message even though account initialization might still be in
progress. You might need to wait a few minutes before you can
successfully access the account. To check the status of the request, do
one of the following:

=over

=item *

Use the C<Id> member of the C<CreateAccountStatus> response element
from this operation to provide as a parameter to the
DescribeCreateAccountStatus operation.

=item *

Check the AWS CloudTrail log for the C<CreateAccountResult> event. For
information on using AWS CloudTrail with AWS Organizations, see Logging
and monitoring in AWS Organizations
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_security_incident-response.html#orgs_cloudtrail-integration)
in the I<AWS Organizations User Guide.>

=back

The user who calls the API to create an account must have the
C<organizations:CreateAccount> permission. If you enabled all features
in the organization, AWS Organizations creates the required
service-linked role named C<AWSServiceRoleForOrganizations>. For more
information, see AWS Organizations and Service-Linked Roles
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_integrate_services-using_slrs)
in the I<AWS Organizations User Guide>.

If the request includes tags, then the requester must have the
C<organizations:TagResource> permission.

AWS Organizations preconfigures the new member account with a role
(named C<OrganizationAccountAccessRole> by default) that grants users
in the management account administrator permissions in the new member
account. Principals in the management account can assume the role. AWS
Organizations clones the company name and address information for the
new account from the organization's management account.

This operation can be called only from the organization's management
account.

For more information about creating accounts, see Creating an AWS
Account in Your Organization
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html)
in the I<AWS Organizations User Guide.>

=over

=item *

When you create an account in an organization using the AWS
Organizations console, API, or CLI commands, the information required
for the account to operate as a standalone account, such as a payment
method and signing the end user license agreement (EULA) is I<not>
automatically collected. If you must remove an account from your
organization later, you can do so only after you provide the missing
information. Follow the steps at To leave an organization as a member
account
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info)
in the I<AWS Organizations User Guide>.

=item *

If you get an exception that indicates that you exceeded your account
limits for the organization, contact AWS Support
(https://console.aws.amazon.com/support/home#/).

=item *

If you get an exception that indicates that the operation failed
because your organization is still initializing, wait one hour and then
try again. If the error persists, contact AWS Support
(https://console.aws.amazon.com/support/home#/).

=item *

Using C<CreateAccount> to create multiple temporary accounts isn't
recommended. You can only close an account from the Billing and Cost
Management Console, and you must be signed in as the root user. For
information on the requirements and process for closing an account, see
Closing an AWS Account
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html)
in the I<AWS Organizations User Guide>.

=back

When you create a member account with this operation, you can choose
whether to create the account with the B<IAM User and Role Access to
Billing Information> switch enabled. If you enable it, IAM users and
roles that have appropriate permissions can view billing information
for the account. If you disable it, only the account root user can
access billing information. For information about how to disable this
switch for an account, see Granting Access to Your Billing Information
and Tools
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html).


=head2 CreateGovCloudAccount

=over

=item AccountName => Str

=item Email => Str

=item [IamUserAccessToBilling => Str]

=item [RoleName => Str]

=item [Tags => ArrayRef[L<Paws::Organizations::Tag>]]


=back

Each argument is described in detail in: L<Paws::Organizations::CreateGovCloudAccount>

Returns: a L<Paws::Organizations::CreateGovCloudAccountResponse> instance

This action is available if all of the following are true:

=over

=item *

You're authorized to create accounts in the AWS GovCloud (US) Region.
For more information on the AWS GovCloud (US) Region, see the I<AWS
GovCloud User Guide>.
(http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/welcome.html)

=item *

You already have an account in the AWS GovCloud (US) Region that is
paired with a management account of an organization in the commercial
Region.

=item *

You call this action from the management account of your organization
in the commercial Region.

=item *

You have the C<organizations:CreateGovCloudAccount> permission.

=back

AWS Organizations automatically creates the required service-linked
role named C<AWSServiceRoleForOrganizations>. For more information, see
AWS Organizations and Service-Linked Roles
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_integrate_services-using_slrs)
in the I<AWS Organizations User Guide.>

AWS automatically enables AWS CloudTrail for AWS GovCloud (US)
accounts, but you should also do the following:

=over

=item *

Verify that AWS CloudTrail is enabled to store logs.

=item *

Create an S3 bucket for AWS CloudTrail log storage.

For more information, see Verifying AWS CloudTrail Is Enabled
(http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/verifying-cloudtrail.html)
in the I<AWS GovCloud User Guide>.

=back

If the request includes tags, then the requester must have the
C<organizations:TagResource> permission. The tags are attached to the
commercial account associated with the GovCloud account, rather than
the GovCloud account itself. To add tags to the GovCloud account, call
the TagResource operation in the GovCloud Region after the new GovCloud
account exists.

You call this action from the management account of your organization
in the commercial Region to create a standalone AWS account in the AWS
GovCloud (US) Region. After the account is created, the management
account of an organization in the AWS GovCloud (US) Region can invite
it to that organization. For more information on inviting standalone
accounts in the AWS GovCloud (US) to join an organization, see AWS
Organizations
(http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html)
in the I<AWS GovCloud User Guide.>

Calling C<CreateGovCloudAccount> is an asynchronous request that AWS
performs in the background. Because C<CreateGovCloudAccount> operates
asynchronously, it can return a successful completion message even
though account initialization might still be in progress. You might
need to wait a few minutes before you can successfully access the
account. To check the status of the request, do one of the following:

=over

=item *

Use the C<OperationId> response element from this operation to provide
as a parameter to the DescribeCreateAccountStatus operation.

=item *

Check the AWS CloudTrail log for the C<CreateAccountResult> event. For
information on using AWS CloudTrail with Organizations, see Monitoring
the Activity in Your Organization
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_monitoring.html)
in the I<AWS Organizations User Guide.>

=back

When you call the C<CreateGovCloudAccount> action, you create two
accounts: a standalone account in the AWS GovCloud (US) Region and an
associated account in the commercial Region for billing and support
purposes. The account in the commercial Region is automatically a
member of the organization whose credentials made the request. Both
accounts are associated with the same email address.

A role is created in the new account in the commercial Region that
allows the management account in the organization in the commercial
Region to assume it. An AWS GovCloud (US) account is then created and
associated with the commercial account that you just created. A role is
also created in the new AWS GovCloud (US) account that can be assumed
by the AWS GovCloud (US) account that is associated with the management
account of the commercial organization. For more information and to
view a diagram that explains how account access works, see AWS
Organizations
(http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html)
in the I<AWS GovCloud User Guide.>

For more information about creating accounts, see Creating an AWS
Account in Your Organization
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html)
in the I<AWS Organizations User Guide.>

=over

=item *

When you create an account in an organization using the AWS
Organizations console, API, or CLI commands, the information required
for the account to operate as a standalone account is I<not>
automatically collected. This includes a payment method and signing the
end user license agreement (EULA). If you must remove an account from
your organization later, you can do so only after you provide the
missing information. Follow the steps at To leave an organization as a
member account
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info)
in the I<AWS Organizations User Guide.>

=item *

If you get an exception that indicates that you exceeded your account
limits for the organization, contact AWS Support
(https://console.aws.amazon.com/support/home#/).

=item *

If you get an exception that indicates that the operation failed
because your organization is still initializing, wait one hour and then
try again. If the error persists, contact AWS Support
(https://console.aws.amazon.com/support/home#/).

=item *

Using C<CreateGovCloudAccount> to create multiple temporary accounts
isn't recommended. You can only close an account from the AWS Billing
and Cost Management console, and you must be signed in as the root
user. For information on the requirements and process for closing an
account, see Closing an AWS Account
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html)
in the I<AWS Organizations User Guide>.

=back

When you create a member account with this operation, you can choose
whether to create the account with the B<IAM User and Role Access to
Billing Information> switch enabled. If you enable it, IAM users and
roles that have appropriate permissions can view billing information
for the account. If you disable it, only the account root user can
access billing information. For information about how to disable this
switch for an account, see Granting Access to Your Billing Information
and Tools
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html).


=head2 CreateOrganization

=over

=item [FeatureSet => Str]


=back

Each argument is described in detail in: L<Paws::Organizations::CreateOrganization>

Returns: a L<Paws::Organizations::CreateOrganizationResponse> instance

Creates an AWS organization. The account whose user is calling the
C<CreateOrganization> operation automatically becomes the management
account
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account)
of the new organization.

This operation must be called using credentials from the account that
is to become the new organization's management account. The principal
must also have the relevant IAM permissions.

By default (or if you set the C<FeatureSet> parameter to C<ALL>), the
new organization is created with all features enabled and service
control policies automatically enabled in the root. If you instead
choose to create the organization supporting only the consolidated
billing features by setting the C<FeatureSet> parameter to
C<CONSOLIDATED_BILLING">, no policy types are enabled by default, and
you can't use organization policies


=head2 CreateOrganizationalUnit

=over

=item Name => Str

=item ParentId => Str

=item [Tags => ArrayRef[L<Paws::Organizations::Tag>]]


=back

Each argument is described in detail in: L<Paws::Organizations::CreateOrganizationalUnit>

Returns: a L<Paws::Organizations::CreateOrganizationalUnitResponse> instance

Creates an organizational unit (OU) within a root or parent OU. An OU
is a container for accounts that enables you to organize your accounts
to apply policies according to your business requirements. The number
of levels deep that you can nest OUs is dependent upon the policy types
enabled for that root. For service control policies, the limit is five.

For more information about OUs, see Managing Organizational Units
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_ous.html)
in the I<AWS Organizations User Guide.>

If the request includes tags, then the requester must have the
C<organizations:TagResource> permission.

This operation can be called only from the organization's management
account.


=head2 CreatePolicy

=over

=item Content => Str

=item Description => Str

=item Name => Str

=item Type => Str

=item [Tags => ArrayRef[L<Paws::Organizations::Tag>]]


=back

Each argument is described in detail in: L<Paws::Organizations::CreatePolicy>

Returns: a L<Paws::Organizations::CreatePolicyResponse> instance

Creates a policy of a specified type that you can attach to a root, an
organizational unit (OU), or an individual AWS account.

For more information about policies and their use, see Managing
Organization Policies
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html).

If the request includes tags, then the requester must have the
C<organizations:TagResource> permission.

This operation can be called only from the organization's management
account.


=head2 DeclineHandshake

=over

=item HandshakeId => Str


=back

Each argument is described in detail in: L<Paws::Organizations::DeclineHandshake>

Returns: a L<Paws::Organizations::DeclineHandshakeResponse> instance

Declines a handshake request. This sets the handshake state to
C<DECLINED> and effectively deactivates the request.

This operation can be called only from the account that received the
handshake. The originator of the handshake can use CancelHandshake
instead. The originator can't reactivate a declined request, but can
reinitiate the process with a new handshake request.

After you decline a handshake, it continues to appear in the results of
relevant APIs for only 30 days. After that, it's deleted.


=head2 DeleteOrganization

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Organizations::DeleteOrganization>

Returns: nothing

Deletes the organization. You can delete an organization only by using
credentials from the management account. The organization must be empty
of member accounts.


=head2 DeleteOrganizationalUnit

=over

=item OrganizationalUnitId => Str


=back

Each argument is described in detail in: L<Paws::Organizations::DeleteOrganizationalUnit>

Returns: nothing

Deletes an organizational unit (OU) from a root or another OU. You must
first remove all accounts and child OUs from the OU that you want to
delete.

This operation can be called only from the organization's management
account.


=head2 DeletePolicy

=over

=item PolicyId => Str


=back

Each argument is described in detail in: L<Paws::Organizations::DeletePolicy>

Returns: nothing

Deletes the specified policy from your organization. Before you perform
this operation, you must first detach the policy from all
organizational units (OUs), roots, and accounts.

This operation can be called only from the organization's management
account.


=head2 DeregisterDelegatedAdministrator

=over

=item AccountId => Str

=item ServicePrincipal => Str


=back

Each argument is described in detail in: L<Paws::Organizations::DeregisterDelegatedAdministrator>

Returns: nothing

Removes the specified member AWS account as a delegated administrator
for the specified AWS service.

Deregistering a delegated administrator can have unintended impacts on
the functionality of the enabled AWS service. See the documentation for
the enabled service before you deregister a delegated administrator so
that you understand any potential impacts.

You can run this action only for AWS services that support this
feature. For a current list of services that support it, see the column
I<Supports Delegated Administrator> in the table at AWS Services that
you can use with AWS Organizations
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services_list.html)
in the I<AWS Organizations User Guide.>

This operation can be called only from the organization's management
account.


=head2 DescribeAccount

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::Organizations::DescribeAccount>

Returns: a L<Paws::Organizations::DescribeAccountResponse> instance

Retrieves AWS Organizations-related information about the specified
account.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
AWS service.


=head2 DescribeCreateAccountStatus

=over

=item CreateAccountRequestId => Str


=back

Each argument is described in detail in: L<Paws::Organizations::DescribeCreateAccountStatus>

Returns: a L<Paws::Organizations::DescribeCreateAccountStatusResponse> instance

Retrieves the current status of an asynchronous request to create an
account.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
AWS service.


=head2 DescribeEffectivePolicy

=over

=item PolicyType => Str

=item [TargetId => Str]


=back

Each argument is described in detail in: L<Paws::Organizations::DescribeEffectivePolicy>

Returns: a L<Paws::Organizations::DescribeEffectivePolicyResponse> instance

Returns the contents of the effective policy for specified policy type
and account. The effective policy is the aggregation of any policies of
the specified type that the account inherits, plus any policy of that
type that is directly attached to the account.

This operation applies only to policy types I<other> than service
control policies (SCPs).

For more information about policy inheritance, see How Policy
Inheritance Works
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies-inheritance.html)
in the I<AWS Organizations User Guide>.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
AWS service.


=head2 DescribeHandshake

=over

=item HandshakeId => Str


=back

Each argument is described in detail in: L<Paws::Organizations::DescribeHandshake>

Returns: a L<Paws::Organizations::DescribeHandshakeResponse> instance

Retrieves information about a previously requested handshake. The
handshake ID comes from the response to the original
InviteAccountToOrganization operation that generated the handshake.

You can access handshakes that are C<ACCEPTED>, C<DECLINED>, or
C<CANCELED> for only 30 days after they change to that state. They're
then deleted and no longer accessible.

This operation can be called from any account in the organization.


=head2 DescribeOrganization

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Organizations::DescribeOrganization>

Returns: a L<Paws::Organizations::DescribeOrganizationResponse> instance

Retrieves information about the organization that the user's account
belongs to.

This operation can be called from any account in the organization.

Even if a policy type is shown as available in the organization, you
can disable it separately at the root level with DisablePolicyType. Use
ListRoots to see the status of policy types for a specified root.


=head2 DescribeOrganizationalUnit

=over

=item OrganizationalUnitId => Str


=back

Each argument is described in detail in: L<Paws::Organizations::DescribeOrganizationalUnit>

Returns: a L<Paws::Organizations::DescribeOrganizationalUnitResponse> instance

Retrieves information about an organizational unit (OU).

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
AWS service.


=head2 DescribePolicy

=over

=item PolicyId => Str


=back

Each argument is described in detail in: L<Paws::Organizations::DescribePolicy>

Returns: a L<Paws::Organizations::DescribePolicyResponse> instance

Retrieves information about a policy.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
AWS service.


=head2 DetachPolicy

=over

=item PolicyId => Str

=item TargetId => Str


=back

Each argument is described in detail in: L<Paws::Organizations::DetachPolicy>

Returns: nothing

Detaches a policy from a target root, organizational unit (OU), or
account.

If the policy being detached is a service control policy (SCP), the
changes to permissions for AWS Identity and Access Management (IAM)
users and roles in affected accounts are immediate.

Every root, OU, and account must have at least one SCP attached. If you
want to replace the default C<FullAWSAccess> policy with an SCP that
limits the permissions that can be delegated, you must attach the
replacement SCP before you can remove the default SCP. This is the
authorization strategy of an "allow list
(https://docs.aws.amazon.com/organizations/latest/userguide/SCP_strategies.html#orgs_policies_allowlist)".
If you instead attach a second SCP and leave the C<FullAWSAccess> SCP
still attached, and specify C<"Effect": "Deny"> in the second SCP to
override the C<"Effect": "Allow"> in the C<FullAWSAccess> policy (or
any other attached SCP), you're using the authorization strategy of a
"deny list
(https://docs.aws.amazon.com/organizations/latest/userguide/SCP_strategies.html#orgs_policies_denylist)".

This operation can be called only from the organization's management
account.


=head2 DisableAWSServiceAccess

=over

=item ServicePrincipal => Str


=back

Each argument is described in detail in: L<Paws::Organizations::DisableAWSServiceAccess>

Returns: nothing

Disables the integration of an AWS service (the service that is
specified by C<ServicePrincipal>) with AWS Organizations. When you
disable integration, the specified service no longer can create a
service-linked role
(http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html)
in I<new> accounts in your organization. This means the service can't
perform operations on your behalf on any new accounts in your
organization. The service can still perform operations in older
accounts until the service completes its clean-up from AWS
Organizations.

We B< I<strongly recommend> > that you don't use this command to
disable integration between AWS Organizations and the specified AWS
service. Instead, use the console or commands that are provided by the
specified service. This lets the trusted service perform any required
initialization when enabling trusted access, such as creating any
required resources and any required clean up of resources when
disabling trusted access.

For information about how to disable trusted service access to your
organization using the trusted service, see the B<Learn more> link
under the B<Supports Trusted Access> column at AWS services that you
can use with AWS Organizations
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services_list.html).
on this page.

If you disable access by using this command, it causes the following
actions to occur:

=over

=item *

The service can no longer create a service-linked role in the accounts
in your organization. This means that the service can't perform
operations on your behalf on any new accounts in your organization. The
service can still perform operations in older accounts until the
service completes its clean-up from AWS Organizations.

=item *

The service can no longer perform tasks in the member accounts in the
organization, unless those operations are explicitly permitted by the
IAM policies that are attached to your roles. This includes any data
aggregation from the member accounts to the management account, or to a
delegated administrator account, where relevant.

=item *

Some services detect this and clean up any remaining data or resources
related to the integration, while other services stop accessing the
organization but leave any historical data and configuration in place
to support a possible re-enabling of the integration.

=back

Using the other service's console or commands to disable the
integration ensures that the other service is aware that it can clean
up any resources that are required only for the integration. How the
service cleans up its resources in the organization's accounts depends
on that service. For more information, see the documentation for the
other AWS service.

After you perform the C<DisableAWSServiceAccess> operation, the
specified service can no longer perform operations in your
organization's accounts

For more information about integrating other services with AWS
Organizations, including the list of services that work with
Organizations, see Integrating AWS Organizations with Other AWS
Services
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html)
in the I<AWS Organizations User Guide.>

This operation can be called only from the organization's management
account.


=head2 DisablePolicyType

=over

=item PolicyType => Str

=item RootId => Str


=back

Each argument is described in detail in: L<Paws::Organizations::DisablePolicyType>

Returns: a L<Paws::Organizations::DisablePolicyTypeResponse> instance

Disables an organizational policy type in a root. A policy of a certain
type can be attached to entities in a root only if that type is enabled
in the root. After you perform this operation, you no longer can attach
policies of the specified type to that root or to any organizational
unit (OU) or account in that root. You can undo this by using the
EnablePolicyType operation.

This is an asynchronous request that AWS performs in the background. If
you disable a policy type for a root, it still appears enabled for the
organization if all features
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html)
are enabled for the organization. AWS recommends that you first use
ListRoots to see the status of policy types for a specified root, and
then use this operation.

This operation can be called only from the organization's management
account.

To view the status of available policy types in the organization, use
DescribeOrganization.


=head2 EnableAllFeatures






Each argument is described in detail in: L<Paws::Organizations::EnableAllFeatures>

Returns: a L<Paws::Organizations::EnableAllFeaturesResponse> instance

Enables all features in an organization. This enables the use of
organization policies that can restrict the services and actions that
can be called in each account. Until you enable all features, you have
access only to consolidated billing, and you can't use any of the
advanced account administration features that AWS Organizations
supports. For more information, see Enabling All Features in Your
Organization
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html)
in the I<AWS Organizations User Guide.>

This operation is required only for organizations that were created
explicitly with only the consolidated billing features enabled. Calling
this operation sends a handshake to every invited account in the
organization. The feature set change can be finalized and the
additional features enabled only after all administrators in the
invited accounts approve the change by accepting the handshake.

After you enable all features, you can separately enable or disable
individual policy types in a root using EnablePolicyType and
DisablePolicyType. To see the status of policy types in a root, use
ListRoots.

After all invited member accounts accept the handshake, you finalize
the feature set change by accepting the handshake that contains
C<"Action": "ENABLE_ALL_FEATURES">. This completes the change.

After you enable all features in your organization, the management
account in the organization can apply policies on all member accounts.
These policies can restrict what users and even administrators in those
accounts can do. The management account can apply policies that prevent
accounts from leaving the organization. Ensure that your account
administrators are aware of this.

This operation can be called only from the organization's management
account.


=head2 EnableAWSServiceAccess

=over

=item ServicePrincipal => Str


=back

Each argument is described in detail in: L<Paws::Organizations::EnableAWSServiceAccess>

Returns: nothing

Enables the integration of an AWS service (the service that is
specified by C<ServicePrincipal>) with AWS Organizations. When you
enable integration, you allow the specified service to create a
service-linked role
(http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html)
in all the accounts in your organization. This allows the service to
perform operations on your behalf in your organization and its
accounts.

We recommend that you enable integration between AWS Organizations and
the specified AWS service by using the console or commands that are
provided by the specified service. Doing so ensures that the service is
aware that it can create the resources that are required for the
integration. How the service creates those resources in the
organization's accounts depends on that service. For more information,
see the documentation for the other AWS service.

For more information about enabling services to integrate with AWS
Organizations, see Integrating AWS Organizations with Other AWS
Services
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html)
in the I<AWS Organizations User Guide.>

This operation can be called only from the organization's management
account and only if the organization has enabled all features
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html).


=head2 EnablePolicyType

=over

=item PolicyType => Str

=item RootId => Str


=back

Each argument is described in detail in: L<Paws::Organizations::EnablePolicyType>

Returns: a L<Paws::Organizations::EnablePolicyTypeResponse> instance

Enables a policy type in a root. After you enable a policy type in a
root, you can attach policies of that type to the root, any
organizational unit (OU), or account in that root. You can undo this by
using the DisablePolicyType operation.

This is an asynchronous request that AWS performs in the background.
AWS recommends that you first use ListRoots to see the status of policy
types for a specified root, and then use this operation.

This operation can be called only from the organization's management
account.

You can enable a policy type in a root only if that policy type is
available in the organization. To view the status of available policy
types in the organization, use DescribeOrganization.


=head2 InviteAccountToOrganization

=over

=item Target => L<Paws::Organizations::HandshakeParty>

=item [Notes => Str]

=item [Tags => ArrayRef[L<Paws::Organizations::Tag>]]


=back

Each argument is described in detail in: L<Paws::Organizations::InviteAccountToOrganization>

Returns: a L<Paws::Organizations::InviteAccountToOrganizationResponse> instance

Sends an invitation to another account to join your organization as a
member account. AWS Organizations sends email on your behalf to the
email address that is associated with the other account's owner. The
invitation is implemented as a Handshake whose details are in the
response.

=over

=item *

You can invite AWS accounts only from the same seller as the management
account. For example, if your organization's management account was
created by Amazon Internet Services Pvt. Ltd (AISPL), an AWS seller in
India, you can invite only other AISPL accounts to your organization.
You can't combine accounts from AISPL and AWS or from any other AWS
seller. For more information, see Consolidated Billing in India
(http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/useconsolidatedbilliing-India.html).

=item *

If you receive an exception that indicates that you exceeded your
account limits for the organization or that the operation failed
because your organization is still initializing, wait one hour and then
try again. If the error persists after an hour, contact AWS Support
(https://console.aws.amazon.com/support/home#/).

=back

If the request includes tags, then the requester must have the
C<organizations:TagResource> permission.

This operation can be called only from the organization's management
account.


=head2 LeaveOrganization

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Organizations::LeaveOrganization>

Returns: nothing

Removes a member account from its parent organization. This version of
the operation is performed by the account that wants to leave. To
remove a member account as a user in the management account, use
RemoveAccountFromOrganization instead.

This operation can be called only from a member account in the
organization.

=over

=item *

The management account in an organization with all features enabled can
set service control policies (SCPs) that can restrict what
administrators of member accounts can do. This includes preventing them
from successfully calling C<LeaveOrganization> and leaving the
organization.

=item *

You can leave an organization as a member account only if the account
is configured with the information required to operate as a standalone
account. When you create an account in an organization using the AWS
Organizations console, API, or CLI commands, the information required
of standalone accounts is I<not> automatically collected. For each
account that you want to make standalone, you must perform the
following steps. If any of the steps are already completed for this
account, that step doesn't appear.

=over

=item *

Choose a support plan

=item *

Provide and verify the required contact information

=item *

Provide a current payment method

=back

AWS uses the payment method to charge for any billable (not free tier)
AWS activity that occurs while the account isn't attached to an
organization. Follow the steps at To leave an organization when all
required account information has not yet been provided
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info)
in the I<AWS Organizations User Guide.>

=item *

The account that you want to leave must not be a delegated
administrator account for any AWS service enabled for your
organization. If the account is a delegated administrator, you must
first change the delegated administrator account to another account
that is remaining in the organization.

=item *

You can leave an organization only after you enable IAM user access to
billing in your account. For more information, see Activating Access to
the Billing and Cost Management Console
(http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate)
in the I<AWS Billing and Cost Management User Guide.>

=item *

After the account leaves the organization, all tags that were attached
to the account object in the organization are deleted. AWS accounts
outside of an organization do not support tags.

=item *

A newly created account has a waiting period before it can be removed
from its organization. If you get an error that indicates that a wait
period is required, then try again in a few days.

=back



=head2 ListAccounts

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Organizations::ListAccounts>

Returns: a L<Paws::Organizations::ListAccountsResponse> instance

Lists all the accounts in the organization. To request only the
accounts in a specified root or organizational unit (OU), use the
ListAccountsForParent operation instead.

Always check the C<NextToken> response parameter for a C<null> value
when calling a C<List*> operation. These operations can occasionally
return an empty set of results even when there are more results
available. The C<NextToken> response parameter value is C<null> I<only>
when there are no more results to display.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
AWS service.


=head2 ListAccountsForParent

=over

=item ParentId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Organizations::ListAccountsForParent>

Returns: a L<Paws::Organizations::ListAccountsForParentResponse> instance

Lists the accounts in an organization that are contained by the
specified target root or organizational unit (OU). If you specify the
root, you get a list of all the accounts that aren't in any OU. If you
specify an OU, you get a list of all the accounts in only that OU and
not in any child OUs. To get a list of all accounts in the
organization, use the ListAccounts operation.

Always check the C<NextToken> response parameter for a C<null> value
when calling a C<List*> operation. These operations can occasionally
return an empty set of results even when there are more results
available. The C<NextToken> response parameter value is C<null> I<only>
when there are no more results to display.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
AWS service.


=head2 ListAWSServiceAccessForOrganization

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Organizations::ListAWSServiceAccessForOrganization>

Returns: a L<Paws::Organizations::ListAWSServiceAccessForOrganizationResponse> instance

Returns a list of the AWS services that you enabled to integrate with
your organization. After a service on this list creates the resources
that it requires for the integration, it can perform operations on your
organization and its accounts.

For more information about integrating other services with AWS
Organizations, including the list of services that currently work with
Organizations, see Integrating AWS Organizations with Other AWS
Services
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html)
in the I<AWS Organizations User Guide.>

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
AWS service.


=head2 ListChildren

=over

=item ChildType => Str

=item ParentId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Organizations::ListChildren>

Returns: a L<Paws::Organizations::ListChildrenResponse> instance

Lists all of the organizational units (OUs) or accounts that are
contained in the specified parent OU or root. This operation, along
with ListParents enables you to traverse the tree structure that makes
up this root.

Always check the C<NextToken> response parameter for a C<null> value
when calling a C<List*> operation. These operations can occasionally
return an empty set of results even when there are more results
available. The C<NextToken> response parameter value is C<null> I<only>
when there are no more results to display.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
AWS service.


=head2 ListCreateAccountStatus

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [States => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Organizations::ListCreateAccountStatus>

Returns: a L<Paws::Organizations::ListCreateAccountStatusResponse> instance

Lists the account creation requests that match the specified status
that is currently being tracked for the organization.

Always check the C<NextToken> response parameter for a C<null> value
when calling a C<List*> operation. These operations can occasionally
return an empty set of results even when there are more results
available. The C<NextToken> response parameter value is C<null> I<only>
when there are no more results to display.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
AWS service.


=head2 ListDelegatedAdministrators

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServicePrincipal => Str]


=back

Each argument is described in detail in: L<Paws::Organizations::ListDelegatedAdministrators>

Returns: a L<Paws::Organizations::ListDelegatedAdministratorsResponse> instance

Lists the AWS accounts that are designated as delegated administrators
in this organization.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
AWS service.


=head2 ListDelegatedServicesForAccount

=over

=item AccountId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Organizations::ListDelegatedServicesForAccount>

Returns: a L<Paws::Organizations::ListDelegatedServicesForAccountResponse> instance

List the AWS services for which the specified account is a delegated
administrator.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
AWS service.


=head2 ListHandshakesForAccount

=over

=item [Filter => L<Paws::Organizations::HandshakeFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Organizations::ListHandshakesForAccount>

Returns: a L<Paws::Organizations::ListHandshakesForAccountResponse> instance

Lists the current handshakes that are associated with the account of
the requesting user.

Handshakes that are C<ACCEPTED>, C<DECLINED>, or C<CANCELED> appear in
the results of this API for only 30 days after changing to that state.
After that, they're deleted and no longer accessible.

Always check the C<NextToken> response parameter for a C<null> value
when calling a C<List*> operation. These operations can occasionally
return an empty set of results even when there are more results
available. The C<NextToken> response parameter value is C<null> I<only>
when there are no more results to display.

This operation can be called from any account in the organization.


=head2 ListHandshakesForOrganization

=over

=item [Filter => L<Paws::Organizations::HandshakeFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Organizations::ListHandshakesForOrganization>

Returns: a L<Paws::Organizations::ListHandshakesForOrganizationResponse> instance

Lists the handshakes that are associated with the organization that the
requesting user is part of. The C<ListHandshakesForOrganization>
operation returns a list of handshake structures. Each structure
contains details and status about a handshake.

Handshakes that are C<ACCEPTED>, C<DECLINED>, or C<CANCELED> appear in
the results of this API for only 30 days after changing to that state.
After that, they're deleted and no longer accessible.

Always check the C<NextToken> response parameter for a C<null> value
when calling a C<List*> operation. These operations can occasionally
return an empty set of results even when there are more results
available. The C<NextToken> response parameter value is C<null> I<only>
when there are no more results to display.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
AWS service.


=head2 ListOrganizationalUnitsForParent

=over

=item ParentId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Organizations::ListOrganizationalUnitsForParent>

Returns: a L<Paws::Organizations::ListOrganizationalUnitsForParentResponse> instance

Lists the organizational units (OUs) in a parent organizational unit or
root.

Always check the C<NextToken> response parameter for a C<null> value
when calling a C<List*> operation. These operations can occasionally
return an empty set of results even when there are more results
available. The C<NextToken> response parameter value is C<null> I<only>
when there are no more results to display.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
AWS service.


=head2 ListParents

=over

=item ChildId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Organizations::ListParents>

Returns: a L<Paws::Organizations::ListParentsResponse> instance

Lists the root or organizational units (OUs) that serve as the
immediate parent of the specified child OU or account. This operation,
along with ListChildren enables you to traverse the tree structure that
makes up this root.

Always check the C<NextToken> response parameter for a C<null> value
when calling a C<List*> operation. These operations can occasionally
return an empty set of results even when there are more results
available. The C<NextToken> response parameter value is C<null> I<only>
when there are no more results to display.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
AWS service.

In the current release, a child can have only a single parent.


=head2 ListPolicies

=over

=item Filter => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Organizations::ListPolicies>

Returns: a L<Paws::Organizations::ListPoliciesResponse> instance

Retrieves the list of all policies in an organization of a specified
type.

Always check the C<NextToken> response parameter for a C<null> value
when calling a C<List*> operation. These operations can occasionally
return an empty set of results even when there are more results
available. The C<NextToken> response parameter value is C<null> I<only>
when there are no more results to display.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
AWS service.


=head2 ListPoliciesForTarget

=over

=item Filter => Str

=item TargetId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Organizations::ListPoliciesForTarget>

Returns: a L<Paws::Organizations::ListPoliciesForTargetResponse> instance

Lists the policies that are directly attached to the specified target
root, organizational unit (OU), or account. You must specify the policy
type that you want included in the returned list.

Always check the C<NextToken> response parameter for a C<null> value
when calling a C<List*> operation. These operations can occasionally
return an empty set of results even when there are more results
available. The C<NextToken> response parameter value is C<null> I<only>
when there are no more results to display.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
AWS service.


=head2 ListRoots

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Organizations::ListRoots>

Returns: a L<Paws::Organizations::ListRootsResponse> instance

Lists the roots that are defined in the current organization.

Always check the C<NextToken> response parameter for a C<null> value
when calling a C<List*> operation. These operations can occasionally
return an empty set of results even when there are more results
available. The C<NextToken> response parameter value is C<null> I<only>
when there are no more results to display.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
AWS service.

Policy types can be enabled and disabled in roots. This is distinct
from whether they're available in the organization. When you enable all
features, you make policy types available for use in that organization.
Individual policy types can then be enabled and disabled in a root. To
see the availability of a policy type in an organization, use
DescribeOrganization.


=head2 ListTagsForResource

=over

=item ResourceId => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Organizations::ListTagsForResource>

Returns: a L<Paws::Organizations::ListTagsForResourceResponse> instance

Lists tags that are attached to the specified resource.

You can attach tags to the following resources in AWS Organizations.

=over

=item *

AWS account

=item *

Organization root

=item *

Organizational unit (OU)

=item *

Policy (any type)

=back

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
AWS service.


=head2 ListTargetsForPolicy

=over

=item PolicyId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Organizations::ListTargetsForPolicy>

Returns: a L<Paws::Organizations::ListTargetsForPolicyResponse> instance

Lists all the roots, organizational units (OUs), and accounts that the
specified policy is attached to.

Always check the C<NextToken> response parameter for a C<null> value
when calling a C<List*> operation. These operations can occasionally
return an empty set of results even when there are more results
available. The C<NextToken> response parameter value is C<null> I<only>
when there are no more results to display.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
AWS service.


=head2 MoveAccount

=over

=item AccountId => Str

=item DestinationParentId => Str

=item SourceParentId => Str


=back

Each argument is described in detail in: L<Paws::Organizations::MoveAccount>

Returns: nothing

Moves an account from its current source parent root or organizational
unit (OU) to the specified destination parent root or OU.

This operation can be called only from the organization's management
account.


=head2 RegisterDelegatedAdministrator

=over

=item AccountId => Str

=item ServicePrincipal => Str


=back

Each argument is described in detail in: L<Paws::Organizations::RegisterDelegatedAdministrator>

Returns: nothing

Enables the specified member account to administer the Organizations
features of the specified AWS service. It grants read-only access to
AWS Organizations service data. The account still requires IAM
permissions to access and administer the AWS service.

You can run this action only for AWS services that support this
feature. For a current list of services that support it, see the column
I<Supports Delegated Administrator> in the table at AWS Services that
you can use with AWS Organizations
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services_list.html)
in the I<AWS Organizations User Guide.>

This operation can be called only from the organization's management
account.


=head2 RemoveAccountFromOrganization

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::Organizations::RemoveAccountFromOrganization>

Returns: nothing

Removes the specified account from the organization.

The removed account becomes a standalone account that isn't a member of
any organization. It's no longer subject to any policies and is
responsible for its own bill payments. The organization's management
account is no longer charged for any expenses accrued by the member
account after it's removed from the organization.

This operation can be called only from the organization's management
account. Member accounts can remove themselves with LeaveOrganization
instead.

=over

=item *

You can remove an account from your organization only if the account is
configured with the information required to operate as a standalone
account. When you create an account in an organization using the AWS
Organizations console, API, or CLI commands, the information required
of standalone accounts is I<not> automatically collected. For an
account that you want to make standalone, you must choose a support
plan, provide and verify the required contact information, and provide
a current payment method. AWS uses the payment method to charge for any
billable (not free tier) AWS activity that occurs while the account
isn't attached to an organization. To remove an account that doesn't
yet have this information, you must sign in as the member account and
follow the steps at To leave an organization when all required account
information has not yet been provided
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info)
in the I<AWS Organizations User Guide.>

=item *

The account that you want to leave must not be a delegated
administrator account for any AWS service enabled for your
organization. If the account is a delegated administrator, you must
first change the delegated administrator account to another account
that is remaining in the organization.

=item *

After the account leaves the organization, all tags that were attached
to the account object in the organization are deleted. AWS accounts
outside of an organization do not support tags.

=back



=head2 TagResource

=over

=item ResourceId => Str

=item Tags => ArrayRef[L<Paws::Organizations::Tag>]


=back

Each argument is described in detail in: L<Paws::Organizations::TagResource>

Returns: nothing

Adds one or more tags to the specified resource.

Currently, you can attach tags to the following resources in AWS
Organizations.

=over

=item *

AWS account

=item *

Organization root

=item *

Organizational unit (OU)

=item *

Policy (any type)

=back

This operation can be called only from the organization's management
account.


=head2 UntagResource

=over

=item ResourceId => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Organizations::UntagResource>

Returns: nothing

Removes any tags with the specified keys from the specified resource.

You can attach tags to the following resources in AWS Organizations.

=over

=item *

AWS account

=item *

Organization root

=item *

Organizational unit (OU)

=item *

Policy (any type)

=back

This operation can be called only from the organization's management
account.


=head2 UpdateOrganizationalUnit

=over

=item OrganizationalUnitId => Str

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Organizations::UpdateOrganizationalUnit>

Returns: a L<Paws::Organizations::UpdateOrganizationalUnitResponse> instance

Renames the specified organizational unit (OU). The ID and ARN don't
change. The child OUs and accounts remain in place, and any attached
policies of the OU remain attached.

This operation can be called only from the organization's management
account.


=head2 UpdatePolicy

=over

=item PolicyId => Str

=item [Content => Str]

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Organizations::UpdatePolicy>

Returns: a L<Paws::Organizations::UpdatePolicyResponse> instance

Updates an existing policy with a new name, description, or content. If
you don't supply any parameter, that value remains unchanged. You can't
change a policy's type.

This operation can be called only from the organization's management
account.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAccounts(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllAccounts([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Accounts, passing the object as the first parameter, and the string 'Accounts' as the second parameter 

If not, it will return a a L<Paws::Organizations::ListAccountsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAccountsForParent(sub { },ParentId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAccountsForParent(ParentId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Accounts, passing the object as the first parameter, and the string 'Accounts' as the second parameter 

If not, it will return a a L<Paws::Organizations::ListAccountsForParentResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAWSServiceAccessForOrganization(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllAWSServiceAccessForOrganization([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EnabledServicePrincipals, passing the object as the first parameter, and the string 'EnabledServicePrincipals' as the second parameter 

If not, it will return a a L<Paws::Organizations::ListAWSServiceAccessForOrganizationResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllChildren(sub { },ChildType => Str, ParentId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllChildren(ChildType => Str, ParentId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Children, passing the object as the first parameter, and the string 'Children' as the second parameter 

If not, it will return a a L<Paws::Organizations::ListChildrenResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCreateAccountStatus(sub { },[MaxResults => Int, NextToken => Str, States => ArrayRef[Str|Undef]])

=head2 ListAllCreateAccountStatus([MaxResults => Int, NextToken => Str, States => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CreateAccountStatuses, passing the object as the first parameter, and the string 'CreateAccountStatuses' as the second parameter 

If not, it will return a a L<Paws::Organizations::ListCreateAccountStatusResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDelegatedAdministrators(sub { },[MaxResults => Int, NextToken => Str, ServicePrincipal => Str])

=head2 ListAllDelegatedAdministrators([MaxResults => Int, NextToken => Str, ServicePrincipal => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DelegatedAdministrators, passing the object as the first parameter, and the string 'DelegatedAdministrators' as the second parameter 

If not, it will return a a L<Paws::Organizations::ListDelegatedAdministratorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDelegatedServicesForAccount(sub { },AccountId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDelegatedServicesForAccount(AccountId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DelegatedServices, passing the object as the first parameter, and the string 'DelegatedServices' as the second parameter 

If not, it will return a a L<Paws::Organizations::ListDelegatedServicesForAccountResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllHandshakesForAccount(sub { },[Filter => L<Paws::Organizations::HandshakeFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllHandshakesForAccount([Filter => L<Paws::Organizations::HandshakeFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Handshakes, passing the object as the first parameter, and the string 'Handshakes' as the second parameter 

If not, it will return a a L<Paws::Organizations::ListHandshakesForAccountResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllHandshakesForOrganization(sub { },[Filter => L<Paws::Organizations::HandshakeFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllHandshakesForOrganization([Filter => L<Paws::Organizations::HandshakeFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Handshakes, passing the object as the first parameter, and the string 'Handshakes' as the second parameter 

If not, it will return a a L<Paws::Organizations::ListHandshakesForOrganizationResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOrganizationalUnitsForParent(sub { },ParentId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllOrganizationalUnitsForParent(ParentId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OrganizationalUnits, passing the object as the first parameter, and the string 'OrganizationalUnits' as the second parameter 

If not, it will return a a L<Paws::Organizations::ListOrganizationalUnitsForParentResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllParents(sub { },ChildId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllParents(ChildId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Parents, passing the object as the first parameter, and the string 'Parents' as the second parameter 

If not, it will return a a L<Paws::Organizations::ListParentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPolicies(sub { },Filter => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPolicies(Filter => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Policies, passing the object as the first parameter, and the string 'Policies' as the second parameter 

If not, it will return a a L<Paws::Organizations::ListPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPoliciesForTarget(sub { },Filter => Str, TargetId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPoliciesForTarget(Filter => Str, TargetId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Policies, passing the object as the first parameter, and the string 'Policies' as the second parameter 

If not, it will return a a L<Paws::Organizations::ListPoliciesForTargetResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRoots(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllRoots([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Roots, passing the object as the first parameter, and the string 'Roots' as the second parameter 

If not, it will return a a L<Paws::Organizations::ListRootsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceId => Str, [NextToken => Str])

=head2 ListAllTagsForResource(ResourceId => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::Organizations::ListTagsForResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTargetsForPolicy(sub { },PolicyId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTargetsForPolicy(PolicyId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Targets, passing the object as the first parameter, and the string 'Targets' as the second parameter 

If not, it will return a a L<Paws::Organizations::ListTargetsForPolicyResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

