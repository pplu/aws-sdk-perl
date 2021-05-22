package Paws::IoTSiteWise;
  use Moose;
  sub service { 'iotsitewise' }
  sub signing_name { 'iotsitewise' }
  sub version { '2019-12-02' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateAssets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::AssociateAssets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchAssociateProjectAssets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::BatchAssociateProjectAssets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDisassociateProjectAssets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::BatchDisassociateProjectAssets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchPutAssetPropertyValue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::BatchPutAssetPropertyValue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::CreateAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAsset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::CreateAsset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssetModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::CreateAssetModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDashboard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::CreateDashboard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::CreateGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePortal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::CreatePortal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::CreateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DeleteAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAsset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DeleteAsset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssetModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DeleteAssetModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDashboard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DeleteDashboard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DeleteGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePortal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DeletePortal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DeleteProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAsset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeAsset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAssetModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeAssetModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAssetProperty {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeAssetProperty', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDashboard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeDashboard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDefaultEncryptionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeDefaultEncryptionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGatewayCapabilityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeGatewayCapabilityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLoggingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeLoggingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePortal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribePortal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DescribeProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateAssets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::DisassociateAssets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssetPropertyAggregates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::GetAssetPropertyAggregates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssetPropertyValue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::GetAssetPropertyValue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssetPropertyValueHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::GetAssetPropertyValueHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInterpolatedAssetPropertyValues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::GetInterpolatedAssetPropertyValues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccessPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListAccessPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssetModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListAssetModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssetRelationships {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListAssetRelationships', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListAssets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssociatedAssets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListAssociatedAssets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDashboards {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListDashboards', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPortals {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListPortals', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProjectAssets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListProjectAssets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListProjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDefaultEncryptionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::PutDefaultEncryptionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutLoggingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::PutLoggingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UpdateAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAsset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UpdateAsset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssetModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UpdateAssetModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssetProperty {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UpdateAssetProperty', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDashboard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UpdateDashboard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UpdateGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGatewayCapabilityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UpdateGatewayCapabilityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePortal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UpdatePortal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSiteWise::UpdateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllAssetPropertyAggregates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetAssetPropertyAggregates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetAssetPropertyAggregates(@_, nextToken => $next_result->nextToken);
        push @{ $result->aggregatedValues }, @{ $next_result->aggregatedValues };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'aggregatedValues') foreach (@{ $result->aggregatedValues });
        $result = $self->GetAssetPropertyAggregates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'aggregatedValues') foreach (@{ $result->aggregatedValues });
    }

    return undef
  }
  sub GetAllAssetPropertyValueHistory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetAssetPropertyValueHistory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetAssetPropertyValueHistory(@_, nextToken => $next_result->nextToken);
        push @{ $result->assetPropertyValueHistory }, @{ $next_result->assetPropertyValueHistory };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assetPropertyValueHistory') foreach (@{ $result->assetPropertyValueHistory });
        $result = $self->GetAssetPropertyValueHistory(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assetPropertyValueHistory') foreach (@{ $result->assetPropertyValueHistory });
    }

    return undef
  }
  sub GetAllInterpolatedAssetPropertyValues {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetInterpolatedAssetPropertyValues(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetInterpolatedAssetPropertyValues(@_, nextToken => $next_result->nextToken);
        push @{ $result->interpolatedAssetPropertyValues }, @{ $next_result->interpolatedAssetPropertyValues };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'interpolatedAssetPropertyValues') foreach (@{ $result->interpolatedAssetPropertyValues });
        $result = $self->GetInterpolatedAssetPropertyValues(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'interpolatedAssetPropertyValues') foreach (@{ $result->interpolatedAssetPropertyValues });
    }

    return undef
  }
  sub ListAllAccessPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccessPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAccessPolicies(@_, nextToken => $next_result->nextToken);
        push @{ $result->accessPolicySummaries }, @{ $next_result->accessPolicySummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'accessPolicySummaries') foreach (@{ $result->accessPolicySummaries });
        $result = $self->ListAccessPolicies(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'accessPolicySummaries') foreach (@{ $result->accessPolicySummaries });
    }

    return undef
  }
  sub ListAllAssetModels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssetModels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssetModels(@_, nextToken => $next_result->nextToken);
        push @{ $result->assetModelSummaries }, @{ $next_result->assetModelSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assetModelSummaries') foreach (@{ $result->assetModelSummaries });
        $result = $self->ListAssetModels(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assetModelSummaries') foreach (@{ $result->assetModelSummaries });
    }

    return undef
  }
  sub ListAllAssetRelationships {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssetRelationships(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssetRelationships(@_, nextToken => $next_result->nextToken);
        push @{ $result->assetRelationshipSummaries }, @{ $next_result->assetRelationshipSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assetRelationshipSummaries') foreach (@{ $result->assetRelationshipSummaries });
        $result = $self->ListAssetRelationships(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assetRelationshipSummaries') foreach (@{ $result->assetRelationshipSummaries });
    }

    return undef
  }
  sub ListAllAssets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssets(@_, nextToken => $next_result->nextToken);
        push @{ $result->assetSummaries }, @{ $next_result->assetSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assetSummaries') foreach (@{ $result->assetSummaries });
        $result = $self->ListAssets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assetSummaries') foreach (@{ $result->assetSummaries });
    }

    return undef
  }
  sub ListAllAssociatedAssets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssociatedAssets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssociatedAssets(@_, nextToken => $next_result->nextToken);
        push @{ $result->assetSummaries }, @{ $next_result->assetSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assetSummaries') foreach (@{ $result->assetSummaries });
        $result = $self->ListAssociatedAssets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assetSummaries') foreach (@{ $result->assetSummaries });
    }

    return undef
  }
  sub ListAllDashboards {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDashboards(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDashboards(@_, nextToken => $next_result->nextToken);
        push @{ $result->dashboardSummaries }, @{ $next_result->dashboardSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'dashboardSummaries') foreach (@{ $result->dashboardSummaries });
        $result = $self->ListDashboards(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'dashboardSummaries') foreach (@{ $result->dashboardSummaries });
    }

    return undef
  }
  sub ListAllGateways {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGateways(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListGateways(@_, nextToken => $next_result->nextToken);
        push @{ $result->gatewaySummaries }, @{ $next_result->gatewaySummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'gatewaySummaries') foreach (@{ $result->gatewaySummaries });
        $result = $self->ListGateways(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'gatewaySummaries') foreach (@{ $result->gatewaySummaries });
    }

    return undef
  }
  sub ListAllPortals {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPortals(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPortals(@_, nextToken => $next_result->nextToken);
        push @{ $result->portalSummaries }, @{ $next_result->portalSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'portalSummaries') foreach (@{ $result->portalSummaries });
        $result = $self->ListPortals(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'portalSummaries') foreach (@{ $result->portalSummaries });
    }

    return undef
  }
  sub ListAllProjectAssets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProjectAssets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListProjectAssets(@_, nextToken => $next_result->nextToken);
        push @{ $result->assetIds }, @{ $next_result->assetIds };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assetIds') foreach (@{ $result->assetIds });
        $result = $self->ListProjectAssets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assetIds') foreach (@{ $result->assetIds });
    }

    return undef
  }
  sub ListAllProjects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProjects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListProjects(@_, nextToken => $next_result->nextToken);
        push @{ $result->projectSummaries }, @{ $next_result->projectSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'projectSummaries') foreach (@{ $result->projectSummaries });
        $result = $self->ListProjects(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'projectSummaries') foreach (@{ $result->projectSummaries });
    }

    return undef
  }


  sub operations { qw/AssociateAssets BatchAssociateProjectAssets BatchDisassociateProjectAssets BatchPutAssetPropertyValue CreateAccessPolicy CreateAsset CreateAssetModel CreateDashboard CreateGateway CreatePortal CreateProject DeleteAccessPolicy DeleteAsset DeleteAssetModel DeleteDashboard DeleteGateway DeletePortal DeleteProject DescribeAccessPolicy DescribeAsset DescribeAssetModel DescribeAssetProperty DescribeDashboard DescribeDefaultEncryptionConfiguration DescribeGateway DescribeGatewayCapabilityConfiguration DescribeLoggingOptions DescribePortal DescribeProject DisassociateAssets GetAssetPropertyAggregates GetAssetPropertyValue GetAssetPropertyValueHistory GetInterpolatedAssetPropertyValues ListAccessPolicies ListAssetModels ListAssetRelationships ListAssets ListAssociatedAssets ListDashboards ListGateways ListPortals ListProjectAssets ListProjects ListTagsForResource PutDefaultEncryptionConfiguration PutLoggingOptions TagResource UntagResource UpdateAccessPolicy UpdateAsset UpdateAssetModel UpdateAssetProperty UpdateDashboard UpdateGateway UpdateGatewayCapabilityConfiguration UpdatePortal UpdateProject / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise - Perl Interface to AWS AWS IoT SiteWise

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoTSiteWise');
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

Welcome to the AWS IoT SiteWise API Reference. AWS IoT SiteWise is an
AWS service that connects Industrial Internet of Things (IIoT)
(https://en.wikipedia.org/wiki/Internet_of_things#Industrial_applications)
devices to the power of the AWS Cloud. For more information, see the
AWS IoT SiteWise User Guide
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/). For
information about AWS IoT SiteWise quotas, see Quotas
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html)
in the I<AWS IoT SiteWise User Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise-2019-12-02>


=head1 METHODS

=head2 AssociateAssets

=over

=item AssetId => Str

=item ChildAssetId => Str

=item HierarchyId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::AssociateAssets>

Returns: nothing

Associates a child asset with the given parent asset through a
hierarchy defined in the parent asset's model. For more information,
see Associating assets
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/add-associated-assets.html)
in the I<AWS IoT SiteWise User Guide>.


=head2 BatchAssociateProjectAssets

=over

=item AssetIds => ArrayRef[Str|Undef]

=item ProjectId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::BatchAssociateProjectAssets>

Returns: a L<Paws::IoTSiteWise::BatchAssociateProjectAssetsResponse> instance

Associates a group (batch) of assets with an AWS IoT SiteWise Monitor
project.


=head2 BatchDisassociateProjectAssets

=over

=item AssetIds => ArrayRef[Str|Undef]

=item ProjectId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::BatchDisassociateProjectAssets>

Returns: a L<Paws::IoTSiteWise::BatchDisassociateProjectAssetsResponse> instance

Disassociates a group (batch) of assets from an AWS IoT SiteWise
Monitor project.


=head2 BatchPutAssetPropertyValue

=over

=item Entries => ArrayRef[L<Paws::IoTSiteWise::PutAssetPropertyValueEntry>]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::BatchPutAssetPropertyValue>

Returns: a L<Paws::IoTSiteWise::BatchPutAssetPropertyValueResponse> instance

Sends a list of asset property values to AWS IoT SiteWise. Each value
is a timestamp-quality-value (TQV) data point. For more information,
see Ingesting data using the API
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ingest-api.html)
in the I<AWS IoT SiteWise User Guide>.

To identify an asset property, you must specify one of the following:

=over

=item *

The C<assetId> and C<propertyId> of an asset property.

=item *

A C<propertyAlias>, which is a data stream alias (for example,
C</company/windfarm/3/turbine/7/temperature>). To define an asset
property's alias, see UpdateAssetProperty
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).

=back

With respect to Unix epoch time, AWS IoT SiteWise accepts only TQVs
that have a timestamp of no more than 7 days in the past and no more
than 10 minutes in the future. AWS IoT SiteWise rejects timestamps
outside of the inclusive range of [-7 days, +10 minutes] and returns a
C<TimestampOutOfRangeException> error.

For each asset property, AWS IoT SiteWise overwrites TQVs with
duplicate timestamps unless the newer TQV has a different quality. For
example, if you store a TQV C<{T1, GOOD, V1}>, then storing C<{T1,
GOOD, V2}> replaces the existing TQV.

AWS IoT SiteWise authorizes access to each
C<BatchPutAssetPropertyValue> entry individually. For more information,
see BatchPutAssetPropertyValue authorization
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-batchputassetpropertyvalue-action)
in the I<AWS IoT SiteWise User Guide>.


=head2 CreateAccessPolicy

=over

=item AccessPolicyIdentity => L<Paws::IoTSiteWise::Identity>

=item AccessPolicyPermission => Str

=item AccessPolicyResource => L<Paws::IoTSiteWise::Resource>

=item [ClientToken => Str]

=item [Tags => L<Paws::IoTSiteWise::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::CreateAccessPolicy>

Returns: a L<Paws::IoTSiteWise::CreateAccessPolicyResponse> instance

Creates an access policy that grants the specified identity (AWS SSO
user, AWS SSO group, or IAM user) access to the specified AWS IoT
SiteWise Monitor portal or project resource.


=head2 CreateAsset

=over

=item AssetModelId => Str

=item AssetName => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::IoTSiteWise::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::CreateAsset>

Returns: a L<Paws::IoTSiteWise::CreateAssetResponse> instance

Creates an asset from an existing asset model. For more information,
see Creating assets
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-assets.html)
in the I<AWS IoT SiteWise User Guide>.


=head2 CreateAssetModel

=over

=item AssetModelName => Str

=item [AssetModelCompositeModels => ArrayRef[L<Paws::IoTSiteWise::AssetModelCompositeModelDefinition>]]

=item [AssetModelDescription => Str]

=item [AssetModelHierarchies => ArrayRef[L<Paws::IoTSiteWise::AssetModelHierarchyDefinition>]]

=item [AssetModelProperties => ArrayRef[L<Paws::IoTSiteWise::AssetModelPropertyDefinition>]]

=item [ClientToken => Str]

=item [Tags => L<Paws::IoTSiteWise::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::CreateAssetModel>

Returns: a L<Paws::IoTSiteWise::CreateAssetModelResponse> instance

Creates an asset model from specified property and hierarchy
definitions. You create assets from asset models. With asset models,
you can easily create assets of the same type that have standardized
definitions. Each asset created from a model inherits the asset model's
property and hierarchy definitions. For more information, see Defining
asset models
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/define-models.html)
in the I<AWS IoT SiteWise User Guide>.


=head2 CreateDashboard

=over

=item DashboardDefinition => Str

=item DashboardName => Str

=item ProjectId => Str

=item [ClientToken => Str]

=item [DashboardDescription => Str]

=item [Tags => L<Paws::IoTSiteWise::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::CreateDashboard>

Returns: a L<Paws::IoTSiteWise::CreateDashboardResponse> instance

Creates a dashboard in an AWS IoT SiteWise Monitor project.


=head2 CreateGateway

=over

=item GatewayName => Str

=item GatewayPlatform => L<Paws::IoTSiteWise::GatewayPlatform>

=item [Tags => L<Paws::IoTSiteWise::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::CreateGateway>

Returns: a L<Paws::IoTSiteWise::CreateGatewayResponse> instance

Creates a gateway, which is a virtual or edge device that delivers
industrial data streams from local servers to AWS IoT SiteWise. For
more information, see Ingesting data using a gateway
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateway-connector.html)
in the I<AWS IoT SiteWise User Guide>.


=head2 CreatePortal

=over

=item PortalContactEmail => Str

=item PortalName => Str

=item RoleArn => Str

=item [ClientToken => Str]

=item [PortalAuthMode => Str]

=item [PortalDescription => Str]

=item [PortalLogoImageFile => L<Paws::IoTSiteWise::ImageFile>]

=item [Tags => L<Paws::IoTSiteWise::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::CreatePortal>

Returns: a L<Paws::IoTSiteWise::CreatePortalResponse> instance

Creates a portal, which can contain projects and dashboards. AWS IoT
SiteWise Monitor uses AWS SSO or IAM to authenticate portal users and
manage user permissions.

Before you can sign in to a new portal, you must add at least one
identity to that portal. For more information, see Adding or removing
portal administrators
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/administer-portals.html#portal-change-admins)
in the I<AWS IoT SiteWise User Guide>.


=head2 CreateProject

=over

=item PortalId => Str

=item ProjectName => Str

=item [ClientToken => Str]

=item [ProjectDescription => Str]

=item [Tags => L<Paws::IoTSiteWise::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::CreateProject>

Returns: a L<Paws::IoTSiteWise::CreateProjectResponse> instance

Creates a project in the specified portal.


=head2 DeleteAccessPolicy

=over

=item AccessPolicyId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DeleteAccessPolicy>

Returns: a L<Paws::IoTSiteWise::DeleteAccessPolicyResponse> instance

Deletes an access policy that grants the specified identity access to
the specified AWS IoT SiteWise Monitor resource. You can use this
operation to revoke access to an AWS IoT SiteWise Monitor resource.


=head2 DeleteAsset

=over

=item AssetId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DeleteAsset>

Returns: a L<Paws::IoTSiteWise::DeleteAssetResponse> instance

Deletes an asset. This action can't be undone. For more information,
see Deleting assets and models
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html)
in the I<AWS IoT SiteWise User Guide>.

You can't delete an asset that's associated to another asset. For more
information, see DisassociateAssets
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DisassociateAssets.html).


=head2 DeleteAssetModel

=over

=item AssetModelId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DeleteAssetModel>

Returns: a L<Paws::IoTSiteWise::DeleteAssetModelResponse> instance

Deletes an asset model. This action can't be undone. You must delete
all assets created from an asset model before you can delete the model.
Also, you can't delete an asset model if a parent asset model exists
that contains a property formula expression that depends on the asset
model that you want to delete. For more information, see Deleting
assets and models
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html)
in the I<AWS IoT SiteWise User Guide>.


=head2 DeleteDashboard

=over

=item DashboardId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DeleteDashboard>

Returns: a L<Paws::IoTSiteWise::DeleteDashboardResponse> instance

Deletes a dashboard from AWS IoT SiteWise Monitor.


=head2 DeleteGateway

=over

=item GatewayId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DeleteGateway>

Returns: nothing

Deletes a gateway from AWS IoT SiteWise. When you delete a gateway,
some of the gateway's files remain in your gateway's file system.


=head2 DeletePortal

=over

=item PortalId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DeletePortal>

Returns: a L<Paws::IoTSiteWise::DeletePortalResponse> instance

Deletes a portal from AWS IoT SiteWise Monitor.


=head2 DeleteProject

=over

=item ProjectId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DeleteProject>

Returns: a L<Paws::IoTSiteWise::DeleteProjectResponse> instance

Deletes a project from AWS IoT SiteWise Monitor.


=head2 DescribeAccessPolicy

=over

=item AccessPolicyId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeAccessPolicy>

Returns: a L<Paws::IoTSiteWise::DescribeAccessPolicyResponse> instance

Describes an access policy, which specifies an identity's access to an
AWS IoT SiteWise Monitor portal or project.


=head2 DescribeAsset

=over

=item AssetId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeAsset>

Returns: a L<Paws::IoTSiteWise::DescribeAssetResponse> instance

Retrieves information about an asset.


=head2 DescribeAssetModel

=over

=item AssetModelId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeAssetModel>

Returns: a L<Paws::IoTSiteWise::DescribeAssetModelResponse> instance

Retrieves information about an asset model.


=head2 DescribeAssetProperty

=over

=item AssetId => Str

=item PropertyId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeAssetProperty>

Returns: a L<Paws::IoTSiteWise::DescribeAssetPropertyResponse> instance

Retrieves information about an asset property.

When you call this operation for an attribute property, this response
includes the default attribute value that you define in the asset
model. If you update the default value in the model, this operation's
response includes the new default value.

This operation doesn't return the value of the asset property. To get
the value of an asset property, use GetAssetPropertyValue
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_GetAssetPropertyValue.html).


=head2 DescribeDashboard

=over

=item DashboardId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeDashboard>

Returns: a L<Paws::IoTSiteWise::DescribeDashboardResponse> instance

Retrieves information about a dashboard.


=head2 DescribeDefaultEncryptionConfiguration






Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeDefaultEncryptionConfiguration>

Returns: a L<Paws::IoTSiteWise::DescribeDefaultEncryptionConfigurationResponse> instance

Retrieves information about the default encryption configuration for
the AWS account in the default or specified region. For more
information, see Key management
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html)
in the I<AWS IoT SiteWise User Guide>.


=head2 DescribeGateway

=over

=item GatewayId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeGateway>

Returns: a L<Paws::IoTSiteWise::DescribeGatewayResponse> instance

Retrieves information about a gateway.


=head2 DescribeGatewayCapabilityConfiguration

=over

=item CapabilityNamespace => Str

=item GatewayId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeGatewayCapabilityConfiguration>

Returns: a L<Paws::IoTSiteWise::DescribeGatewayCapabilityConfigurationResponse> instance

Retrieves information about a gateway capability configuration. Each
gateway capability defines data sources for a gateway. A capability
configuration can contain multiple data source configurations. If you
define OPC-UA sources for a gateway in the AWS IoT SiteWise console,
all of your OPC-UA sources are stored in one capability configuration.
To list all capability configurations for a gateway, use
DescribeGateway
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGateway.html).


=head2 DescribeLoggingOptions






Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeLoggingOptions>

Returns: a L<Paws::IoTSiteWise::DescribeLoggingOptionsResponse> instance

Retrieves the current AWS IoT SiteWise logging options.


=head2 DescribePortal

=over

=item PortalId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribePortal>

Returns: a L<Paws::IoTSiteWise::DescribePortalResponse> instance

Retrieves information about a portal.


=head2 DescribeProject

=over

=item ProjectId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DescribeProject>

Returns: a L<Paws::IoTSiteWise::DescribeProjectResponse> instance

Retrieves information about a project.


=head2 DisassociateAssets

=over

=item AssetId => Str

=item ChildAssetId => Str

=item HierarchyId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::DisassociateAssets>

Returns: nothing

Disassociates a child asset from the given parent asset through a
hierarchy defined in the parent asset's model.


=head2 GetAssetPropertyAggregates

=over

=item AggregateTypes => ArrayRef[Str|Undef]

=item EndDate => Str

=item Resolution => Str

=item StartDate => Str

=item [AssetId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PropertyAlias => Str]

=item [PropertyId => Str]

=item [Qualities => ArrayRef[Str|Undef]]

=item [TimeOrdering => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::GetAssetPropertyAggregates>

Returns: a L<Paws::IoTSiteWise::GetAssetPropertyAggregatesResponse> instance

Gets aggregated values for an asset property. For more information, see
Querying aggregates
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#aggregates)
in the I<AWS IoT SiteWise User Guide>.

To identify an asset property, you must specify one of the following:

=over

=item *

The C<assetId> and C<propertyId> of an asset property.

=item *

A C<propertyAlias>, which is a data stream alias (for example,
C</company/windfarm/3/turbine/7/temperature>). To define an asset
property's alias, see UpdateAssetProperty
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).

=back



=head2 GetAssetPropertyValue

=over

=item [AssetId => Str]

=item [PropertyAlias => Str]

=item [PropertyId => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::GetAssetPropertyValue>

Returns: a L<Paws::IoTSiteWise::GetAssetPropertyValueResponse> instance

Gets an asset property's current value. For more information, see
Querying current values
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#current-values)
in the I<AWS IoT SiteWise User Guide>.

To identify an asset property, you must specify one of the following:

=over

=item *

The C<assetId> and C<propertyId> of an asset property.

=item *

A C<propertyAlias>, which is a data stream alias (for example,
C</company/windfarm/3/turbine/7/temperature>). To define an asset
property's alias, see UpdateAssetProperty
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).

=back



=head2 GetAssetPropertyValueHistory

=over

=item [AssetId => Str]

=item [EndDate => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PropertyAlias => Str]

=item [PropertyId => Str]

=item [Qualities => ArrayRef[Str|Undef]]

=item [StartDate => Str]

=item [TimeOrdering => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::GetAssetPropertyValueHistory>

Returns: a L<Paws::IoTSiteWise::GetAssetPropertyValueHistoryResponse> instance

Gets the history of an asset property's values. For more information,
see Querying historical values
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#historical-values)
in the I<AWS IoT SiteWise User Guide>.

To identify an asset property, you must specify one of the following:

=over

=item *

The C<assetId> and C<propertyId> of an asset property.

=item *

A C<propertyAlias>, which is a data stream alias (for example,
C</company/windfarm/3/turbine/7/temperature>). To define an asset
property's alias, see UpdateAssetProperty
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).

=back



=head2 GetInterpolatedAssetPropertyValues

=over

=item EndTimeInSeconds => Int

=item IntervalInSeconds => Int

=item Quality => Str

=item StartTimeInSeconds => Int

=item Type => Str

=item [AssetId => Str]

=item [EndTimeOffsetInNanos => Int]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PropertyAlias => Str]

=item [PropertyId => Str]

=item [StartTimeOffsetInNanos => Int]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::GetInterpolatedAssetPropertyValues>

Returns: a L<Paws::IoTSiteWise::GetInterpolatedAssetPropertyValuesResponse> instance

Get interpolated values for an asset property for a specified time
interval, during a period of time. For example, you can use the this
operation to return the interpolated temperature values for a wind
turbine every 24 hours over a duration of 7 days.

This API isn't available in China (Beijing).

To identify an asset property, you must specify one of the following:

=over

=item *

The C<assetId> and C<propertyId> of an asset property.

=item *

A C<propertyAlias>, which is a data stream alias (for example,
C</company/windfarm/3/turbine/7/temperature>). To define an asset
property's alias, see UpdateAssetProperty
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).

=back



=head2 ListAccessPolicies

=over

=item [IamArn => Str]

=item [IdentityId => Str]

=item [IdentityType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceId => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListAccessPolicies>

Returns: a L<Paws::IoTSiteWise::ListAccessPoliciesResponse> instance

Retrieves a paginated list of access policies for an identity (an AWS
SSO user, an AWS SSO group, or an IAM user) or an AWS IoT SiteWise
Monitor resource (a portal or project).


=head2 ListAssetModels

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListAssetModels>

Returns: a L<Paws::IoTSiteWise::ListAssetModelsResponse> instance

Retrieves a paginated list of summaries of all asset models.


=head2 ListAssetRelationships

=over

=item AssetId => Str

=item TraversalType => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListAssetRelationships>

Returns: a L<Paws::IoTSiteWise::ListAssetRelationshipsResponse> instance

Retrieves a paginated list of asset relationships for an asset. You can
use this operation to identify an asset's root asset and all associated
assets between that asset and its root.


=head2 ListAssets

=over

=item [AssetModelId => Str]

=item [Filter => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListAssets>

Returns: a L<Paws::IoTSiteWise::ListAssetsResponse> instance

Retrieves a paginated list of asset summaries.

You can use this operation to do the following:

=over

=item *

List assets based on a specific asset model.

=item *

List top-level assets.

=back

You can't use this operation to list all assets. To retrieve summaries
for all of your assets, use ListAssetModels
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_ListAssetModels.html)
to get all of your asset model IDs. Then, use ListAssets to get all
assets for each asset model.


=head2 ListAssociatedAssets

=over

=item AssetId => Str

=item [HierarchyId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TraversalDirection => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListAssociatedAssets>

Returns: a L<Paws::IoTSiteWise::ListAssociatedAssetsResponse> instance

Retrieves a paginated list of associated assets.

You can use this operation to do the following:

=over

=item *

List child assets associated to a parent asset by a hierarchy that you
specify.

=item *

List an asset's parent asset.

=back



=head2 ListDashboards

=over

=item ProjectId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListDashboards>

Returns: a L<Paws::IoTSiteWise::ListDashboardsResponse> instance

Retrieves a paginated list of dashboards for an AWS IoT SiteWise
Monitor project.


=head2 ListGateways

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListGateways>

Returns: a L<Paws::IoTSiteWise::ListGatewaysResponse> instance

Retrieves a paginated list of gateways.


=head2 ListPortals

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListPortals>

Returns: a L<Paws::IoTSiteWise::ListPortalsResponse> instance

Retrieves a paginated list of AWS IoT SiteWise Monitor portals.


=head2 ListProjectAssets

=over

=item ProjectId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListProjectAssets>

Returns: a L<Paws::IoTSiteWise::ListProjectAssetsResponse> instance

Retrieves a paginated list of assets associated with an AWS IoT
SiteWise Monitor project.


=head2 ListProjects

=over

=item PortalId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListProjects>

Returns: a L<Paws::IoTSiteWise::ListProjectsResponse> instance

Retrieves a paginated list of projects for an AWS IoT SiteWise Monitor
portal.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::ListTagsForResource>

Returns: a L<Paws::IoTSiteWise::ListTagsForResourceResponse> instance

Retrieves the list of tags for an AWS IoT SiteWise resource.


=head2 PutDefaultEncryptionConfiguration

=over

=item EncryptionType => Str

=item [KmsKeyId => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::PutDefaultEncryptionConfiguration>

Returns: a L<Paws::IoTSiteWise::PutDefaultEncryptionConfigurationResponse> instance

Sets the default encryption configuration for the AWS account. For more
information, see Key management
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html)
in the I<AWS IoT SiteWise User Guide>.


=head2 PutLoggingOptions

=over

=item LoggingOptions => L<Paws::IoTSiteWise::LoggingOptions>


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::PutLoggingOptions>

Returns: a L<Paws::IoTSiteWise::PutLoggingOptionsResponse> instance

Sets logging options for AWS IoT SiteWise.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::IoTSiteWise::TagMap>


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::TagResource>

Returns: a L<Paws::IoTSiteWise::TagResourceResponse> instance

Adds tags to an AWS IoT SiteWise resource. If a tag already exists for
the resource, this operation updates the tag's value.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UntagResource>

Returns: a L<Paws::IoTSiteWise::UntagResourceResponse> instance

Removes a tag from an AWS IoT SiteWise resource.


=head2 UpdateAccessPolicy

=over

=item AccessPolicyId => Str

=item AccessPolicyIdentity => L<Paws::IoTSiteWise::Identity>

=item AccessPolicyPermission => Str

=item AccessPolicyResource => L<Paws::IoTSiteWise::Resource>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UpdateAccessPolicy>

Returns: a L<Paws::IoTSiteWise::UpdateAccessPolicyResponse> instance

Updates an existing access policy that specifies an identity's access
to an AWS IoT SiteWise Monitor portal or project resource.


=head2 UpdateAsset

=over

=item AssetId => Str

=item AssetName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UpdateAsset>

Returns: a L<Paws::IoTSiteWise::UpdateAssetResponse> instance

Updates an asset's name. For more information, see Updating assets and
models
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html)
in the I<AWS IoT SiteWise User Guide>.


=head2 UpdateAssetModel

=over

=item AssetModelId => Str

=item AssetModelName => Str

=item [AssetModelCompositeModels => ArrayRef[L<Paws::IoTSiteWise::AssetModelCompositeModel>]]

=item [AssetModelDescription => Str]

=item [AssetModelHierarchies => ArrayRef[L<Paws::IoTSiteWise::AssetModelHierarchy>]]

=item [AssetModelProperties => ArrayRef[L<Paws::IoTSiteWise::AssetModelProperty>]]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UpdateAssetModel>

Returns: a L<Paws::IoTSiteWise::UpdateAssetModelResponse> instance

Updates an asset model and all of the assets that were created from the
model. Each asset created from the model inherits the updated asset
model's property and hierarchy definitions. For more information, see
Updating assets and models
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html)
in the I<AWS IoT SiteWise User Guide>.

This operation overwrites the existing model with the provided model.
To avoid deleting your asset model's properties or hierarchies, you
must include their IDs and definitions in the updated asset model
payload. For more information, see DescribeAssetModel
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModel.html).

If you remove a property from an asset model, AWS IoT SiteWise deletes
all previous data for that property. If you remove a hierarchy
definition from an asset model, AWS IoT SiteWise disassociates every
asset associated with that hierarchy. You can't change the type or data
type of an existing property.


=head2 UpdateAssetProperty

=over

=item AssetId => Str

=item PropertyId => Str

=item [ClientToken => Str]

=item [PropertyAlias => Str]

=item [PropertyNotificationState => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UpdateAssetProperty>

Returns: nothing

Updates an asset property's alias and notification state.

This operation overwrites the property's existing alias and
notification state. To keep your existing property's alias or
notification state, you must include the existing values in the
UpdateAssetProperty request. For more information, see
DescribeAssetProperty
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetProperty.html).


=head2 UpdateDashboard

=over

=item DashboardDefinition => Str

=item DashboardId => Str

=item DashboardName => Str

=item [ClientToken => Str]

=item [DashboardDescription => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UpdateDashboard>

Returns: a L<Paws::IoTSiteWise::UpdateDashboardResponse> instance

Updates an AWS IoT SiteWise Monitor dashboard.


=head2 UpdateGateway

=over

=item GatewayId => Str

=item GatewayName => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UpdateGateway>

Returns: nothing

Updates a gateway's name.


=head2 UpdateGatewayCapabilityConfiguration

=over

=item CapabilityConfiguration => Str

=item CapabilityNamespace => Str

=item GatewayId => Str


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UpdateGatewayCapabilityConfiguration>

Returns: a L<Paws::IoTSiteWise::UpdateGatewayCapabilityConfigurationResponse> instance

Updates a gateway capability configuration or defines a new capability
configuration. Each gateway capability defines data sources for a
gateway. A capability configuration can contain multiple data source
configurations. If you define OPC-UA sources for a gateway in the AWS
IoT SiteWise console, all of your OPC-UA sources are stored in one
capability configuration. To list all capability configurations for a
gateway, use DescribeGateway
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGateway.html).


=head2 UpdatePortal

=over

=item PortalContactEmail => Str

=item PortalId => Str

=item PortalName => Str

=item RoleArn => Str

=item [ClientToken => Str]

=item [PortalDescription => Str]

=item [PortalLogoImage => L<Paws::IoTSiteWise::Image>]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UpdatePortal>

Returns: a L<Paws::IoTSiteWise::UpdatePortalResponse> instance

Updates an AWS IoT SiteWise Monitor portal.


=head2 UpdateProject

=over

=item ProjectId => Str

=item ProjectName => Str

=item [ClientToken => Str]

=item [ProjectDescription => Str]


=back

Each argument is described in detail in: L<Paws::IoTSiteWise::UpdateProject>

Returns: a L<Paws::IoTSiteWise::UpdateProjectResponse> instance

Updates an AWS IoT SiteWise Monitor project.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllAssetPropertyAggregates(sub { },AggregateTypes => ArrayRef[Str|Undef], EndDate => Str, Resolution => Str, StartDate => Str, [AssetId => Str, MaxResults => Int, NextToken => Str, PropertyAlias => Str, PropertyId => Str, Qualities => ArrayRef[Str|Undef], TimeOrdering => Str])

=head2 GetAllAssetPropertyAggregates(AggregateTypes => ArrayRef[Str|Undef], EndDate => Str, Resolution => Str, StartDate => Str, [AssetId => Str, MaxResults => Int, NextToken => Str, PropertyAlias => Str, PropertyId => Str, Qualities => ArrayRef[Str|Undef], TimeOrdering => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - aggregatedValues, passing the object as the first parameter, and the string 'aggregatedValues' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::GetAssetPropertyAggregatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllAssetPropertyValueHistory(sub { },[AssetId => Str, EndDate => Str, MaxResults => Int, NextToken => Str, PropertyAlias => Str, PropertyId => Str, Qualities => ArrayRef[Str|Undef], StartDate => Str, TimeOrdering => Str])

=head2 GetAllAssetPropertyValueHistory([AssetId => Str, EndDate => Str, MaxResults => Int, NextToken => Str, PropertyAlias => Str, PropertyId => Str, Qualities => ArrayRef[Str|Undef], StartDate => Str, TimeOrdering => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assetPropertyValueHistory, passing the object as the first parameter, and the string 'assetPropertyValueHistory' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::GetAssetPropertyValueHistoryResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllInterpolatedAssetPropertyValues(sub { },EndTimeInSeconds => Int, IntervalInSeconds => Int, Quality => Str, StartTimeInSeconds => Int, Type => Str, [AssetId => Str, EndTimeOffsetInNanos => Int, MaxResults => Int, NextToken => Str, PropertyAlias => Str, PropertyId => Str, StartTimeOffsetInNanos => Int])

=head2 GetAllInterpolatedAssetPropertyValues(EndTimeInSeconds => Int, IntervalInSeconds => Int, Quality => Str, StartTimeInSeconds => Int, Type => Str, [AssetId => Str, EndTimeOffsetInNanos => Int, MaxResults => Int, NextToken => Str, PropertyAlias => Str, PropertyId => Str, StartTimeOffsetInNanos => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - interpolatedAssetPropertyValues, passing the object as the first parameter, and the string 'interpolatedAssetPropertyValues' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::GetInterpolatedAssetPropertyValuesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAccessPolicies(sub { },[IamArn => Str, IdentityId => Str, IdentityType => Str, MaxResults => Int, NextToken => Str, ResourceId => Str, ResourceType => Str])

=head2 ListAllAccessPolicies([IamArn => Str, IdentityId => Str, IdentityType => Str, MaxResults => Int, NextToken => Str, ResourceId => Str, ResourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - accessPolicySummaries, passing the object as the first parameter, and the string 'accessPolicySummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListAccessPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssetModels(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllAssetModels([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assetModelSummaries, passing the object as the first parameter, and the string 'assetModelSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListAssetModelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssetRelationships(sub { },AssetId => Str, TraversalType => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAssetRelationships(AssetId => Str, TraversalType => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assetRelationshipSummaries, passing the object as the first parameter, and the string 'assetRelationshipSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListAssetRelationshipsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssets(sub { },[AssetModelId => Str, Filter => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllAssets([AssetModelId => Str, Filter => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assetSummaries, passing the object as the first parameter, and the string 'assetSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListAssetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssociatedAssets(sub { },AssetId => Str, [HierarchyId => Str, MaxResults => Int, NextToken => Str, TraversalDirection => Str])

=head2 ListAllAssociatedAssets(AssetId => Str, [HierarchyId => Str, MaxResults => Int, NextToken => Str, TraversalDirection => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assetSummaries, passing the object as the first parameter, and the string 'assetSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListAssociatedAssetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDashboards(sub { },ProjectId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDashboards(ProjectId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - dashboardSummaries, passing the object as the first parameter, and the string 'dashboardSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListDashboardsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGateways(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllGateways([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - gatewaySummaries, passing the object as the first parameter, and the string 'gatewaySummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListGatewaysResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPortals(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllPortals([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - portalSummaries, passing the object as the first parameter, and the string 'portalSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListPortalsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProjectAssets(sub { },ProjectId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllProjectAssets(ProjectId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assetIds, passing the object as the first parameter, and the string 'assetIds' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListProjectAssetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProjects(sub { },PortalId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllProjects(PortalId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - projectSummaries, passing the object as the first parameter, and the string 'projectSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTSiteWise::ListProjectsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

