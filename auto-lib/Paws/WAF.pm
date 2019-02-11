package Paws::WAF;
  use Moose;
  sub service { 'waf' }
  sub signing_name { 'waf' }
  sub version { '2015-08-24' }
  sub target_prefix { 'AWSWAF_20150824' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  has '+region_rules' => (default => sub {
    my $regioninfo;
      $regioninfo = [
    {
      constraints => [
        [
          'region',
          'notStartsWith',
          'cn-'
        ]
      ],
      properties => {
        credentialScope => {
          region => 'us-east-1'
        }
      },
      uri => 'https://waf.amazonaws.com'
    }
  ];

    return $regioninfo;
  });

  
  sub CreateByteMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::CreateByteMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGeoMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::CreateGeoMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::CreateIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRateBasedRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::CreateRateBasedRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRegexMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::CreateRegexMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRegexPatternSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::CreateRegexPatternSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::CreateRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::CreateRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSizeConstraintSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::CreateSizeConstraintSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSqlInjectionMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::CreateSqlInjectionMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::CreateWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateXssMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::CreateXssMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteByteMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::DeleteByteMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGeoMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::DeleteGeoMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::DeleteIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::DeleteLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePermissionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::DeletePermissionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRateBasedRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::DeleteRateBasedRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRegexMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::DeleteRegexMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRegexPatternSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::DeleteRegexPatternSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::DeleteRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::DeleteRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSizeConstraintSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::DeleteSizeConstraintSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSqlInjectionMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::DeleteSqlInjectionMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::DeleteWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteXssMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::DeleteXssMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetByteMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetByteMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChangeToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetChangeToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChangeTokenStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetChangeTokenStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGeoMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetGeoMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPermissionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetPermissionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRateBasedRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetRateBasedRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRateBasedRuleManagedKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetRateBasedRuleManagedKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRegexMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetRegexMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRegexPatternSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetRegexPatternSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSampledRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetSampledRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSizeConstraintSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetSizeConstraintSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSqlInjectionMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetSqlInjectionMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetXssMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetXssMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListActivatedRulesInRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListActivatedRulesInRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListByteMatchSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListByteMatchSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGeoMatchSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListGeoMatchSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIPSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListIPSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLoggingConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListLoggingConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRateBasedRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListRateBasedRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRegexMatchSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListRegexMatchSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRegexPatternSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListRegexPatternSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRuleGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListRuleGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSizeConstraintSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListSizeConstraintSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSqlInjectionMatchSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListSqlInjectionMatchSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSubscribedRuleGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListSubscribedRuleGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWebACLs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListWebACLs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListXssMatchSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListXssMatchSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::PutLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutPermissionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::PutPermissionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateByteMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::UpdateByteMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGeoMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::UpdateGeoMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::UpdateIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRateBasedRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::UpdateRateBasedRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRegexMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::UpdateRegexMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRegexPatternSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::UpdateRegexPatternSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::UpdateRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::UpdateRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSizeConstraintSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::UpdateSizeConstraintSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSqlInjectionMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::UpdateSqlInjectionMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::UpdateWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateXssMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::UpdateXssMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllRateBasedRuleManagedKeys {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetRateBasedRuleManagedKeys(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->GetRateBasedRuleManagedKeys(@_, NextMarker => $next_result->NextMarker);
        push @{ $result->ManagedKeys }, @{ $next_result->ManagedKeys };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'ManagedKeys') foreach (@{ $result->ManagedKeys });
        $result = $self->GetRateBasedRuleManagedKeys(@_, NextMarker => $result->NextMarker);
      }
      $callback->($_ => 'ManagedKeys') foreach (@{ $result->ManagedKeys });
    }

    return undef
  }
  sub ListAllActivatedRulesInRuleGroup {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListActivatedRulesInRuleGroup(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListActivatedRulesInRuleGroup(@_, NextMarker => $next_result->NextMarker);
        push @{ $result->ActivatedRules }, @{ $next_result->ActivatedRules };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'ActivatedRules') foreach (@{ $result->ActivatedRules });
        $result = $self->ListActivatedRulesInRuleGroup(@_, NextMarker => $result->NextMarker);
      }
      $callback->($_ => 'ActivatedRules') foreach (@{ $result->ActivatedRules });
    }

    return undef
  }
  sub ListAllByteMatchSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListByteMatchSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListByteMatchSets(@_, NextMarker => $next_result->NextMarker);
        push @{ $result->ByteMatchSets }, @{ $next_result->ByteMatchSets };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'ByteMatchSets') foreach (@{ $result->ByteMatchSets });
        $result = $self->ListByteMatchSets(@_, NextMarker => $result->NextMarker);
      }
      $callback->($_ => 'ByteMatchSets') foreach (@{ $result->ByteMatchSets });
    }

    return undef
  }
  sub ListAllGeoMatchSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGeoMatchSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListGeoMatchSets(@_, NextMarker => $next_result->NextMarker);
        push @{ $result->GeoMatchSets }, @{ $next_result->GeoMatchSets };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'GeoMatchSets') foreach (@{ $result->GeoMatchSets });
        $result = $self->ListGeoMatchSets(@_, NextMarker => $result->NextMarker);
      }
      $callback->($_ => 'GeoMatchSets') foreach (@{ $result->GeoMatchSets });
    }

    return undef
  }
  sub ListAllIPSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIPSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListIPSets(@_, NextMarker => $next_result->NextMarker);
        push @{ $result->IPSets }, @{ $next_result->IPSets };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'IPSets') foreach (@{ $result->IPSets });
        $result = $self->ListIPSets(@_, NextMarker => $result->NextMarker);
      }
      $callback->($_ => 'IPSets') foreach (@{ $result->IPSets });
    }

    return undef
  }
  sub ListAllLoggingConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLoggingConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListLoggingConfigurations(@_, NextMarker => $next_result->NextMarker);
        push @{ $result->LoggingConfigurations }, @{ $next_result->LoggingConfigurations };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'LoggingConfigurations') foreach (@{ $result->LoggingConfigurations });
        $result = $self->ListLoggingConfigurations(@_, NextMarker => $result->NextMarker);
      }
      $callback->($_ => 'LoggingConfigurations') foreach (@{ $result->LoggingConfigurations });
    }

    return undef
  }
  sub ListAllRateBasedRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRateBasedRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListRateBasedRules(@_, NextMarker => $next_result->NextMarker);
        push @{ $result->Rules }, @{ $next_result->Rules };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'Rules') foreach (@{ $result->Rules });
        $result = $self->ListRateBasedRules(@_, NextMarker => $result->NextMarker);
      }
      $callback->($_ => 'Rules') foreach (@{ $result->Rules });
    }

    return undef
  }
  sub ListAllRegexMatchSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRegexMatchSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListRegexMatchSets(@_, NextMarker => $next_result->NextMarker);
        push @{ $result->RegexMatchSets }, @{ $next_result->RegexMatchSets };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'RegexMatchSets') foreach (@{ $result->RegexMatchSets });
        $result = $self->ListRegexMatchSets(@_, NextMarker => $result->NextMarker);
      }
      $callback->($_ => 'RegexMatchSets') foreach (@{ $result->RegexMatchSets });
    }

    return undef
  }
  sub ListAllRegexPatternSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRegexPatternSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListRegexPatternSets(@_, NextMarker => $next_result->NextMarker);
        push @{ $result->RegexPatternSets }, @{ $next_result->RegexPatternSets };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'RegexPatternSets') foreach (@{ $result->RegexPatternSets });
        $result = $self->ListRegexPatternSets(@_, NextMarker => $result->NextMarker);
      }
      $callback->($_ => 'RegexPatternSets') foreach (@{ $result->RegexPatternSets });
    }

    return undef
  }
  sub ListAllRuleGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRuleGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListRuleGroups(@_, NextMarker => $next_result->NextMarker);
        push @{ $result->RuleGroups }, @{ $next_result->RuleGroups };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'RuleGroups') foreach (@{ $result->RuleGroups });
        $result = $self->ListRuleGroups(@_, NextMarker => $result->NextMarker);
      }
      $callback->($_ => 'RuleGroups') foreach (@{ $result->RuleGroups });
    }

    return undef
  }
  sub ListAllRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListRules(@_, NextMarker => $next_result->NextMarker);
        push @{ $result->Rules }, @{ $next_result->Rules };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'Rules') foreach (@{ $result->Rules });
        $result = $self->ListRules(@_, NextMarker => $result->NextMarker);
      }
      $callback->($_ => 'Rules') foreach (@{ $result->Rules });
    }

    return undef
  }
  sub ListAllSizeConstraintSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSizeConstraintSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListSizeConstraintSets(@_, NextMarker => $next_result->NextMarker);
        push @{ $result->SizeConstraintSets }, @{ $next_result->SizeConstraintSets };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'SizeConstraintSets') foreach (@{ $result->SizeConstraintSets });
        $result = $self->ListSizeConstraintSets(@_, NextMarker => $result->NextMarker);
      }
      $callback->($_ => 'SizeConstraintSets') foreach (@{ $result->SizeConstraintSets });
    }

    return undef
  }
  sub ListAllSqlInjectionMatchSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSqlInjectionMatchSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListSqlInjectionMatchSets(@_, NextMarker => $next_result->NextMarker);
        push @{ $result->SqlInjectionMatchSets }, @{ $next_result->SqlInjectionMatchSets };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'SqlInjectionMatchSets') foreach (@{ $result->SqlInjectionMatchSets });
        $result = $self->ListSqlInjectionMatchSets(@_, NextMarker => $result->NextMarker);
      }
      $callback->($_ => 'SqlInjectionMatchSets') foreach (@{ $result->SqlInjectionMatchSets });
    }

    return undef
  }
  sub ListAllSubscribedRuleGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSubscribedRuleGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListSubscribedRuleGroups(@_, NextMarker => $next_result->NextMarker);
        push @{ $result->RuleGroups }, @{ $next_result->RuleGroups };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'RuleGroups') foreach (@{ $result->RuleGroups });
        $result = $self->ListSubscribedRuleGroups(@_, NextMarker => $result->NextMarker);
      }
      $callback->($_ => 'RuleGroups') foreach (@{ $result->RuleGroups });
    }

    return undef
  }
  sub ListAllWebACLs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWebACLs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListWebACLs(@_, NextMarker => $next_result->NextMarker);
        push @{ $result->WebACLs }, @{ $next_result->WebACLs };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'WebACLs') foreach (@{ $result->WebACLs });
        $result = $self->ListWebACLs(@_, NextMarker => $result->NextMarker);
      }
      $callback->($_ => 'WebACLs') foreach (@{ $result->WebACLs });
    }

    return undef
  }
  sub ListAllXssMatchSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListXssMatchSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListXssMatchSets(@_, NextMarker => $next_result->NextMarker);
        push @{ $result->XssMatchSets }, @{ $next_result->XssMatchSets };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'XssMatchSets') foreach (@{ $result->XssMatchSets });
        $result = $self->ListXssMatchSets(@_, NextMarker => $result->NextMarker);
      }
      $callback->($_ => 'XssMatchSets') foreach (@{ $result->XssMatchSets });
    }

    return undef
  }


  sub operations { qw/CreateByteMatchSet CreateGeoMatchSet CreateIPSet CreateRateBasedRule CreateRegexMatchSet CreateRegexPatternSet CreateRule CreateRuleGroup CreateSizeConstraintSet CreateSqlInjectionMatchSet CreateWebACL CreateXssMatchSet DeleteByteMatchSet DeleteGeoMatchSet DeleteIPSet DeleteLoggingConfiguration DeletePermissionPolicy DeleteRateBasedRule DeleteRegexMatchSet DeleteRegexPatternSet DeleteRule DeleteRuleGroup DeleteSizeConstraintSet DeleteSqlInjectionMatchSet DeleteWebACL DeleteXssMatchSet GetByteMatchSet GetChangeToken GetChangeTokenStatus GetGeoMatchSet GetIPSet GetLoggingConfiguration GetPermissionPolicy GetRateBasedRule GetRateBasedRuleManagedKeys GetRegexMatchSet GetRegexPatternSet GetRule GetRuleGroup GetSampledRequests GetSizeConstraintSet GetSqlInjectionMatchSet GetWebACL GetXssMatchSet ListActivatedRulesInRuleGroup ListByteMatchSets ListGeoMatchSets ListIPSets ListLoggingConfigurations ListRateBasedRules ListRegexMatchSets ListRegexPatternSets ListRuleGroups ListRules ListSizeConstraintSets ListSqlInjectionMatchSets ListSubscribedRuleGroups ListWebACLs ListXssMatchSets PutLoggingConfiguration PutPermissionPolicy UpdateByteMatchSet UpdateGeoMatchSet UpdateIPSet UpdateRateBasedRule UpdateRegexMatchSet UpdateRegexPatternSet UpdateRule UpdateRuleGroup UpdateSizeConstraintSet UpdateSqlInjectionMatchSet UpdateWebACL UpdateXssMatchSet / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF - Perl Interface to AWS AWS WAF

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('WAF');
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

This is the I<AWS WAF API Reference> for using AWS WAF with Amazon
CloudFront. The AWS WAF actions and data types listed in the reference
are available for protecting Amazon CloudFront distributions. You can
use these actions and data types via the endpoint I<waf.amazonaws.com>.
This guide is for developers who need detailed information about the
AWS WAF API actions, data types, and errors. For detailed information
about AWS WAF features and an overview of how to use the AWS WAF API,
see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24>


=head1 METHODS

=head2 CreateByteMatchSet

=over

=item ChangeToken => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::WAF::CreateByteMatchSet>

Returns: a L<Paws::WAF::CreateByteMatchSetResponse> instance

Creates a C<ByteMatchSet>. You then use UpdateByteMatchSet to identify
the part of a web request that you want AWS WAF to inspect, such as the
values of the C<User-Agent> header or the query string. For example,
you can create a C<ByteMatchSet> that matches any requests with
C<User-Agent> headers that contain the string C<BadBot>. You can then
configure AWS WAF to reject those requests.

To create and configure a C<ByteMatchSet>, perform the following steps:

=over

=item 1.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<CreateByteMatchSet> request.

=item 2.

Submit a C<CreateByteMatchSet> request.

=item 3.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an C<UpdateByteMatchSet> request.

=item 4.

Submit an UpdateByteMatchSet request to specify the part of the request
that you want AWS WAF to inspect (for example, the header or the URI)
and the value that you want AWS WAF to watch for.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 CreateGeoMatchSet

=over

=item ChangeToken => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::WAF::CreateGeoMatchSet>

Returns: a L<Paws::WAF::CreateGeoMatchSetResponse> instance

Creates an GeoMatchSet, which you use to specify which web requests you
want to allow or block based on the country that the requests originate
from. For example, if you're receiving a lot of requests from one or
more countries and you want to block the requests, you can create an
C<GeoMatchSet> that contains those countries and then configure AWS WAF
to block the requests.

To create and configure a C<GeoMatchSet>, perform the following steps:

=over

=item 1.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<CreateGeoMatchSet> request.

=item 2.

Submit a C<CreateGeoMatchSet> request.

=item 3.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateGeoMatchSet request.

=item 4.

Submit an C<UpdateGeoMatchSetSet> request to specify the countries that
you want AWS WAF to watch for.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 CreateIPSet

=over

=item ChangeToken => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::WAF::CreateIPSet>

Returns: a L<Paws::WAF::CreateIPSetResponse> instance

Creates an IPSet, which you use to specify which web requests that you
want to allow or block based on the IP addresses that the requests
originate from. For example, if you're receiving a lot of requests from
one or more individual IP addresses or one or more ranges of IP
addresses and you want to block the requests, you can create an
C<IPSet> that contains those IP addresses and then configure AWS WAF to
block the requests.

To create and configure an C<IPSet>, perform the following steps:

=over

=item 1.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<CreateIPSet> request.

=item 2.

Submit a C<CreateIPSet> request.

=item 3.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateIPSet request.

=item 4.

Submit an C<UpdateIPSet> request to specify the IP addresses that you
want AWS WAF to watch for.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 CreateRateBasedRule

=over

=item ChangeToken => Str

=item MetricName => Str

=item Name => Str

=item RateKey => Str

=item RateLimit => Int


=back

Each argument is described in detail in: L<Paws::WAF::CreateRateBasedRule>

Returns: a L<Paws::WAF::CreateRateBasedRuleResponse> instance

Creates a RateBasedRule. The C<RateBasedRule> contains a C<RateLimit>,
which specifies the maximum number of requests that AWS WAF allows from
a specified IP address in a five-minute period. The C<RateBasedRule>
also contains the C<IPSet> objects, C<ByteMatchSet> objects, and other
predicates that identify the requests that you want to count or block
if these requests exceed the C<RateLimit>.

If you add more than one predicate to a C<RateBasedRule>, a request not
only must exceed the C<RateLimit>, but it also must match all the
specifications to be counted or blocked. For example, suppose you add
the following to a C<RateBasedRule>:

=over

=item *

An C<IPSet> that matches the IP address C<192.0.2.44/32>

=item *

A C<ByteMatchSet> that matches C<BadBot> in the C<User-Agent> header

=back

Further, you specify a C<RateLimit> of 15,000.

You then add the C<RateBasedRule> to a C<WebACL> and specify that you
want to block requests that meet the conditions in the rule. For a
request to be blocked, it must come from the IP address 192.0.2.44
I<and> the C<User-Agent> header in the request must contain the value
C<BadBot>. Further, requests that match these two conditions must be
received at a rate of more than 15,000 requests every five minutes. If
both conditions are met and the rate is exceeded, AWS WAF blocks the
requests. If the rate drops below 15,000 for a five-minute period, AWS
WAF no longer blocks the requests.

As a second example, suppose you want to limit requests to a particular
page on your site. To do this, you could add the following to a
C<RateBasedRule>:

=over

=item *

A C<ByteMatchSet> with C<FieldToMatch> of C<URI>

=item *

A C<PositionalConstraint> of C<STARTS_WITH>

=item *

A C<TargetString> of C<login>

=back

Further, you specify a C<RateLimit> of 15,000.

By adding this C<RateBasedRule> to a C<WebACL>, you could limit
requests to your login page without affecting the rest of your site.

To create and configure a C<RateBasedRule>, perform the following
steps:

=over

=item 1.

Create and update the predicates that you want to include in the rule.
For more information, see CreateByteMatchSet, CreateIPSet, and
CreateSqlInjectionMatchSet.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<CreateRule> request.

=item 3.

Submit a C<CreateRateBasedRule> request.

=item 4.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateRule request.

=item 5.

Submit an C<UpdateRateBasedRule> request to specify the predicates that
you want to include in the rule.

=item 6.

Create and update a C<WebACL> that contains the C<RateBasedRule>. For
more information, see CreateWebACL.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 CreateRegexMatchSet

=over

=item ChangeToken => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::WAF::CreateRegexMatchSet>

Returns: a L<Paws::WAF::CreateRegexMatchSetResponse> instance

Creates a RegexMatchSet. You then use UpdateRegexMatchSet to identify
the part of a web request that you want AWS WAF to inspect, such as the
values of the C<User-Agent> header or the query string. For example,
you can create a C<RegexMatchSet> that contains a C<RegexMatchTuple>
that looks for any requests with C<User-Agent> headers that match a
C<RegexPatternSet> with pattern C<B[a@]dB[o0]t>. You can then configure
AWS WAF to reject those requests.

To create and configure a C<RegexMatchSet>, perform the following
steps:

=over

=item 1.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<CreateRegexMatchSet> request.

=item 2.

Submit a C<CreateRegexMatchSet> request.

=item 3.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an C<UpdateRegexMatchSet> request.

=item 4.

Submit an UpdateRegexMatchSet request to specify the part of the
request that you want AWS WAF to inspect (for example, the header or
the URI) and the value, using a C<RegexPatternSet>, that you want AWS
WAF to watch for.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 CreateRegexPatternSet

=over

=item ChangeToken => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::WAF::CreateRegexPatternSet>

Returns: a L<Paws::WAF::CreateRegexPatternSetResponse> instance

Creates a C<RegexPatternSet>. You then use UpdateRegexPatternSet to
specify the regular expression (regex) pattern that you want AWS WAF to
search for, such as C<B[a@]dB[o0]t>. You can then configure AWS WAF to
reject those requests.

To create and configure a C<RegexPatternSet>, perform the following
steps:

=over

=item 1.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<CreateRegexPatternSet> request.

=item 2.

Submit a C<CreateRegexPatternSet> request.

=item 3.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an C<UpdateRegexPatternSet> request.

=item 4.

Submit an UpdateRegexPatternSet request to specify the string that you
want AWS WAF to watch for.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 CreateRule

=over

=item ChangeToken => Str

=item MetricName => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::WAF::CreateRule>

Returns: a L<Paws::WAF::CreateRuleResponse> instance

Creates a C<Rule>, which contains the C<IPSet> objects, C<ByteMatchSet>
objects, and other predicates that identify the requests that you want
to block. If you add more than one predicate to a C<Rule>, a request
must match all of the specifications to be allowed or blocked. For
example, suppose that you add the following to a C<Rule>:

=over

=item *

An C<IPSet> that matches the IP address C<192.0.2.44/32>

=item *

A C<ByteMatchSet> that matches C<BadBot> in the C<User-Agent> header

=back

You then add the C<Rule> to a C<WebACL> and specify that you want to
blocks requests that satisfy the C<Rule>. For a request to be blocked,
it must come from the IP address 192.0.2.44 I<and> the C<User-Agent>
header in the request must contain the value C<BadBot>.

To create and configure a C<Rule>, perform the following steps:

=over

=item 1.

Create and update the predicates that you want to include in the
C<Rule>. For more information, see CreateByteMatchSet, CreateIPSet, and
CreateSqlInjectionMatchSet.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<CreateRule> request.

=item 3.

Submit a C<CreateRule> request.

=item 4.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateRule request.

=item 5.

Submit an C<UpdateRule> request to specify the predicates that you want
to include in the C<Rule>.

=item 6.

Create and update a C<WebACL> that contains the C<Rule>. For more
information, see CreateWebACL.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 CreateRuleGroup

=over

=item ChangeToken => Str

=item MetricName => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::WAF::CreateRuleGroup>

Returns: a L<Paws::WAF::CreateRuleGroupResponse> instance

Creates a C<RuleGroup>. A rule group is a collection of predefined
rules that you add to a web ACL. You use UpdateRuleGroup to add rules
to the rule group.

Rule groups are subject to the following limits:

=over

=item *

Three rule groups per account. You can request an increase to this
limit by contacting customer support.

=item *

One rule group per web ACL.

=item *

Ten rules per rule group.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 CreateSizeConstraintSet

=over

=item ChangeToken => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::WAF::CreateSizeConstraintSet>

Returns: a L<Paws::WAF::CreateSizeConstraintSetResponse> instance

Creates a C<SizeConstraintSet>. You then use UpdateSizeConstraintSet to
identify the part of a web request that you want AWS WAF to check for
length, such as the length of the C<User-Agent> header or the length of
the query string. For example, you can create a C<SizeConstraintSet>
that matches any requests that have a query string that is longer than
100 bytes. You can then configure AWS WAF to reject those requests.

To create and configure a C<SizeConstraintSet>, perform the following
steps:

=over

=item 1.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<CreateSizeConstraintSet> request.

=item 2.

Submit a C<CreateSizeConstraintSet> request.

=item 3.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an C<UpdateSizeConstraintSet> request.

=item 4.

Submit an UpdateSizeConstraintSet request to specify the part of the
request that you want AWS WAF to inspect (for example, the header or
the URI) and the value that you want AWS WAF to watch for.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 CreateSqlInjectionMatchSet

=over

=item ChangeToken => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::WAF::CreateSqlInjectionMatchSet>

Returns: a L<Paws::WAF::CreateSqlInjectionMatchSetResponse> instance

Creates a SqlInjectionMatchSet, which you use to allow, block, or count
requests that contain snippets of SQL code in a specified part of web
requests. AWS WAF searches for character sequences that are likely to
be malicious strings.

To create and configure a C<SqlInjectionMatchSet>, perform the
following steps:

=over

=item 1.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<CreateSqlInjectionMatchSet> request.

=item 2.

Submit a C<CreateSqlInjectionMatchSet> request.

=item 3.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateSqlInjectionMatchSet request.

=item 4.

Submit an UpdateSqlInjectionMatchSet request to specify the parts of
web requests in which you want to allow, block, or count malicious SQL
code.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 CreateWebACL

=over

=item ChangeToken => Str

=item DefaultAction => L<Paws::WAF::WafAction>

=item MetricName => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::WAF::CreateWebACL>

Returns: a L<Paws::WAF::CreateWebACLResponse> instance

Creates a C<WebACL>, which contains the C<Rules> that identify the
CloudFront web requests that you want to allow, block, or count. AWS
WAF evaluates C<Rules> in order based on the value of C<Priority> for
each C<Rule>.

You also specify a default action, either C<ALLOW> or C<BLOCK>. If a
web request doesn't match any of the C<Rules> in a C<WebACL>, AWS WAF
responds to the request with the default action.

To create and configure a C<WebACL>, perform the following steps:

=over

=item 1.

Create and update the C<ByteMatchSet> objects and other predicates that
you want to include in C<Rules>. For more information, see
CreateByteMatchSet, UpdateByteMatchSet, CreateIPSet, UpdateIPSet,
CreateSqlInjectionMatchSet, and UpdateSqlInjectionMatchSet.

=item 2.

Create and update the C<Rules> that you want to include in the
C<WebACL>. For more information, see CreateRule and UpdateRule.

=item 3.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<CreateWebACL> request.

=item 4.

Submit a C<CreateWebACL> request.

=item 5.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateWebACL request.

=item 6.

Submit an UpdateWebACL request to specify the C<Rules> that you want to
include in the C<WebACL>, to specify the default action, and to
associate the C<WebACL> with a CloudFront distribution.

=back

For more information about how to use the AWS WAF API, see the AWS WAF
Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 CreateXssMatchSet

=over

=item ChangeToken => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::WAF::CreateXssMatchSet>

Returns: a L<Paws::WAF::CreateXssMatchSetResponse> instance

Creates an XssMatchSet, which you use to allow, block, or count
requests that contain cross-site scripting attacks in the specified
part of web requests. AWS WAF searches for character sequences that are
likely to be malicious strings.

To create and configure an C<XssMatchSet>, perform the following steps:

=over

=item 1.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<CreateXssMatchSet> request.

=item 2.

Submit a C<CreateXssMatchSet> request.

=item 3.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateXssMatchSet request.

=item 4.

Submit an UpdateXssMatchSet request to specify the parts of web
requests in which you want to allow, block, or count cross-site
scripting attacks.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 DeleteByteMatchSet

=over

=item ByteMatchSetId => Str

=item ChangeToken => Str


=back

Each argument is described in detail in: L<Paws::WAF::DeleteByteMatchSet>

Returns: a L<Paws::WAF::DeleteByteMatchSetResponse> instance

Permanently deletes a ByteMatchSet. You can't delete a C<ByteMatchSet>
if it's still used in any C<Rules> or if it still includes any
ByteMatchTuple objects (any filters).

If you just want to remove a C<ByteMatchSet> from a C<Rule>, use
UpdateRule.

To permanently delete a C<ByteMatchSet>, perform the following steps:

=over

=item 1.

Update the C<ByteMatchSet> to remove filters, if any. For more
information, see UpdateByteMatchSet.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<DeleteByteMatchSet> request.

=item 3.

Submit a C<DeleteByteMatchSet> request.

=back



=head2 DeleteGeoMatchSet

=over

=item ChangeToken => Str

=item GeoMatchSetId => Str


=back

Each argument is described in detail in: L<Paws::WAF::DeleteGeoMatchSet>

Returns: a L<Paws::WAF::DeleteGeoMatchSetResponse> instance

Permanently deletes a GeoMatchSet. You can't delete a C<GeoMatchSet> if
it's still used in any C<Rules> or if it still includes any countries.

If you just want to remove a C<GeoMatchSet> from a C<Rule>, use
UpdateRule.

To permanently delete a C<GeoMatchSet> from AWS WAF, perform the
following steps:

=over

=item 1.

Update the C<GeoMatchSet> to remove any countries. For more
information, see UpdateGeoMatchSet.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<DeleteGeoMatchSet> request.

=item 3.

Submit a C<DeleteGeoMatchSet> request.

=back



=head2 DeleteIPSet

=over

=item ChangeToken => Str

=item IPSetId => Str


=back

Each argument is described in detail in: L<Paws::WAF::DeleteIPSet>

Returns: a L<Paws::WAF::DeleteIPSetResponse> instance

Permanently deletes an IPSet. You can't delete an C<IPSet> if it's
still used in any C<Rules> or if it still includes any IP addresses.

If you just want to remove an C<IPSet> from a C<Rule>, use UpdateRule.

To permanently delete an C<IPSet> from AWS WAF, perform the following
steps:

=over

=item 1.

Update the C<IPSet> to remove IP address ranges, if any. For more
information, see UpdateIPSet.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<DeleteIPSet> request.

=item 3.

Submit a C<DeleteIPSet> request.

=back



=head2 DeleteLoggingConfiguration

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::WAF::DeleteLoggingConfiguration>

Returns: a L<Paws::WAF::DeleteLoggingConfigurationResponse> instance

Permanently deletes the LoggingConfiguration from the specified web
ACL.


=head2 DeletePermissionPolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::WAF::DeletePermissionPolicy>

Returns: a L<Paws::WAF::DeletePermissionPolicyResponse> instance

Permanently deletes an IAM policy from the specified RuleGroup.

The user making the request must be the owner of the RuleGroup.


=head2 DeleteRateBasedRule

=over

=item ChangeToken => Str

=item RuleId => Str


=back

Each argument is described in detail in: L<Paws::WAF::DeleteRateBasedRule>

Returns: a L<Paws::WAF::DeleteRateBasedRuleResponse> instance

Permanently deletes a RateBasedRule. You can't delete a rule if it's
still used in any C<WebACL> objects or if it still includes any
predicates, such as C<ByteMatchSet> objects.

If you just want to remove a rule from a C<WebACL>, use UpdateWebACL.

To permanently delete a C<RateBasedRule> from AWS WAF, perform the
following steps:

=over

=item 1.

Update the C<RateBasedRule> to remove predicates, if any. For more
information, see UpdateRateBasedRule.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<DeleteRateBasedRule> request.

=item 3.

Submit a C<DeleteRateBasedRule> request.

=back



=head2 DeleteRegexMatchSet

=over

=item ChangeToken => Str

=item RegexMatchSetId => Str


=back

Each argument is described in detail in: L<Paws::WAF::DeleteRegexMatchSet>

Returns: a L<Paws::WAF::DeleteRegexMatchSetResponse> instance

Permanently deletes a RegexMatchSet. You can't delete a
C<RegexMatchSet> if it's still used in any C<Rules> or if it still
includes any C<RegexMatchTuples> objects (any filters).

If you just want to remove a C<RegexMatchSet> from a C<Rule>, use
UpdateRule.

To permanently delete a C<RegexMatchSet>, perform the following steps:

=over

=item 1.

Update the C<RegexMatchSet> to remove filters, if any. For more
information, see UpdateRegexMatchSet.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<DeleteRegexMatchSet> request.

=item 3.

Submit a C<DeleteRegexMatchSet> request.

=back



=head2 DeleteRegexPatternSet

=over

=item ChangeToken => Str

=item RegexPatternSetId => Str


=back

Each argument is described in detail in: L<Paws::WAF::DeleteRegexPatternSet>

Returns: a L<Paws::WAF::DeleteRegexPatternSetResponse> instance

Permanently deletes a RegexPatternSet. You can't delete a
C<RegexPatternSet> if it's still used in any C<RegexMatchSet> or if the
C<RegexPatternSet> is not empty.


=head2 DeleteRule

=over

=item ChangeToken => Str

=item RuleId => Str


=back

Each argument is described in detail in: L<Paws::WAF::DeleteRule>

Returns: a L<Paws::WAF::DeleteRuleResponse> instance

Permanently deletes a Rule. You can't delete a C<Rule> if it's still
used in any C<WebACL> objects or if it still includes any predicates,
such as C<ByteMatchSet> objects.

If you just want to remove a C<Rule> from a C<WebACL>, use
UpdateWebACL.

To permanently delete a C<Rule> from AWS WAF, perform the following
steps:

=over

=item 1.

Update the C<Rule> to remove predicates, if any. For more information,
see UpdateRule.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<DeleteRule> request.

=item 3.

Submit a C<DeleteRule> request.

=back



=head2 DeleteRuleGroup

=over

=item ChangeToken => Str

=item RuleGroupId => Str


=back

Each argument is described in detail in: L<Paws::WAF::DeleteRuleGroup>

Returns: a L<Paws::WAF::DeleteRuleGroupResponse> instance

Permanently deletes a RuleGroup. You can't delete a C<RuleGroup> if
it's still used in any C<WebACL> objects or if it still includes any
rules.

If you just want to remove a C<RuleGroup> from a C<WebACL>, use
UpdateWebACL.

To permanently delete a C<RuleGroup> from AWS WAF, perform the
following steps:

=over

=item 1.

Update the C<RuleGroup> to remove rules, if any. For more information,
see UpdateRuleGroup.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<DeleteRuleGroup> request.

=item 3.

Submit a C<DeleteRuleGroup> request.

=back



=head2 DeleteSizeConstraintSet

=over

=item ChangeToken => Str

=item SizeConstraintSetId => Str


=back

Each argument is described in detail in: L<Paws::WAF::DeleteSizeConstraintSet>

Returns: a L<Paws::WAF::DeleteSizeConstraintSetResponse> instance

Permanently deletes a SizeConstraintSet. You can't delete a
C<SizeConstraintSet> if it's still used in any C<Rules> or if it still
includes any SizeConstraint objects (any filters).

If you just want to remove a C<SizeConstraintSet> from a C<Rule>, use
UpdateRule.

To permanently delete a C<SizeConstraintSet>, perform the following
steps:

=over

=item 1.

Update the C<SizeConstraintSet> to remove filters, if any. For more
information, see UpdateSizeConstraintSet.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<DeleteSizeConstraintSet> request.

=item 3.

Submit a C<DeleteSizeConstraintSet> request.

=back



=head2 DeleteSqlInjectionMatchSet

=over

=item ChangeToken => Str

=item SqlInjectionMatchSetId => Str


=back

Each argument is described in detail in: L<Paws::WAF::DeleteSqlInjectionMatchSet>

Returns: a L<Paws::WAF::DeleteSqlInjectionMatchSetResponse> instance

Permanently deletes a SqlInjectionMatchSet. You can't delete a
C<SqlInjectionMatchSet> if it's still used in any C<Rules> or if it
still contains any SqlInjectionMatchTuple objects.

If you just want to remove a C<SqlInjectionMatchSet> from a C<Rule>,
use UpdateRule.

To permanently delete a C<SqlInjectionMatchSet> from AWS WAF, perform
the following steps:

=over

=item 1.

Update the C<SqlInjectionMatchSet> to remove filters, if any. For more
information, see UpdateSqlInjectionMatchSet.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<DeleteSqlInjectionMatchSet> request.

=item 3.

Submit a C<DeleteSqlInjectionMatchSet> request.

=back



=head2 DeleteWebACL

=over

=item ChangeToken => Str

=item WebACLId => Str


=back

Each argument is described in detail in: L<Paws::WAF::DeleteWebACL>

Returns: a L<Paws::WAF::DeleteWebACLResponse> instance

Permanently deletes a WebACL. You can't delete a C<WebACL> if it still
contains any C<Rules>.

To delete a C<WebACL>, perform the following steps:

=over

=item 1.

Update the C<WebACL> to remove C<Rules>, if any. For more information,
see UpdateWebACL.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<DeleteWebACL> request.

=item 3.

Submit a C<DeleteWebACL> request.

=back



=head2 DeleteXssMatchSet

=over

=item ChangeToken => Str

=item XssMatchSetId => Str


=back

Each argument is described in detail in: L<Paws::WAF::DeleteXssMatchSet>

Returns: a L<Paws::WAF::DeleteXssMatchSetResponse> instance

Permanently deletes an XssMatchSet. You can't delete an C<XssMatchSet>
if it's still used in any C<Rules> or if it still contains any
XssMatchTuple objects.

If you just want to remove an C<XssMatchSet> from a C<Rule>, use
UpdateRule.

To permanently delete an C<XssMatchSet> from AWS WAF, perform the
following steps:

=over

=item 1.

Update the C<XssMatchSet> to remove filters, if any. For more
information, see UpdateXssMatchSet.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<DeleteXssMatchSet> request.

=item 3.

Submit a C<DeleteXssMatchSet> request.

=back



=head2 GetByteMatchSet

=over

=item ByteMatchSetId => Str


=back

Each argument is described in detail in: L<Paws::WAF::GetByteMatchSet>

Returns: a L<Paws::WAF::GetByteMatchSetResponse> instance

Returns the ByteMatchSet specified by C<ByteMatchSetId>.


=head2 GetChangeToken






Each argument is described in detail in: L<Paws::WAF::GetChangeToken>

Returns: a L<Paws::WAF::GetChangeTokenResponse> instance

When you want to create, update, or delete AWS WAF objects, get a
change token and include the change token in the create, update, or
delete request. Change tokens ensure that your application doesn't
submit conflicting requests to AWS WAF.

Each create, update, or delete request must use a unique change token.
If your application submits a C<GetChangeToken> request and then
submits a second C<GetChangeToken> request before submitting a create,
update, or delete request, the second C<GetChangeToken> request returns
the same value as the first C<GetChangeToken> request.

When you use a change token in a create, update, or delete request, the
status of the change token changes to C<PENDING>, which indicates that
AWS WAF is propagating the change to all AWS WAF servers. Use
C<GetChangeTokenStatus> to determine the status of your change token.


=head2 GetChangeTokenStatus

=over

=item ChangeToken => Str


=back

Each argument is described in detail in: L<Paws::WAF::GetChangeTokenStatus>

Returns: a L<Paws::WAF::GetChangeTokenStatusResponse> instance

Returns the status of a C<ChangeToken> that you got by calling
GetChangeToken. C<ChangeTokenStatus> is one of the following values:

=over

=item *

C<PROVISIONED>: You requested the change token by calling
C<GetChangeToken>, but you haven't used it yet in a call to create,
update, or delete an AWS WAF object.

=item *

C<PENDING>: AWS WAF is propagating the create, update, or delete
request to all AWS WAF servers.

=item *

C<IN_SYNC>: Propagation is complete.

=back



=head2 GetGeoMatchSet

=over

=item GeoMatchSetId => Str


=back

Each argument is described in detail in: L<Paws::WAF::GetGeoMatchSet>

Returns: a L<Paws::WAF::GetGeoMatchSetResponse> instance

Returns the GeoMatchSet that is specified by C<GeoMatchSetId>.


=head2 GetIPSet

=over

=item IPSetId => Str


=back

Each argument is described in detail in: L<Paws::WAF::GetIPSet>

Returns: a L<Paws::WAF::GetIPSetResponse> instance

Returns the IPSet that is specified by C<IPSetId>.


=head2 GetLoggingConfiguration

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::WAF::GetLoggingConfiguration>

Returns: a L<Paws::WAF::GetLoggingConfigurationResponse> instance

Returns the LoggingConfiguration for the specified web ACL.


=head2 GetPermissionPolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::WAF::GetPermissionPolicy>

Returns: a L<Paws::WAF::GetPermissionPolicyResponse> instance

Returns the IAM policy attached to the RuleGroup.


=head2 GetRateBasedRule

=over

=item RuleId => Str


=back

Each argument is described in detail in: L<Paws::WAF::GetRateBasedRule>

Returns: a L<Paws::WAF::GetRateBasedRuleResponse> instance

Returns the RateBasedRule that is specified by the C<RuleId> that you
included in the C<GetRateBasedRule> request.


=head2 GetRateBasedRuleManagedKeys

=over

=item RuleId => Str

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAF::GetRateBasedRuleManagedKeys>

Returns: a L<Paws::WAF::GetRateBasedRuleManagedKeysResponse> instance

Returns an array of IP addresses currently being blocked by the
RateBasedRule that is specified by the C<RuleId>. The maximum number of
managed keys that will be blocked is 10,000. If more than 10,000
addresses exceed the rate limit, the 10,000 addresses with the highest
rates will be blocked.


=head2 GetRegexMatchSet

=over

=item RegexMatchSetId => Str


=back

Each argument is described in detail in: L<Paws::WAF::GetRegexMatchSet>

Returns: a L<Paws::WAF::GetRegexMatchSetResponse> instance

Returns the RegexMatchSet specified by C<RegexMatchSetId>.


=head2 GetRegexPatternSet

=over

=item RegexPatternSetId => Str


=back

Each argument is described in detail in: L<Paws::WAF::GetRegexPatternSet>

Returns: a L<Paws::WAF::GetRegexPatternSetResponse> instance

Returns the RegexPatternSet specified by C<RegexPatternSetId>.


=head2 GetRule

=over

=item RuleId => Str


=back

Each argument is described in detail in: L<Paws::WAF::GetRule>

Returns: a L<Paws::WAF::GetRuleResponse> instance

Returns the Rule that is specified by the C<RuleId> that you included
in the C<GetRule> request.


=head2 GetRuleGroup

=over

=item RuleGroupId => Str


=back

Each argument is described in detail in: L<Paws::WAF::GetRuleGroup>

Returns: a L<Paws::WAF::GetRuleGroupResponse> instance

Returns the RuleGroup that is specified by the C<RuleGroupId> that you
included in the C<GetRuleGroup> request.

To view the rules in a rule group, use ListActivatedRulesInRuleGroup.


=head2 GetSampledRequests

=over

=item MaxItems => Int

=item RuleId => Str

=item TimeWindow => L<Paws::WAF::TimeWindow>

=item WebAclId => Str


=back

Each argument is described in detail in: L<Paws::WAF::GetSampledRequests>

Returns: a L<Paws::WAF::GetSampledRequestsResponse> instance

Gets detailed information about a specified number of requests--a
sample--that AWS WAF randomly selects from among the first 5,000
requests that your AWS resource received during a time range that you
choose. You can specify a sample size of up to 500 requests, and you
can specify any time range in the previous three hours.

C<GetSampledRequests> returns a time range, which is usually the time
range that you specified. However, if your resource (such as a
CloudFront distribution) received 5,000 requests before the specified
time range elapsed, C<GetSampledRequests> returns an updated time
range. This new time range indicates the actual period during which AWS
WAF selected the requests in the sample.


=head2 GetSizeConstraintSet

=over

=item SizeConstraintSetId => Str


=back

Each argument is described in detail in: L<Paws::WAF::GetSizeConstraintSet>

Returns: a L<Paws::WAF::GetSizeConstraintSetResponse> instance

Returns the SizeConstraintSet specified by C<SizeConstraintSetId>.


=head2 GetSqlInjectionMatchSet

=over

=item SqlInjectionMatchSetId => Str


=back

Each argument is described in detail in: L<Paws::WAF::GetSqlInjectionMatchSet>

Returns: a L<Paws::WAF::GetSqlInjectionMatchSetResponse> instance

Returns the SqlInjectionMatchSet that is specified by
C<SqlInjectionMatchSetId>.


=head2 GetWebACL

=over

=item WebACLId => Str


=back

Each argument is described in detail in: L<Paws::WAF::GetWebACL>

Returns: a L<Paws::WAF::GetWebACLResponse> instance

Returns the WebACL that is specified by C<WebACLId>.


=head2 GetXssMatchSet

=over

=item XssMatchSetId => Str


=back

Each argument is described in detail in: L<Paws::WAF::GetXssMatchSet>

Returns: a L<Paws::WAF::GetXssMatchSetResponse> instance

Returns the XssMatchSet that is specified by C<XssMatchSetId>.


=head2 ListActivatedRulesInRuleGroup

=over

=item [Limit => Int]

=item [NextMarker => Str]

=item [RuleGroupId => Str]


=back

Each argument is described in detail in: L<Paws::WAF::ListActivatedRulesInRuleGroup>

Returns: a L<Paws::WAF::ListActivatedRulesInRuleGroupResponse> instance

Returns an array of ActivatedRule objects.


=head2 ListByteMatchSets

=over

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAF::ListByteMatchSets>

Returns: a L<Paws::WAF::ListByteMatchSetsResponse> instance

Returns an array of ByteMatchSetSummary objects.


=head2 ListGeoMatchSets

=over

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAF::ListGeoMatchSets>

Returns: a L<Paws::WAF::ListGeoMatchSetsResponse> instance

Returns an array of GeoMatchSetSummary objects in the response.


=head2 ListIPSets

=over

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAF::ListIPSets>

Returns: a L<Paws::WAF::ListIPSetsResponse> instance

Returns an array of IPSetSummary objects in the response.


=head2 ListLoggingConfigurations

=over

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAF::ListLoggingConfigurations>

Returns: a L<Paws::WAF::ListLoggingConfigurationsResponse> instance

Returns an array of LoggingConfiguration objects.


=head2 ListRateBasedRules

=over

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAF::ListRateBasedRules>

Returns: a L<Paws::WAF::ListRateBasedRulesResponse> instance

Returns an array of RuleSummary objects.


=head2 ListRegexMatchSets

=over

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAF::ListRegexMatchSets>

Returns: a L<Paws::WAF::ListRegexMatchSetsResponse> instance

Returns an array of RegexMatchSetSummary objects.


=head2 ListRegexPatternSets

=over

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAF::ListRegexPatternSets>

Returns: a L<Paws::WAF::ListRegexPatternSetsResponse> instance

Returns an array of RegexPatternSetSummary objects.


=head2 ListRuleGroups

=over

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAF::ListRuleGroups>

Returns: a L<Paws::WAF::ListRuleGroupsResponse> instance

Returns an array of RuleGroup objects.


=head2 ListRules

=over

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAF::ListRules>

Returns: a L<Paws::WAF::ListRulesResponse> instance

Returns an array of RuleSummary objects.


=head2 ListSizeConstraintSets

=over

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAF::ListSizeConstraintSets>

Returns: a L<Paws::WAF::ListSizeConstraintSetsResponse> instance

Returns an array of SizeConstraintSetSummary objects.


=head2 ListSqlInjectionMatchSets

=over

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAF::ListSqlInjectionMatchSets>

Returns: a L<Paws::WAF::ListSqlInjectionMatchSetsResponse> instance

Returns an array of SqlInjectionMatchSet objects.


=head2 ListSubscribedRuleGroups

=over

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAF::ListSubscribedRuleGroups>

Returns: a L<Paws::WAF::ListSubscribedRuleGroupsResponse> instance

Returns an array of RuleGroup objects that you are subscribed to.


=head2 ListWebACLs

=over

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAF::ListWebACLs>

Returns: a L<Paws::WAF::ListWebACLsResponse> instance

Returns an array of WebACLSummary objects in the response.


=head2 ListXssMatchSets

=over

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAF::ListXssMatchSets>

Returns: a L<Paws::WAF::ListXssMatchSetsResponse> instance

Returns an array of XssMatchSet objects.


=head2 PutLoggingConfiguration

=over

=item LoggingConfiguration => L<Paws::WAF::LoggingConfiguration>


=back

Each argument is described in detail in: L<Paws::WAF::PutLoggingConfiguration>

Returns: a L<Paws::WAF::PutLoggingConfigurationResponse> instance

Associates a LoggingConfiguration with a specified web ACL.

You can access information about all traffic that AWS WAF inspects
using the following steps:

=over

=item 1.

Create an Amazon Kinesis Data Firehose .

=item 2.

Associate that firehose to your web ACL using a
C<PutLoggingConfiguration> request.

=back

When you successfully enable logging using a C<PutLoggingConfiguration>
request, AWS WAF will create a service linked role with the necessary
permissions to write logs to the Amazon Kinesis Data Firehose. For more
information, see Logging Web ACL Traffic Information
(http://docs.aws.amazon.com/waf/latest/developerguide/logging.html) in
the I<AWS WAF Developer Guide>.


=head2 PutPermissionPolicy

=over

=item Policy => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::WAF::PutPermissionPolicy>

Returns: a L<Paws::WAF::PutPermissionPolicyResponse> instance

Attaches a IAM policy to the specified resource. The only supported use
for this action is to share a RuleGroup across accounts.

The C<PutPermissionPolicy> is subject to the following restrictions:

=over

=item *

You can attach only one policy with each C<PutPermissionPolicy>
request.

=item *

The policy must include an C<Effect>, C<Action> and C<Principal>.

=item *

C<Effect> must specify C<Allow>.

=item *

The C<Action> in the policy must be C<waf:UpdateWebACL>,
C<waf-regional:UpdateWebACL>, C<waf:GetRuleGroup> and
C<waf-regional:GetRuleGroup> . Any extra or wildcard actions in the
policy will be rejected.

=item *

The policy cannot include a C<Resource> parameter.

=item *

The ARN in the request must be a valid WAF RuleGroup ARN and the
RuleGroup must exist in the same region.

=item *

The user making the request must be the owner of the RuleGroup.

=item *

Your policy must be composed using IAM Policy version 2012-10-17.

=back

For more information, see IAM Policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html).

An example of a valid policy parameter is shown in the Examples section
below.


=head2 UpdateByteMatchSet

=over

=item ByteMatchSetId => Str

=item ChangeToken => Str

=item Updates => ArrayRef[L<Paws::WAF::ByteMatchSetUpdate>]


=back

Each argument is described in detail in: L<Paws::WAF::UpdateByteMatchSet>

Returns: a L<Paws::WAF::UpdateByteMatchSetResponse> instance

Inserts or deletes ByteMatchTuple objects (filters) in a ByteMatchSet.
For each C<ByteMatchTuple> object, you specify the following values:

=over

=item *

Whether to insert or delete the object from the array. If you want to
change a C<ByteMatchSetUpdate> object, you delete the existing object
and add a new one.

=item *

The part of a web request that you want AWS WAF to inspect, such as a
query string or the value of the C<User-Agent> header.

=item *

The bytes (typically a string that corresponds with ASCII characters)
that you want AWS WAF to look for. For more information, including how
you specify the values for the AWS WAF API and the AWS CLI or SDKs, see
C<TargetString> in the ByteMatchTuple data type.

=item *

Where to look, such as at the beginning or the end of a query string.

=item *

Whether to perform any conversions on the request, such as converting
it to lowercase, before inspecting it for the specified string.

=back

For example, you can add a C<ByteMatchSetUpdate> object that matches
web requests in which C<User-Agent> headers contain the string
C<BadBot>. You can then configure AWS WAF to block those requests.

To create and configure a C<ByteMatchSet>, perform the following steps:

=over

=item 1.

Create a C<ByteMatchSet.> For more information, see CreateByteMatchSet.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of an C<UpdateByteMatchSet> request.

=item 3.

Submit an C<UpdateByteMatchSet> request to specify the part of the
request that you want AWS WAF to inspect (for example, the header or
the URI) and the value that you want AWS WAF to watch for.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 UpdateGeoMatchSet

=over

=item ChangeToken => Str

=item GeoMatchSetId => Str

=item Updates => ArrayRef[L<Paws::WAF::GeoMatchSetUpdate>]


=back

Each argument is described in detail in: L<Paws::WAF::UpdateGeoMatchSet>

Returns: a L<Paws::WAF::UpdateGeoMatchSetResponse> instance

Inserts or deletes GeoMatchConstraint objects in an C<GeoMatchSet>. For
each C<GeoMatchConstraint> object, you specify the following values:

=over

=item *

Whether to insert or delete the object from the array. If you want to
change an C<GeoMatchConstraint> object, you delete the existing object
and add a new one.

=item *

The C<Type>. The only valid value for C<Type> is C<Country>.

=item *

The C<Value>, which is a two character code for the country to add to
the C<GeoMatchConstraint> object. Valid codes are listed in
GeoMatchConstraint$Value.

=back

To create and configure an C<GeoMatchSet>, perform the following steps:

=over

=item 1.

Submit a CreateGeoMatchSet request.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateGeoMatchSet request.

=item 3.

Submit an C<UpdateGeoMatchSet> request to specify the country that you
want AWS WAF to watch for.

=back

When you update an C<GeoMatchSet>, you specify the country that you
want to add and/or the country that you want to delete. If you want to
change a country, you delete the existing country and add the new one.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 UpdateIPSet

=over

=item ChangeToken => Str

=item IPSetId => Str

=item Updates => ArrayRef[L<Paws::WAF::IPSetUpdate>]


=back

Each argument is described in detail in: L<Paws::WAF::UpdateIPSet>

Returns: a L<Paws::WAF::UpdateIPSetResponse> instance

Inserts or deletes IPSetDescriptor objects in an C<IPSet>. For each
C<IPSetDescriptor> object, you specify the following values:

=over

=item *

Whether to insert or delete the object from the array. If you want to
change an C<IPSetDescriptor> object, you delete the existing object and
add a new one.

=item *

The IP address version, C<IPv4> or C<IPv6>.

=item *

The IP address in CIDR notation, for example, C<192.0.2.0/24> (for the
range of IP addresses from C<192.0.2.0> to C<192.0.2.255>) or
C<192.0.2.44/32> (for the individual IP address C<192.0.2.44>).

=back

AWS WAF supports IPv4 address ranges: /8 and any range between /16
through /32. AWS WAF supports IPv6 address ranges: /16, /24, /32, /48,
/56, /64, and /128. For more information about CIDR notation, see the
Wikipedia entry Classless Inter-Domain Routing
(https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).

IPv6 addresses can be represented using any of the following formats:

=over

=item *

1111:0000:0000:0000:0000:0000:0000:0111/128

=item *

1111:0:0:0:0:0:0:0111/128

=item *

1111::0111/128

=item *

1111::111/128

=back

You use an C<IPSet> to specify which web requests you want to allow or
block based on the IP addresses that the requests originated from. For
example, if you're receiving a lot of requests from one or a small
number of IP addresses and you want to block the requests, you can
create an C<IPSet> that specifies those IP addresses, and then
configure AWS WAF to block the requests.

To create and configure an C<IPSet>, perform the following steps:

=over

=item 1.

Submit a CreateIPSet request.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateIPSet request.

=item 3.

Submit an C<UpdateIPSet> request to specify the IP addresses that you
want AWS WAF to watch for.

=back

When you update an C<IPSet>, you specify the IP addresses that you want
to add and/or the IP addresses that you want to delete. If you want to
change an IP address, you delete the existing IP address and add the
new one.

You can insert a maximum of 1000 addresses in a single request.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 UpdateRateBasedRule

=over

=item ChangeToken => Str

=item RateLimit => Int

=item RuleId => Str

=item Updates => ArrayRef[L<Paws::WAF::RuleUpdate>]


=back

Each argument is described in detail in: L<Paws::WAF::UpdateRateBasedRule>

Returns: a L<Paws::WAF::UpdateRateBasedRuleResponse> instance

Inserts or deletes Predicate objects in a rule and updates the
C<RateLimit> in the rule.

Each C<Predicate> object identifies a predicate, such as a ByteMatchSet
or an IPSet, that specifies the web requests that you want to block or
count. The C<RateLimit> specifies the number of requests every five
minutes that triggers the rule.

If you add more than one predicate to a C<RateBasedRule>, a request
must match all the predicates and exceed the C<RateLimit> to be counted
or blocked. For example, suppose you add the following to a
C<RateBasedRule>:

=over

=item *

An C<IPSet> that matches the IP address C<192.0.2.44/32>

=item *

A C<ByteMatchSet> that matches C<BadBot> in the C<User-Agent> header

=back

Further, you specify a C<RateLimit> of 15,000.

You then add the C<RateBasedRule> to a C<WebACL> and specify that you
want to block requests that satisfy the rule. For a request to be
blocked, it must come from the IP address 192.0.2.44 I<and> the
C<User-Agent> header in the request must contain the value C<BadBot>.
Further, requests that match these two conditions much be received at a
rate of more than 15,000 every five minutes. If the rate drops below
this limit, AWS WAF no longer blocks the requests.

As a second example, suppose you want to limit requests to a particular
page on your site. To do this, you could add the following to a
C<RateBasedRule>:

=over

=item *

A C<ByteMatchSet> with C<FieldToMatch> of C<URI>

=item *

A C<PositionalConstraint> of C<STARTS_WITH>

=item *

A C<TargetString> of C<login>

=back

Further, you specify a C<RateLimit> of 15,000.

By adding this C<RateBasedRule> to a C<WebACL>, you could limit
requests to your login page without affecting the rest of your site.


=head2 UpdateRegexMatchSet

=over

=item ChangeToken => Str

=item RegexMatchSetId => Str

=item Updates => ArrayRef[L<Paws::WAF::RegexMatchSetUpdate>]


=back

Each argument is described in detail in: L<Paws::WAF::UpdateRegexMatchSet>

Returns: a L<Paws::WAF::UpdateRegexMatchSetResponse> instance

Inserts or deletes RegexMatchTuple objects (filters) in a
RegexMatchSet. For each C<RegexMatchSetUpdate> object, you specify the
following values:

=over

=item *

Whether to insert or delete the object from the array. If you want to
change a C<RegexMatchSetUpdate> object, you delete the existing object
and add a new one.

=item *

The part of a web request that you want AWS WAF to inspectupdate, such
as a query string or the value of the C<User-Agent> header.

=item *

The identifier of the pattern (a regular expression) that you want AWS
WAF to look for. For more information, see RegexPatternSet.

=item *

Whether to perform any conversions on the request, such as converting
it to lowercase, before inspecting it for the specified string.

=back

For example, you can create a C<RegexPatternSet> that matches any
requests with C<User-Agent> headers that contain the string
C<B[a@]dB[o0]t>. You can then configure AWS WAF to reject those
requests.

To create and configure a C<RegexMatchSet>, perform the following
steps:

=over

=item 1.

Create a C<RegexMatchSet.> For more information, see
CreateRegexMatchSet.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of an C<UpdateRegexMatchSet> request.

=item 3.

Submit an C<UpdateRegexMatchSet> request to specify the part of the
request that you want AWS WAF to inspect (for example, the header or
the URI) and the identifier of the C<RegexPatternSet> that contain the
regular expression patters you want AWS WAF to watch for.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 UpdateRegexPatternSet

=over

=item ChangeToken => Str

=item RegexPatternSetId => Str

=item Updates => ArrayRef[L<Paws::WAF::RegexPatternSetUpdate>]


=back

Each argument is described in detail in: L<Paws::WAF::UpdateRegexPatternSet>

Returns: a L<Paws::WAF::UpdateRegexPatternSetResponse> instance

Inserts or deletes C<RegexPatternString> objects in a RegexPatternSet.
For each C<RegexPatternString> object, you specify the following
values:

=over

=item *

Whether to insert or delete the C<RegexPatternString>.

=item *

The regular expression pattern that you want to insert or delete. For
more information, see RegexPatternSet.

=back

For example, you can create a C<RegexPatternString> such as
C<B[a@]dB[o0]t>. AWS WAF will match this C<RegexPatternString> to:

=over

=item *

BadBot

=item *

BadB0t

=item *

B@dBot

=item *

B@dB0t

=back

To create and configure a C<RegexPatternSet>, perform the following
steps:

=over

=item 1.

Create a C<RegexPatternSet.> For more information, see
CreateRegexPatternSet.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of an C<UpdateRegexPatternSet> request.

=item 3.

Submit an C<UpdateRegexPatternSet> request to specify the regular
expression pattern that you want AWS WAF to watch for.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 UpdateRule

=over

=item ChangeToken => Str

=item RuleId => Str

=item Updates => ArrayRef[L<Paws::WAF::RuleUpdate>]


=back

Each argument is described in detail in: L<Paws::WAF::UpdateRule>

Returns: a L<Paws::WAF::UpdateRuleResponse> instance

Inserts or deletes Predicate objects in a C<Rule>. Each C<Predicate>
object identifies a predicate, such as a ByteMatchSet or an IPSet, that
specifies the web requests that you want to allow, block, or count. If
you add more than one predicate to a C<Rule>, a request must match all
of the specifications to be allowed, blocked, or counted. For example,
suppose that you add the following to a C<Rule>:

=over

=item *

A C<ByteMatchSet> that matches the value C<BadBot> in the C<User-Agent>
header

=item *

An C<IPSet> that matches the IP address C<192.0.2.44>

=back

You then add the C<Rule> to a C<WebACL> and specify that you want to
block requests that satisfy the C<Rule>. For a request to be blocked,
the C<User-Agent> header in the request must contain the value
C<BadBot> I<and> the request must originate from the IP address
192.0.2.44.

To create and configure a C<Rule>, perform the following steps:

=over

=item 1.

Create and update the predicates that you want to include in the
C<Rule>.

=item 2.

Create the C<Rule>. See CreateRule.

=item 3.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateRule request.

=item 4.

Submit an C<UpdateRule> request to add predicates to the C<Rule>.

=item 5.

Create and update a C<WebACL> that contains the C<Rule>. See
CreateWebACL.

=back

If you want to replace one C<ByteMatchSet> or C<IPSet> with another,
you delete the existing one and add the new one.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 UpdateRuleGroup

=over

=item ChangeToken => Str

=item RuleGroupId => Str

=item Updates => ArrayRef[L<Paws::WAF::RuleGroupUpdate>]


=back

Each argument is described in detail in: L<Paws::WAF::UpdateRuleGroup>

Returns: a L<Paws::WAF::UpdateRuleGroupResponse> instance

Inserts or deletes ActivatedRule objects in a C<RuleGroup>.

You can only insert C<REGULAR> rules into a rule group.

You can have a maximum of ten rules per rule group.

To create and configure a C<RuleGroup>, perform the following steps:

=over

=item 1.

Create and update the C<Rules> that you want to include in the
C<RuleGroup>. See CreateRule.

=item 2.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateRuleGroup request.

=item 3.

Submit an C<UpdateRuleGroup> request to add C<Rules> to the
C<RuleGroup>.

=item 4.

Create and update a C<WebACL> that contains the C<RuleGroup>. See
CreateWebACL.

=back

If you want to replace one C<Rule> with another, you delete the
existing one and add the new one.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 UpdateSizeConstraintSet

=over

=item ChangeToken => Str

=item SizeConstraintSetId => Str

=item Updates => ArrayRef[L<Paws::WAF::SizeConstraintSetUpdate>]


=back

Each argument is described in detail in: L<Paws::WAF::UpdateSizeConstraintSet>

Returns: a L<Paws::WAF::UpdateSizeConstraintSetResponse> instance

Inserts or deletes SizeConstraint objects (filters) in a
SizeConstraintSet. For each C<SizeConstraint> object, you specify the
following values:

=over

=item *

Whether to insert or delete the object from the array. If you want to
change a C<SizeConstraintSetUpdate> object, you delete the existing
object and add a new one.

=item *

The part of a web request that you want AWS WAF to evaluate, such as
the length of a query string or the length of the C<User-Agent> header.

=item *

Whether to perform any transformations on the request, such as
converting it to lowercase, before checking its length. Note that
transformations of the request body are not supported because the AWS
resource forwards only the first C<8192> bytes of your request to AWS
WAF.

You can only specify a single type of TextTransformation.

=item *

A C<ComparisonOperator> used for evaluating the selected part of the
request against the specified C<Size>, such as equals, greater than,
less than, and so on.

=item *

The length, in bytes, that you want AWS WAF to watch for in selected
part of the request. The length is computed after applying the
transformation.

=back

For example, you can add a C<SizeConstraintSetUpdate> object that
matches web requests in which the length of the C<User-Agent> header is
greater than 100 bytes. You can then configure AWS WAF to block those
requests.

To create and configure a C<SizeConstraintSet>, perform the following
steps:

=over

=item 1.

Create a C<SizeConstraintSet.> For more information, see
CreateSizeConstraintSet.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of an C<UpdateSizeConstraintSet> request.

=item 3.

Submit an C<UpdateSizeConstraintSet> request to specify the part of the
request that you want AWS WAF to inspect (for example, the header or
the URI) and the value that you want AWS WAF to watch for.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 UpdateSqlInjectionMatchSet

=over

=item ChangeToken => Str

=item SqlInjectionMatchSetId => Str

=item Updates => ArrayRef[L<Paws::WAF::SqlInjectionMatchSetUpdate>]


=back

Each argument is described in detail in: L<Paws::WAF::UpdateSqlInjectionMatchSet>

Returns: a L<Paws::WAF::UpdateSqlInjectionMatchSetResponse> instance

Inserts or deletes SqlInjectionMatchTuple objects (filters) in a
SqlInjectionMatchSet. For each C<SqlInjectionMatchTuple> object, you
specify the following values:

=over

=item *

C<Action>: Whether to insert the object into or delete the object from
the array. To change a C<SqlInjectionMatchTuple>, you delete the
existing object and add a new one.

=item *

C<FieldToMatch>: The part of web requests that you want AWS WAF to
inspect and, if you want AWS WAF to inspect a header or custom query
parameter, the name of the header or parameter.

=item *

C<TextTransformation>: Which text transformation, if any, to perform on
the web request before inspecting the request for snippets of malicious
SQL code.

You can only specify a single type of TextTransformation.

=back

You use C<SqlInjectionMatchSet> objects to specify which CloudFront
requests that you want to allow, block, or count. For example, if
you're receiving requests that contain snippets of SQL code in the
query string and you want to block the requests, you can create a
C<SqlInjectionMatchSet> with the applicable settings, and then
configure AWS WAF to block the requests.

To create and configure a C<SqlInjectionMatchSet>, perform the
following steps:

=over

=item 1.

Submit a CreateSqlInjectionMatchSet request.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateIPSet request.

=item 3.

Submit an C<UpdateSqlInjectionMatchSet> request to specify the parts of
web requests that you want AWS WAF to inspect for snippets of SQL code.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 UpdateWebACL

=over

=item ChangeToken => Str

=item WebACLId => Str

=item [DefaultAction => L<Paws::WAF::WafAction>]

=item [Updates => ArrayRef[L<Paws::WAF::WebACLUpdate>]]


=back

Each argument is described in detail in: L<Paws::WAF::UpdateWebACL>

Returns: a L<Paws::WAF::UpdateWebACLResponse> instance

Inserts or deletes ActivatedRule objects in a C<WebACL>. Each C<Rule>
identifies web requests that you want to allow, block, or count. When
you update a C<WebACL>, you specify the following values:

=over

=item *

A default action for the C<WebACL>, either C<ALLOW> or C<BLOCK>. AWS
WAF performs the default action if a request doesn't match the criteria
in any of the C<Rules> in a C<WebACL>.

=item *

The C<Rules> that you want to add or delete. If you want to replace one
C<Rule> with another, you delete the existing C<Rule> and add the new
one.

=item *

For each C<Rule>, whether you want AWS WAF to allow requests, block
requests, or count requests that match the conditions in the C<Rule>.

=item *

The order in which you want AWS WAF to evaluate the C<Rules> in a
C<WebACL>. If you add more than one C<Rule> to a C<WebACL>, AWS WAF
evaluates each request against the C<Rules> in order based on the value
of C<Priority>. (The C<Rule> that has the lowest value for C<Priority>
is evaluated first.) When a web request matches all the predicates
(such as C<ByteMatchSets> and C<IPSets>) in a C<Rule>, AWS WAF
immediately takes the corresponding action, allow or block, and doesn't
evaluate the request against the remaining C<Rules> in the C<WebACL>,
if any.

=back

To create and configure a C<WebACL>, perform the following steps:

=over

=item 1.

Create and update the predicates that you want to include in C<Rules>.
For more information, see CreateByteMatchSet, UpdateByteMatchSet,
CreateIPSet, UpdateIPSet, CreateSqlInjectionMatchSet, and
UpdateSqlInjectionMatchSet.

=item 2.

Create and update the C<Rules> that you want to include in the
C<WebACL>. For more information, see CreateRule and UpdateRule.

=item 3.

Create a C<WebACL>. See CreateWebACL.

=item 4.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateWebACL request.

=item 5.

Submit an C<UpdateWebACL> request to specify the C<Rules> that you want
to include in the C<WebACL>, to specify the default action, and to
associate the C<WebACL> with a CloudFront distribution.

The C<ActivatedRule> can be a rule group. If you specify a rule group
as your C<ActivatedRule>, you can exclude specific rules from that rule
group.

If you already have a rule group associated with a web ACL and want to
submit an C<UpdateWebACL> request to exclude certain rules from that
rule group, you must first remove the rule group from the web ACL, the
re-insert it again, specifying the excluded rules. For details, see
ActivatedRule$ExcludedRules.

=back

Be aware that if you try to add a RATE_BASED rule to a web ACL without
setting the rule type when first creating the rule, the UpdateWebACL
request will fail because the request tries to add a REGULAR rule (the
default rule type) with the specified ID, which does not exist.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 UpdateXssMatchSet

=over

=item ChangeToken => Str

=item Updates => ArrayRef[L<Paws::WAF::XssMatchSetUpdate>]

=item XssMatchSetId => Str


=back

Each argument is described in detail in: L<Paws::WAF::UpdateXssMatchSet>

Returns: a L<Paws::WAF::UpdateXssMatchSetResponse> instance

Inserts or deletes XssMatchTuple objects (filters) in an XssMatchSet.
For each C<XssMatchTuple> object, you specify the following values:

=over

=item *

C<Action>: Whether to insert the object into or delete the object from
the array. To change an C<XssMatchTuple>, you delete the existing
object and add a new one.

=item *

C<FieldToMatch>: The part of web requests that you want AWS WAF to
inspect and, if you want AWS WAF to inspect a header or custom query
parameter, the name of the header or parameter.

=item *

C<TextTransformation>: Which text transformation, if any, to perform on
the web request before inspecting the request for cross-site scripting
attacks.

You can only specify a single type of TextTransformation.

=back

You use C<XssMatchSet> objects to specify which CloudFront requests
that you want to allow, block, or count. For example, if you're
receiving requests that contain cross-site scripting attacks in the
request body and you want to block the requests, you can create an
C<XssMatchSet> with the applicable settings, and then configure AWS WAF
to block the requests.

To create and configure an C<XssMatchSet>, perform the following steps:

=over

=item 1.

Submit a CreateXssMatchSet request.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateIPSet request.

=item 3.

Submit an C<UpdateXssMatchSet> request to specify the parts of web
requests that you want AWS WAF to inspect for cross-site scripting
attacks.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllRateBasedRuleManagedKeys(sub { },RuleId => Str, [NextMarker => Str])

=head2 GetAllRateBasedRuleManagedKeys(RuleId => Str, [NextMarker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ManagedKeys, passing the object as the first parameter, and the string 'ManagedKeys' as the second parameter 

If not, it will return a a L<Paws::WAF::GetRateBasedRuleManagedKeysResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllActivatedRulesInRuleGroup(sub { },[Limit => Int, NextMarker => Str, RuleGroupId => Str])

=head2 ListAllActivatedRulesInRuleGroup([Limit => Int, NextMarker => Str, RuleGroupId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ActivatedRules, passing the object as the first parameter, and the string 'ActivatedRules' as the second parameter 

If not, it will return a a L<Paws::WAF::ListActivatedRulesInRuleGroupResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllByteMatchSets(sub { },[Limit => Int, NextMarker => Str])

=head2 ListAllByteMatchSets([Limit => Int, NextMarker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ByteMatchSets, passing the object as the first parameter, and the string 'ByteMatchSets' as the second parameter 

If not, it will return a a L<Paws::WAF::ListByteMatchSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGeoMatchSets(sub { },[Limit => Int, NextMarker => Str])

=head2 ListAllGeoMatchSets([Limit => Int, NextMarker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GeoMatchSets, passing the object as the first parameter, and the string 'GeoMatchSets' as the second parameter 

If not, it will return a a L<Paws::WAF::ListGeoMatchSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIPSets(sub { },[Limit => Int, NextMarker => Str])

=head2 ListAllIPSets([Limit => Int, NextMarker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IPSets, passing the object as the first parameter, and the string 'IPSets' as the second parameter 

If not, it will return a a L<Paws::WAF::ListIPSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLoggingConfigurations(sub { },[Limit => Int, NextMarker => Str])

=head2 ListAllLoggingConfigurations([Limit => Int, NextMarker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LoggingConfigurations, passing the object as the first parameter, and the string 'LoggingConfigurations' as the second parameter 

If not, it will return a a L<Paws::WAF::ListLoggingConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRateBasedRules(sub { },[Limit => Int, NextMarker => Str])

=head2 ListAllRateBasedRules([Limit => Int, NextMarker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Rules, passing the object as the first parameter, and the string 'Rules' as the second parameter 

If not, it will return a a L<Paws::WAF::ListRateBasedRulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRegexMatchSets(sub { },[Limit => Int, NextMarker => Str])

=head2 ListAllRegexMatchSets([Limit => Int, NextMarker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RegexMatchSets, passing the object as the first parameter, and the string 'RegexMatchSets' as the second parameter 

If not, it will return a a L<Paws::WAF::ListRegexMatchSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRegexPatternSets(sub { },[Limit => Int, NextMarker => Str])

=head2 ListAllRegexPatternSets([Limit => Int, NextMarker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RegexPatternSets, passing the object as the first parameter, and the string 'RegexPatternSets' as the second parameter 

If not, it will return a a L<Paws::WAF::ListRegexPatternSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRuleGroups(sub { },[Limit => Int, NextMarker => Str])

=head2 ListAllRuleGroups([Limit => Int, NextMarker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RuleGroups, passing the object as the first parameter, and the string 'RuleGroups' as the second parameter 

If not, it will return a a L<Paws::WAF::ListRuleGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRules(sub { },[Limit => Int, NextMarker => Str])

=head2 ListAllRules([Limit => Int, NextMarker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Rules, passing the object as the first parameter, and the string 'Rules' as the second parameter 

If not, it will return a a L<Paws::WAF::ListRulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSizeConstraintSets(sub { },[Limit => Int, NextMarker => Str])

=head2 ListAllSizeConstraintSets([Limit => Int, NextMarker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SizeConstraintSets, passing the object as the first parameter, and the string 'SizeConstraintSets' as the second parameter 

If not, it will return a a L<Paws::WAF::ListSizeConstraintSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSqlInjectionMatchSets(sub { },[Limit => Int, NextMarker => Str])

=head2 ListAllSqlInjectionMatchSets([Limit => Int, NextMarker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SqlInjectionMatchSets, passing the object as the first parameter, and the string 'SqlInjectionMatchSets' as the second parameter 

If not, it will return a a L<Paws::WAF::ListSqlInjectionMatchSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSubscribedRuleGroups(sub { },[Limit => Int, NextMarker => Str])

=head2 ListAllSubscribedRuleGroups([Limit => Int, NextMarker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RuleGroups, passing the object as the first parameter, and the string 'RuleGroups' as the second parameter 

If not, it will return a a L<Paws::WAF::ListSubscribedRuleGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWebACLs(sub { },[Limit => Int, NextMarker => Str])

=head2 ListAllWebACLs([Limit => Int, NextMarker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - WebACLs, passing the object as the first parameter, and the string 'WebACLs' as the second parameter 

If not, it will return a a L<Paws::WAF::ListWebACLsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllXssMatchSets(sub { },[Limit => Int, NextMarker => Str])

=head2 ListAllXssMatchSets([Limit => Int, NextMarker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - XssMatchSets, passing the object as the first parameter, and the string 'XssMatchSets' as the second parameter 

If not, it will return a a L<Paws::WAF::ListXssMatchSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

