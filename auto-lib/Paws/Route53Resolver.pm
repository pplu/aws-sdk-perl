package Paws::Route53Resolver;
  use Moose;
  sub service { 'route53resolver' }
  sub signing_name { 'route53resolver' }
  sub version { '2018-04-01' }
  sub target_prefix { 'Route53Resolver' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateFirewallRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::AssociateFirewallRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateResolverEndpointIpAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::AssociateResolverEndpointIpAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateResolverQueryLogConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::AssociateResolverQueryLogConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateResolverRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::AssociateResolverRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFirewallDomainList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::CreateFirewallDomainList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFirewallRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::CreateFirewallRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFirewallRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::CreateFirewallRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResolverEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::CreateResolverEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResolverQueryLogConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::CreateResolverQueryLogConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResolverRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::CreateResolverRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFirewallDomainList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::DeleteFirewallDomainList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFirewallRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::DeleteFirewallRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFirewallRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::DeleteFirewallRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResolverEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::DeleteResolverEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResolverQueryLogConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::DeleteResolverQueryLogConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResolverRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::DeleteResolverRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateFirewallRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::DisassociateFirewallRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateResolverEndpointIpAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::DisassociateResolverEndpointIpAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateResolverQueryLogConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::DisassociateResolverQueryLogConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateResolverRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::DisassociateResolverRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFirewallConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::GetFirewallConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFirewallDomainList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::GetFirewallDomainList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFirewallRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::GetFirewallRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFirewallRuleGroupAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::GetFirewallRuleGroupAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFirewallRuleGroupPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::GetFirewallRuleGroupPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResolverDnssecConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::GetResolverDnssecConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResolverEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::GetResolverEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResolverQueryLogConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::GetResolverQueryLogConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResolverQueryLogConfigAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::GetResolverQueryLogConfigAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResolverQueryLogConfigPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::GetResolverQueryLogConfigPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResolverRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::GetResolverRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResolverRuleAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::GetResolverRuleAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResolverRulePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::GetResolverRulePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportFirewallDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::ImportFirewallDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFirewallConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::ListFirewallConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFirewallDomainLists {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::ListFirewallDomainLists', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFirewallDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::ListFirewallDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFirewallRuleGroupAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::ListFirewallRuleGroupAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFirewallRuleGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::ListFirewallRuleGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFirewallRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::ListFirewallRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResolverDnssecConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::ListResolverDnssecConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResolverEndpointIpAddresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::ListResolverEndpointIpAddresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResolverEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::ListResolverEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResolverQueryLogConfigAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::ListResolverQueryLogConfigAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResolverQueryLogConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::ListResolverQueryLogConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResolverRuleAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::ListResolverRuleAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResolverRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::ListResolverRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutFirewallRuleGroupPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::PutFirewallRuleGroupPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResolverQueryLogConfigPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::PutResolverQueryLogConfigPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResolverRulePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::PutResolverRulePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFirewallConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::UpdateFirewallConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFirewallDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::UpdateFirewallDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFirewallRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::UpdateFirewallRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFirewallRuleGroupAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::UpdateFirewallRuleGroupAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResolverDnssecConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::UpdateResolverDnssecConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResolverEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::UpdateResolverEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResolverRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::UpdateResolverRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllFirewallConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFirewallConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFirewallConfigs(@_, NextToken => $next_result->NextToken);
        push @{ $result->FirewallConfigs }, @{ $next_result->FirewallConfigs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FirewallConfigs') foreach (@{ $result->FirewallConfigs });
        $result = $self->ListFirewallConfigs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FirewallConfigs') foreach (@{ $result->FirewallConfigs });
    }

    return undef
  }
  sub ListAllFirewallDomainLists {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFirewallDomainLists(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFirewallDomainLists(@_, NextToken => $next_result->NextToken);
        push @{ $result->FirewallDomainLists }, @{ $next_result->FirewallDomainLists };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FirewallDomainLists') foreach (@{ $result->FirewallDomainLists });
        $result = $self->ListFirewallDomainLists(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FirewallDomainLists') foreach (@{ $result->FirewallDomainLists });
    }

    return undef
  }
  sub ListAllFirewallDomains {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFirewallDomains(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFirewallDomains(@_, NextToken => $next_result->NextToken);
        push @{ $result->Domains }, @{ $next_result->Domains };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Domains') foreach (@{ $result->Domains });
        $result = $self->ListFirewallDomains(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Domains') foreach (@{ $result->Domains });
    }

    return undef
  }
  sub ListAllFirewallRuleGroupAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFirewallRuleGroupAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFirewallRuleGroupAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->FirewallRuleGroupAssociations }, @{ $next_result->FirewallRuleGroupAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FirewallRuleGroupAssociations') foreach (@{ $result->FirewallRuleGroupAssociations });
        $result = $self->ListFirewallRuleGroupAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FirewallRuleGroupAssociations') foreach (@{ $result->FirewallRuleGroupAssociations });
    }

    return undef
  }
  sub ListAllFirewallRuleGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFirewallRuleGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFirewallRuleGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->FirewallRuleGroups }, @{ $next_result->FirewallRuleGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FirewallRuleGroups') foreach (@{ $result->FirewallRuleGroups });
        $result = $self->ListFirewallRuleGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FirewallRuleGroups') foreach (@{ $result->FirewallRuleGroups });
    }

    return undef
  }
  sub ListAllFirewallRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFirewallRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFirewallRules(@_, NextToken => $next_result->NextToken);
        push @{ $result->FirewallRules }, @{ $next_result->FirewallRules };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FirewallRules') foreach (@{ $result->FirewallRules });
        $result = $self->ListFirewallRules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FirewallRules') foreach (@{ $result->FirewallRules });
    }

    return undef
  }
  sub ListAllResolverDnssecConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResolverDnssecConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResolverDnssecConfigs(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResolverDnssecConfigs }, @{ $next_result->ResolverDnssecConfigs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResolverDnssecConfigs') foreach (@{ $result->ResolverDnssecConfigs });
        $result = $self->ListResolverDnssecConfigs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResolverDnssecConfigs') foreach (@{ $result->ResolverDnssecConfigs });
    }

    return undef
  }
  sub ListAllResolverEndpointIpAddresses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResolverEndpointIpAddresses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResolverEndpointIpAddresses(@_, NextToken => $next_result->NextToken);
        push @{ $result->IpAddresses }, @{ $next_result->IpAddresses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IpAddresses') foreach (@{ $result->IpAddresses });
        $result = $self->ListResolverEndpointIpAddresses(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IpAddresses') foreach (@{ $result->IpAddresses });
    }

    return undef
  }
  sub ListAllResolverEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResolverEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResolverEndpoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResolverEndpoints }, @{ $next_result->ResolverEndpoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResolverEndpoints') foreach (@{ $result->ResolverEndpoints });
        $result = $self->ListResolverEndpoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResolverEndpoints') foreach (@{ $result->ResolverEndpoints });
    }

    return undef
  }
  sub ListAllResolverQueryLogConfigAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResolverQueryLogConfigAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResolverQueryLogConfigAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResolverQueryLogConfigAssociations }, @{ $next_result->ResolverQueryLogConfigAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResolverQueryLogConfigAssociations') foreach (@{ $result->ResolverQueryLogConfigAssociations });
        $result = $self->ListResolverQueryLogConfigAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResolverQueryLogConfigAssociations') foreach (@{ $result->ResolverQueryLogConfigAssociations });
    }

    return undef
  }
  sub ListAllResolverQueryLogConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResolverQueryLogConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResolverQueryLogConfigs(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResolverQueryLogConfigs }, @{ $next_result->ResolverQueryLogConfigs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResolverQueryLogConfigs') foreach (@{ $result->ResolverQueryLogConfigs });
        $result = $self->ListResolverQueryLogConfigs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResolverQueryLogConfigs') foreach (@{ $result->ResolverQueryLogConfigs });
    }

    return undef
  }
  sub ListAllResolverRuleAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResolverRuleAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResolverRuleAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResolverRuleAssociations }, @{ $next_result->ResolverRuleAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResolverRuleAssociations') foreach (@{ $result->ResolverRuleAssociations });
        $result = $self->ListResolverRuleAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResolverRuleAssociations') foreach (@{ $result->ResolverRuleAssociations });
    }

    return undef
  }
  sub ListAllResolverRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResolverRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResolverRules(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResolverRules }, @{ $next_result->ResolverRules };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResolverRules') foreach (@{ $result->ResolverRules });
        $result = $self->ListResolverRules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResolverRules') foreach (@{ $result->ResolverRules });
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


  sub operations { qw/AssociateFirewallRuleGroup AssociateResolverEndpointIpAddress AssociateResolverQueryLogConfig AssociateResolverRule CreateFirewallDomainList CreateFirewallRule CreateFirewallRuleGroup CreateResolverEndpoint CreateResolverQueryLogConfig CreateResolverRule DeleteFirewallDomainList DeleteFirewallRule DeleteFirewallRuleGroup DeleteResolverEndpoint DeleteResolverQueryLogConfig DeleteResolverRule DisassociateFirewallRuleGroup DisassociateResolverEndpointIpAddress DisassociateResolverQueryLogConfig DisassociateResolverRule GetFirewallConfig GetFirewallDomainList GetFirewallRuleGroup GetFirewallRuleGroupAssociation GetFirewallRuleGroupPolicy GetResolverDnssecConfig GetResolverEndpoint GetResolverQueryLogConfig GetResolverQueryLogConfigAssociation GetResolverQueryLogConfigPolicy GetResolverRule GetResolverRuleAssociation GetResolverRulePolicy ImportFirewallDomains ListFirewallConfigs ListFirewallDomainLists ListFirewallDomains ListFirewallRuleGroupAssociations ListFirewallRuleGroups ListFirewallRules ListResolverDnssecConfigs ListResolverEndpointIpAddresses ListResolverEndpoints ListResolverQueryLogConfigAssociations ListResolverQueryLogConfigs ListResolverRuleAssociations ListResolverRules ListTagsForResource PutFirewallRuleGroupPolicy PutResolverQueryLogConfigPolicy PutResolverRulePolicy TagResource UntagResource UpdateFirewallConfig UpdateFirewallDomains UpdateFirewallRule UpdateFirewallRuleGroupAssociation UpdateResolverDnssecConfig UpdateResolverEndpoint UpdateResolverRule / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver - Perl Interface to AWS Amazon Route 53 Resolver

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Route53Resolver');
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

When you create a VPC using Amazon VPC, you automatically get DNS
resolution within the VPC from Route 53 Resolver. By default, Resolver
answers DNS queries for VPC domain names such as domain names for EC2
instances or ELB load balancers. Resolver performs recursive lookups
against public name servers for all other domain names.

You can also configure DNS resolution between your VPC and your network
over a Direct Connect or VPN connection:

B<Forward DNS queries from resolvers on your network to Route 53
Resolver>

DNS resolvers on your network can forward DNS queries to Resolver in a
specified VPC. This allows your DNS resolvers to easily resolve domain
names for AWS resources such as EC2 instances or records in a Route 53
private hosted zone. For more information, see How DNS Resolvers on
Your Network Forward DNS Queries to Route 53 Resolver
(https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver.html#resolver-overview-forward-network-to-vpc)
in the I<Amazon Route 53 Developer Guide>.

B<Conditionally forward queries from a VPC to resolvers on your
network>

You can configure Resolver to forward queries that it receives from EC2
instances in your VPCs to DNS resolvers on your network. To forward
selected queries, you create Resolver rules that specify the domain
names for the DNS queries that you want to forward (such as
example.com), and the IP addresses of the DNS resolvers on your network
that you want to forward the queries to. If a query matches multiple
rules (example.com, acme.example.com), Resolver chooses the rule with
the most specific match (acme.example.com) and forwards the query to
the IP addresses that you specified in that rule. For more information,
see How Route 53 Resolver Forwards DNS Queries from Your VPCs to Your
Network
(https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver.html#resolver-overview-forward-vpc-to-network)
in the I<Amazon Route 53 Developer Guide>.

Like Amazon VPC, Resolver is regional. In each region where you have
VPCs, you can choose whether to forward queries from your VPCs to your
network (outbound queries), from your network to your VPCs (inbound
queries), or both.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01>


=head1 METHODS

=head2 AssociateFirewallRuleGroup

=over

=item CreatorRequestId => Str

=item FirewallRuleGroupId => Str

=item Name => Str

=item Priority => Int

=item VpcId => Str

=item [MutationProtection => Str]

=item [Tags => ArrayRef[L<Paws::Route53Resolver::Tag>]]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::AssociateFirewallRuleGroup>

Returns: a L<Paws::Route53Resolver::AssociateFirewallRuleGroupResponse> instance

Associates a FirewallRuleGroup with a VPC, to provide DNS filtering for
the VPC.


=head2 AssociateResolverEndpointIpAddress

=over

=item IpAddress => L<Paws::Route53Resolver::IpAddressUpdate>

=item ResolverEndpointId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::AssociateResolverEndpointIpAddress>

Returns: a L<Paws::Route53Resolver::AssociateResolverEndpointIpAddressResponse> instance

Adds IP addresses to an inbound or an outbound Resolver endpoint. If
you want to add more than one IP address, submit one
C<AssociateResolverEndpointIpAddress> request for each IP address.

To remove an IP address from an endpoint, see
DisassociateResolverEndpointIpAddress
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverEndpointIpAddress.html).


=head2 AssociateResolverQueryLogConfig

=over

=item ResolverQueryLogConfigId => Str

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::AssociateResolverQueryLogConfig>

Returns: a L<Paws::Route53Resolver::AssociateResolverQueryLogConfigResponse> instance

Associates an Amazon VPC with a specified query logging configuration.
Route 53 Resolver logs DNS queries that originate in all of the Amazon
VPCs that are associated with a specified query logging configuration.
To associate more than one VPC with a configuration, submit one
C<AssociateResolverQueryLogConfig> request for each VPC.

The VPCs that you associate with a query logging configuration must be
in the same Region as the configuration.

To remove a VPC from a query logging configuration, see
DisassociateResolverQueryLogConfig
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html).


=head2 AssociateResolverRule

=over

=item ResolverRuleId => Str

=item VPCId => Str

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::AssociateResolverRule>

Returns: a L<Paws::Route53Resolver::AssociateResolverRuleResponse> instance

Associates a Resolver rule with a VPC. When you associate a rule with a
VPC, Resolver forwards all DNS queries for the domain name that is
specified in the rule and that originate in the VPC. The queries are
forwarded to the IP addresses for the DNS resolvers that are specified
in the rule. For more information about rules, see CreateResolverRule
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverRule.html).


=head2 CreateFirewallDomainList

=over

=item CreatorRequestId => Str

=item Name => Str

=item [Tags => ArrayRef[L<Paws::Route53Resolver::Tag>]]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::CreateFirewallDomainList>

Returns: a L<Paws::Route53Resolver::CreateFirewallDomainListResponse> instance

Creates an empty firewall domain list for use in DNS Firewall rules.
You can populate the domains for the new list with a file, using
ImportFirewallDomains, or with domain strings, using
UpdateFirewallDomains.


=head2 CreateFirewallRule

=over

=item Action => Str

=item CreatorRequestId => Str

=item FirewallDomainListId => Str

=item FirewallRuleGroupId => Str

=item Name => Str

=item Priority => Int

=item [BlockOverrideDnsType => Str]

=item [BlockOverrideDomain => Str]

=item [BlockOverrideTtl => Int]

=item [BlockResponse => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::CreateFirewallRule>

Returns: a L<Paws::Route53Resolver::CreateFirewallRuleResponse> instance

Creates a single DNS Firewall rule in the specified rule group, using
the specified domain list.


=head2 CreateFirewallRuleGroup

=over

=item CreatorRequestId => Str

=item Name => Str

=item [Tags => ArrayRef[L<Paws::Route53Resolver::Tag>]]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::CreateFirewallRuleGroup>

Returns: a L<Paws::Route53Resolver::CreateFirewallRuleGroupResponse> instance

Creates an empty DNS Firewall rule group for filtering DNS network
traffic in a VPC. You can add rules to the new rule group by calling
CreateFirewallRule.


=head2 CreateResolverEndpoint

=over

=item CreatorRequestId => Str

=item Direction => Str

=item IpAddresses => ArrayRef[L<Paws::Route53Resolver::IpAddressRequest>]

=item SecurityGroupIds => ArrayRef[Str|Undef]

=item [Name => Str]

=item [Tags => ArrayRef[L<Paws::Route53Resolver::Tag>]]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::CreateResolverEndpoint>

Returns: a L<Paws::Route53Resolver::CreateResolverEndpointResponse> instance

Creates a Resolver endpoint. There are two types of Resolver endpoints,
inbound and outbound:

=over

=item *

An I<inbound Resolver endpoint> forwards DNS queries to the DNS service
for a VPC from your network.

=item *

An I<outbound Resolver endpoint> forwards DNS queries from the DNS
service for a VPC to your network.

=back



=head2 CreateResolverQueryLogConfig

=over

=item CreatorRequestId => Str

=item DestinationArn => Str

=item Name => Str

=item [Tags => ArrayRef[L<Paws::Route53Resolver::Tag>]]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::CreateResolverQueryLogConfig>

Returns: a L<Paws::Route53Resolver::CreateResolverQueryLogConfigResponse> instance

Creates a Resolver query logging configuration, which defines where you
want Resolver to save DNS query logs that originate in your VPCs.
Resolver can log queries only for VPCs that are in the same Region as
the query logging configuration.

To specify which VPCs you want to log queries for, you use
C<AssociateResolverQueryLogConfig>. For more information, see
AssociateResolverQueryLogConfig
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverQueryLogConfig.html).

You can optionally use AWS Resource Access Manager (AWS RAM) to share a
query logging configuration with other AWS accounts. The other accounts
can then associate VPCs with the configuration. The query logs that
Resolver creates for a configuration include all DNS queries that
originate in all VPCs that are associated with the configuration.


=head2 CreateResolverRule

=over

=item CreatorRequestId => Str

=item DomainName => Str

=item RuleType => Str

=item [Name => Str]

=item [ResolverEndpointId => Str]

=item [Tags => ArrayRef[L<Paws::Route53Resolver::Tag>]]

=item [TargetIps => ArrayRef[L<Paws::Route53Resolver::TargetAddress>]]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::CreateResolverRule>

Returns: a L<Paws::Route53Resolver::CreateResolverRuleResponse> instance

For DNS queries that originate in your VPCs, specifies which Resolver
endpoint the queries pass through, one domain name that you want to
forward to your network, and the IP addresses of the DNS resolvers in
your network.


=head2 DeleteFirewallDomainList

=over

=item FirewallDomainListId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::DeleteFirewallDomainList>

Returns: a L<Paws::Route53Resolver::DeleteFirewallDomainListResponse> instance

Deletes the specified domain list.


=head2 DeleteFirewallRule

=over

=item FirewallDomainListId => Str

=item FirewallRuleGroupId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::DeleteFirewallRule>

Returns: a L<Paws::Route53Resolver::DeleteFirewallRuleResponse> instance

Deletes the specified firewall rule.


=head2 DeleteFirewallRuleGroup

=over

=item FirewallRuleGroupId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::DeleteFirewallRuleGroup>

Returns: a L<Paws::Route53Resolver::DeleteFirewallRuleGroupResponse> instance

Deletes the specified firewall rule group.


=head2 DeleteResolverEndpoint

=over

=item ResolverEndpointId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::DeleteResolverEndpoint>

Returns: a L<Paws::Route53Resolver::DeleteResolverEndpointResponse> instance

Deletes a Resolver endpoint. The effect of deleting a Resolver endpoint
depends on whether it's an inbound or an outbound Resolver endpoint:

=over

=item *

B<Inbound>: DNS queries from your network are no longer routed to the
DNS service for the specified VPC.

=item *

B<Outbound>: DNS queries from a VPC are no longer routed to your
network.

=back



=head2 DeleteResolverQueryLogConfig

=over

=item ResolverQueryLogConfigId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::DeleteResolverQueryLogConfig>

Returns: a L<Paws::Route53Resolver::DeleteResolverQueryLogConfigResponse> instance

Deletes a query logging configuration. When you delete a configuration,
Resolver stops logging DNS queries for all of the Amazon VPCs that are
associated with the configuration. This also applies if the query
logging configuration is shared with other AWS accounts, and the other
accounts have associated VPCs with the shared configuration.

Before you can delete a query logging configuration, you must first
disassociate all VPCs from the configuration. See
DisassociateResolverQueryLogConfig
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html).

If you used Resource Access Manager (RAM) to share a query logging
configuration with other accounts, you must stop sharing the
configuration before you can delete a configuration. The accounts that
you shared the configuration with can first disassociate VPCs that they
associated with the configuration, but that's not necessary. If you
stop sharing the configuration, those VPCs are automatically
disassociated from the configuration.


=head2 DeleteResolverRule

=over

=item ResolverRuleId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::DeleteResolverRule>

Returns: a L<Paws::Route53Resolver::DeleteResolverRuleResponse> instance

Deletes a Resolver rule. Before you can delete a Resolver rule, you
must disassociate it from all the VPCs that you associated the Resolver
rule with. For more information, see DisassociateResolverRule
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverRule.html).


=head2 DisassociateFirewallRuleGroup

=over

=item FirewallRuleGroupAssociationId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::DisassociateFirewallRuleGroup>

Returns: a L<Paws::Route53Resolver::DisassociateFirewallRuleGroupResponse> instance

Disassociates a FirewallRuleGroup from a VPC, to remove DNS filtering
from the VPC.


=head2 DisassociateResolverEndpointIpAddress

=over

=item IpAddress => L<Paws::Route53Resolver::IpAddressUpdate>

=item ResolverEndpointId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::DisassociateResolverEndpointIpAddress>

Returns: a L<Paws::Route53Resolver::DisassociateResolverEndpointIpAddressResponse> instance

Removes IP addresses from an inbound or an outbound Resolver endpoint.
If you want to remove more than one IP address, submit one
C<DisassociateResolverEndpointIpAddress> request for each IP address.

To add an IP address to an endpoint, see
AssociateResolverEndpointIpAddress
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverEndpointIpAddress.html).


=head2 DisassociateResolverQueryLogConfig

=over

=item ResolverQueryLogConfigId => Str

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::DisassociateResolverQueryLogConfig>

Returns: a L<Paws::Route53Resolver::DisassociateResolverQueryLogConfigResponse> instance

Disassociates a VPC from a query logging configuration.

Before you can delete a query logging configuration, you must first
disassociate all VPCs from the configuration. If you used Resource
Access Manager (RAM) to share a query logging configuration with other
accounts, VPCs can be disassociated from the configuration in the
following ways:

=over

=item *

The accounts that you shared the configuration with can disassociate
VPCs from the configuration.

=item *

You can stop sharing the configuration.

=back



=head2 DisassociateResolverRule

=over

=item ResolverRuleId => Str

=item VPCId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::DisassociateResolverRule>

Returns: a L<Paws::Route53Resolver::DisassociateResolverRuleResponse> instance

Removes the association between a specified Resolver rule and a
specified VPC.

If you disassociate a Resolver rule from a VPC, Resolver stops
forwarding DNS queries for the domain name that you specified in the
Resolver rule.


=head2 GetFirewallConfig

=over

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::GetFirewallConfig>

Returns: a L<Paws::Route53Resolver::GetFirewallConfigResponse> instance

Retrieves the configuration of the firewall behavior provided by DNS
Firewall for a single Amazon virtual private cloud (VPC).


=head2 GetFirewallDomainList

=over

=item FirewallDomainListId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::GetFirewallDomainList>

Returns: a L<Paws::Route53Resolver::GetFirewallDomainListResponse> instance

Retrieves the specified firewall domain list.


=head2 GetFirewallRuleGroup

=over

=item FirewallRuleGroupId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::GetFirewallRuleGroup>

Returns: a L<Paws::Route53Resolver::GetFirewallRuleGroupResponse> instance

Retrieves the specified firewall rule group.


=head2 GetFirewallRuleGroupAssociation

=over

=item FirewallRuleGroupAssociationId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::GetFirewallRuleGroupAssociation>

Returns: a L<Paws::Route53Resolver::GetFirewallRuleGroupAssociationResponse> instance

Retrieves a firewall rule group association, which enables DNS
filtering for a VPC with one rule group. A VPC can have more than one
firewall rule group association, and a rule group can be associated
with more than one VPC.


=head2 GetFirewallRuleGroupPolicy

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::GetFirewallRuleGroupPolicy>

Returns: a L<Paws::Route53Resolver::GetFirewallRuleGroupPolicyResponse> instance

Returns the AWS Identity and Access Management (AWS IAM) policy for
sharing the specified rule group. You can use the policy to share the
rule group using AWS Resource Access Manager (RAM).


=head2 GetResolverDnssecConfig

=over

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::GetResolverDnssecConfig>

Returns: a L<Paws::Route53Resolver::GetResolverDnssecConfigResponse> instance

Gets DNSSEC validation information for a specified resource.


=head2 GetResolverEndpoint

=over

=item ResolverEndpointId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::GetResolverEndpoint>

Returns: a L<Paws::Route53Resolver::GetResolverEndpointResponse> instance

Gets information about a specified Resolver endpoint, such as whether
it's an inbound or an outbound Resolver endpoint, and the current
status of the endpoint.


=head2 GetResolverQueryLogConfig

=over

=item ResolverQueryLogConfigId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::GetResolverQueryLogConfig>

Returns: a L<Paws::Route53Resolver::GetResolverQueryLogConfigResponse> instance

Gets information about a specified Resolver query logging
configuration, such as the number of VPCs that the configuration is
logging queries for and the location that logs are sent to.


=head2 GetResolverQueryLogConfigAssociation

=over

=item ResolverQueryLogConfigAssociationId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::GetResolverQueryLogConfigAssociation>

Returns: a L<Paws::Route53Resolver::GetResolverQueryLogConfigAssociationResponse> instance

Gets information about a specified association between a Resolver query
logging configuration and an Amazon VPC. When you associate a VPC with
a query logging configuration, Resolver logs DNS queries that originate
in that VPC.


=head2 GetResolverQueryLogConfigPolicy

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::GetResolverQueryLogConfigPolicy>

Returns: a L<Paws::Route53Resolver::GetResolverQueryLogConfigPolicyResponse> instance

Gets information about a query logging policy. A query logging policy
specifies the Resolver query logging operations and resources that you
want to allow another AWS account to be able to use.


=head2 GetResolverRule

=over

=item ResolverRuleId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::GetResolverRule>

Returns: a L<Paws::Route53Resolver::GetResolverRuleResponse> instance

Gets information about a specified Resolver rule, such as the domain
name that the rule forwards DNS queries for and the ID of the outbound
Resolver endpoint that the rule is associated with.


=head2 GetResolverRuleAssociation

=over

=item ResolverRuleAssociationId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::GetResolverRuleAssociation>

Returns: a L<Paws::Route53Resolver::GetResolverRuleAssociationResponse> instance

Gets information about an association between a specified Resolver rule
and a VPC. You associate a Resolver rule and a VPC using
AssociateResolverRule
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverRule.html).


=head2 GetResolverRulePolicy

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::GetResolverRulePolicy>

Returns: a L<Paws::Route53Resolver::GetResolverRulePolicyResponse> instance

Gets information about the Resolver rule policy for a specified rule. A
Resolver rule policy includes the rule that you want to share with
another account, the account that you want to share the rule with, and
the Resolver operations that you want to allow the account to use.


=head2 ImportFirewallDomains

=over

=item DomainFileUrl => Str

=item FirewallDomainListId => Str

=item Operation => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::ImportFirewallDomains>

Returns: a L<Paws::Route53Resolver::ImportFirewallDomainsResponse> instance

Imports domain names from a file into a domain list, for use in a DNS
firewall rule group.

Each domain specification in your domain list must satisfy the
following requirements:

=over

=item *

It can optionally start with C<*> (asterisk).

=item *

With the exception of the optional starting asterisk, it must only
contain the following characters: C<A-Z>, C<a-z>, C<0-9>, C<->
(hyphen).

=item *

It must be from 1-255 characters in length.

=back



=head2 ListFirewallConfigs

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::ListFirewallConfigs>

Returns: a L<Paws::Route53Resolver::ListFirewallConfigsResponse> instance

Retrieves the firewall configurations that you have defined. DNS
Firewall uses the configurations to manage firewall behavior for your
VPCs.

A single call might return only a partial list of the configurations.
For information, see C<MaxResults>.


=head2 ListFirewallDomainLists

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::ListFirewallDomainLists>

Returns: a L<Paws::Route53Resolver::ListFirewallDomainListsResponse> instance

Retrieves the firewall domain lists that you have defined. For each
firewall domain list, you can retrieve the domains that are defined for
a list by calling ListFirewallDomains.

A single call to this list operation might return only a partial list
of the domain lists. For information, see C<MaxResults>.


=head2 ListFirewallDomains

=over

=item FirewallDomainListId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::ListFirewallDomains>

Returns: a L<Paws::Route53Resolver::ListFirewallDomainsResponse> instance

Retrieves the domains that you have defined for the specified firewall
domain list.

A single call might return only a partial list of the domains. For
information, see C<MaxResults>.


=head2 ListFirewallRuleGroupAssociations

=over

=item [FirewallRuleGroupId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Priority => Int]

=item [Status => Str]

=item [VpcId => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::ListFirewallRuleGroupAssociations>

Returns: a L<Paws::Route53Resolver::ListFirewallRuleGroupAssociationsResponse> instance

Retrieves the firewall rule group associations that you have defined.
Each association enables DNS filtering for a VPC with one rule group.

A single call might return only a partial list of the associations. For
information, see C<MaxResults>.


=head2 ListFirewallRuleGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::ListFirewallRuleGroups>

Returns: a L<Paws::Route53Resolver::ListFirewallRuleGroupsResponse> instance

Retrieves the minimal high-level information for the rule groups that
you have defined.

A single call might return only a partial list of the rule groups. For
information, see C<MaxResults>.


=head2 ListFirewallRules

=over

=item FirewallRuleGroupId => Str

=item [Action => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Priority => Int]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::ListFirewallRules>

Returns: a L<Paws::Route53Resolver::ListFirewallRulesResponse> instance

Retrieves the firewall rules that you have defined for the specified
firewall rule group. DNS Firewall uses the rules in a rule group to
filter DNS network traffic for a VPC.

A single call might return only a partial list of the rules. For
information, see C<MaxResults>.


=head2 ListResolverDnssecConfigs

=over

=item [Filters => ArrayRef[L<Paws::Route53Resolver::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::ListResolverDnssecConfigs>

Returns: a L<Paws::Route53Resolver::ListResolverDnssecConfigsResponse> instance

Lists the configurations for DNSSEC validation that are associated with
the current AWS account.


=head2 ListResolverEndpointIpAddresses

=over

=item ResolverEndpointId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::ListResolverEndpointIpAddresses>

Returns: a L<Paws::Route53Resolver::ListResolverEndpointIpAddressesResponse> instance

Gets the IP addresses for a specified Resolver endpoint.


=head2 ListResolverEndpoints

=over

=item [Filters => ArrayRef[L<Paws::Route53Resolver::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::ListResolverEndpoints>

Returns: a L<Paws::Route53Resolver::ListResolverEndpointsResponse> instance

Lists all the Resolver endpoints that were created using the current
AWS account.


=head2 ListResolverQueryLogConfigAssociations

=over

=item [Filters => ArrayRef[L<Paws::Route53Resolver::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::ListResolverQueryLogConfigAssociations>

Returns: a L<Paws::Route53Resolver::ListResolverQueryLogConfigAssociationsResponse> instance

Lists information about associations between Amazon VPCs and query
logging configurations.


=head2 ListResolverQueryLogConfigs

=over

=item [Filters => ArrayRef[L<Paws::Route53Resolver::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::ListResolverQueryLogConfigs>

Returns: a L<Paws::Route53Resolver::ListResolverQueryLogConfigsResponse> instance

Lists information about the specified query logging configurations.
Each configuration defines where you want Resolver to save DNS query
logs and specifies the VPCs that you want to log queries for.


=head2 ListResolverRuleAssociations

=over

=item [Filters => ArrayRef[L<Paws::Route53Resolver::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::ListResolverRuleAssociations>

Returns: a L<Paws::Route53Resolver::ListResolverRuleAssociationsResponse> instance

Lists the associations that were created between Resolver rules and
VPCs using the current AWS account.


=head2 ListResolverRules

=over

=item [Filters => ArrayRef[L<Paws::Route53Resolver::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::ListResolverRules>

Returns: a L<Paws::Route53Resolver::ListResolverRulesResponse> instance

Lists the Resolver rules that were created using the current AWS
account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::ListTagsForResource>

Returns: a L<Paws::Route53Resolver::ListTagsForResourceResponse> instance

Lists the tags that you associated with the specified resource.


=head2 PutFirewallRuleGroupPolicy

=over

=item Arn => Str

=item FirewallRuleGroupPolicy => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::PutFirewallRuleGroupPolicy>

Returns: a L<Paws::Route53Resolver::PutFirewallRuleGroupPolicyResponse> instance

Attaches an AWS Identity and Access Management (AWS IAM) policy for
sharing the rule group. You can use the policy to share the rule group
using AWS Resource Access Manager (RAM).


=head2 PutResolverQueryLogConfigPolicy

=over

=item Arn => Str

=item ResolverQueryLogConfigPolicy => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::PutResolverQueryLogConfigPolicy>

Returns: a L<Paws::Route53Resolver::PutResolverQueryLogConfigPolicyResponse> instance

Specifies an AWS account that you want to share a query logging
configuration with, the query logging configuration that you want to
share, and the operations that you want the account to be able to
perform on the configuration.


=head2 PutResolverRulePolicy

=over

=item Arn => Str

=item ResolverRulePolicy => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::PutResolverRulePolicy>

Returns: a L<Paws::Route53Resolver::PutResolverRulePolicyResponse> instance

Specifies an AWS rule that you want to share with another account, the
account that you want to share the rule with, and the operations that
you want the account to be able to perform on the rule.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::Route53Resolver::Tag>]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::TagResource>

Returns: a L<Paws::Route53Resolver::TagResourceResponse> instance

Adds one or more tags to a specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::UntagResource>

Returns: a L<Paws::Route53Resolver::UntagResourceResponse> instance

Removes one or more tags from a specified resource.


=head2 UpdateFirewallConfig

=over

=item FirewallFailOpen => Str

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::UpdateFirewallConfig>

Returns: a L<Paws::Route53Resolver::UpdateFirewallConfigResponse> instance

Updates the configuration of the firewall behavior provided by DNS
Firewall for a single Amazon virtual private cloud (VPC).


=head2 UpdateFirewallDomains

=over

=item Domains => ArrayRef[Str|Undef]

=item FirewallDomainListId => Str

=item Operation => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::UpdateFirewallDomains>

Returns: a L<Paws::Route53Resolver::UpdateFirewallDomainsResponse> instance

Updates the firewall domain list from an array of domain
specifications.


=head2 UpdateFirewallRule

=over

=item FirewallDomainListId => Str

=item FirewallRuleGroupId => Str

=item [Action => Str]

=item [BlockOverrideDnsType => Str]

=item [BlockOverrideDomain => Str]

=item [BlockOverrideTtl => Int]

=item [BlockResponse => Str]

=item [Name => Str]

=item [Priority => Int]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::UpdateFirewallRule>

Returns: a L<Paws::Route53Resolver::UpdateFirewallRuleResponse> instance

Updates the specified firewall rule.


=head2 UpdateFirewallRuleGroupAssociation

=over

=item FirewallRuleGroupAssociationId => Str

=item [MutationProtection => Str]

=item [Name => Str]

=item [Priority => Int]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::UpdateFirewallRuleGroupAssociation>

Returns: a L<Paws::Route53Resolver::UpdateFirewallRuleGroupAssociationResponse> instance

Changes the association of a FirewallRuleGroup with a VPC. The
association enables DNS filtering for the VPC.


=head2 UpdateResolverDnssecConfig

=over

=item ResourceId => Str

=item Validation => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::UpdateResolverDnssecConfig>

Returns: a L<Paws::Route53Resolver::UpdateResolverDnssecConfigResponse> instance

Updates an existing DNSSEC validation configuration. If there is no
existing DNSSEC validation configuration, one is created.


=head2 UpdateResolverEndpoint

=over

=item ResolverEndpointId => Str

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::UpdateResolverEndpoint>

Returns: a L<Paws::Route53Resolver::UpdateResolverEndpointResponse> instance

Updates the name of an inbound or an outbound Resolver endpoint.


=head2 UpdateResolverRule

=over

=item Config => L<Paws::Route53Resolver::ResolverRuleConfig>

=item ResolverRuleId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::UpdateResolverRule>

Returns: a L<Paws::Route53Resolver::UpdateResolverRuleResponse> instance

Updates settings for a specified Resolver rule. C<ResolverRuleId> is
required, and all other parameters are optional. If you don't specify a
parameter, it retains its current value.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllFirewallConfigs(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllFirewallConfigs([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FirewallConfigs, passing the object as the first parameter, and the string 'FirewallConfigs' as the second parameter 

If not, it will return a a L<Paws::Route53Resolver::ListFirewallConfigsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFirewallDomainLists(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllFirewallDomainLists([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FirewallDomainLists, passing the object as the first parameter, and the string 'FirewallDomainLists' as the second parameter 

If not, it will return a a L<Paws::Route53Resolver::ListFirewallDomainListsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFirewallDomains(sub { },FirewallDomainListId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllFirewallDomains(FirewallDomainListId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Domains, passing the object as the first parameter, and the string 'Domains' as the second parameter 

If not, it will return a a L<Paws::Route53Resolver::ListFirewallDomainsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFirewallRuleGroupAssociations(sub { },[FirewallRuleGroupId => Str, MaxResults => Int, NextToken => Str, Priority => Int, Status => Str, VpcId => Str])

=head2 ListAllFirewallRuleGroupAssociations([FirewallRuleGroupId => Str, MaxResults => Int, NextToken => Str, Priority => Int, Status => Str, VpcId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FirewallRuleGroupAssociations, passing the object as the first parameter, and the string 'FirewallRuleGroupAssociations' as the second parameter 

If not, it will return a a L<Paws::Route53Resolver::ListFirewallRuleGroupAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFirewallRuleGroups(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllFirewallRuleGroups([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FirewallRuleGroups, passing the object as the first parameter, and the string 'FirewallRuleGroups' as the second parameter 

If not, it will return a a L<Paws::Route53Resolver::ListFirewallRuleGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFirewallRules(sub { },FirewallRuleGroupId => Str, [Action => Str, MaxResults => Int, NextToken => Str, Priority => Int])

=head2 ListAllFirewallRules(FirewallRuleGroupId => Str, [Action => Str, MaxResults => Int, NextToken => Str, Priority => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FirewallRules, passing the object as the first parameter, and the string 'FirewallRules' as the second parameter 

If not, it will return a a L<Paws::Route53Resolver::ListFirewallRulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResolverDnssecConfigs(sub { },[Filters => ArrayRef[L<Paws::Route53Resolver::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllResolverDnssecConfigs([Filters => ArrayRef[L<Paws::Route53Resolver::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResolverDnssecConfigs, passing the object as the first parameter, and the string 'ResolverDnssecConfigs' as the second parameter 

If not, it will return a a L<Paws::Route53Resolver::ListResolverDnssecConfigsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResolverEndpointIpAddresses(sub { },ResolverEndpointId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllResolverEndpointIpAddresses(ResolverEndpointId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IpAddresses, passing the object as the first parameter, and the string 'IpAddresses' as the second parameter 

If not, it will return a a L<Paws::Route53Resolver::ListResolverEndpointIpAddressesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResolverEndpoints(sub { },[Filters => ArrayRef[L<Paws::Route53Resolver::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllResolverEndpoints([Filters => ArrayRef[L<Paws::Route53Resolver::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResolverEndpoints, passing the object as the first parameter, and the string 'ResolverEndpoints' as the second parameter 

If not, it will return a a L<Paws::Route53Resolver::ListResolverEndpointsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResolverQueryLogConfigAssociations(sub { },[Filters => ArrayRef[L<Paws::Route53Resolver::Filter>], MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllResolverQueryLogConfigAssociations([Filters => ArrayRef[L<Paws::Route53Resolver::Filter>], MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResolverQueryLogConfigAssociations, passing the object as the first parameter, and the string 'ResolverQueryLogConfigAssociations' as the second parameter 

If not, it will return a a L<Paws::Route53Resolver::ListResolverQueryLogConfigAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResolverQueryLogConfigs(sub { },[Filters => ArrayRef[L<Paws::Route53Resolver::Filter>], MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllResolverQueryLogConfigs([Filters => ArrayRef[L<Paws::Route53Resolver::Filter>], MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResolverQueryLogConfigs, passing the object as the first parameter, and the string 'ResolverQueryLogConfigs' as the second parameter 

If not, it will return a a L<Paws::Route53Resolver::ListResolverQueryLogConfigsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResolverRuleAssociations(sub { },[Filters => ArrayRef[L<Paws::Route53Resolver::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllResolverRuleAssociations([Filters => ArrayRef[L<Paws::Route53Resolver::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResolverRuleAssociations, passing the object as the first parameter, and the string 'ResolverRuleAssociations' as the second parameter 

If not, it will return a a L<Paws::Route53Resolver::ListResolverRuleAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResolverRules(sub { },[Filters => ArrayRef[L<Paws::Route53Resolver::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllResolverRules([Filters => ArrayRef[L<Paws::Route53Resolver::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResolverRules, passing the object as the first parameter, and the string 'ResolverRules' as the second parameter 

If not, it will return a a L<Paws::Route53Resolver::ListResolverRulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTagsForResource(ResourceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::Route53Resolver::ListTagsForResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

