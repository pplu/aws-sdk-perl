package Paws::ServiceCatalog;
  use Moose;
  sub service { 'servicecatalog' }
  sub signing_name { 'servicecatalog' }
  sub version { '2015-12-10' }
  sub target_prefix { 'AWS242ServiceCatalogService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AcceptPortfolioShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::AcceptPortfolioShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociatePrincipalWithPortfolio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::AssociatePrincipalWithPortfolio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateProductWithPortfolio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::AssociateProductWithPortfolio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateServiceActionWithProvisioningArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::AssociateServiceActionWithProvisioningArtifact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateTagOptionWithResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::AssociateTagOptionWithResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchAssociateServiceActionWithProvisioningArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::BatchAssociateServiceActionWithProvisioningArtifact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDisassociateServiceActionFromProvisioningArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::BatchDisassociateServiceActionFromProvisioningArtifact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::CopyProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConstraint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::CreateConstraint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePortfolio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::CreatePortfolio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePortfolioShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::CreatePortfolioShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::CreateProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProvisionedProductPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::CreateProvisionedProductPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProvisioningArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::CreateProvisioningArtifact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateServiceAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::CreateServiceAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTagOption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::CreateTagOption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConstraint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DeleteConstraint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePortfolio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DeletePortfolio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePortfolioShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DeletePortfolioShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DeleteProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProvisionedProductPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DeleteProvisionedProductPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProvisioningArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DeleteProvisioningArtifact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServiceAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DeleteServiceAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTagOption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DeleteTagOption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConstraint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DescribeConstraint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCopyProductStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DescribeCopyProductStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePortfolio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DescribePortfolio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePortfolioShareStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DescribePortfolioShareStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DescribeProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProductAsAdmin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DescribeProductAsAdmin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProductView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DescribeProductView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProvisionedProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DescribeProvisionedProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProvisionedProductPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DescribeProvisionedProductPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProvisioningArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DescribeProvisioningArtifact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProvisioningParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DescribeProvisioningParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRecord {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DescribeRecord', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeServiceAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DescribeServiceAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTagOption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DescribeTagOption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableAWSOrganizationsAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DisableAWSOrganizationsAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociatePrincipalFromPortfolio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DisassociatePrincipalFromPortfolio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateProductFromPortfolio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DisassociateProductFromPortfolio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateServiceActionFromProvisioningArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DisassociateServiceActionFromProvisioningArtifact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateTagOptionFromResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DisassociateTagOptionFromResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableAWSOrganizationsAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::EnableAWSOrganizationsAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExecuteProvisionedProductPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ExecuteProvisionedProductPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExecuteProvisionedProductServiceAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ExecuteProvisionedProductServiceAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAWSOrganizationsAccessStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::GetAWSOrganizationsAccessStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAcceptedPortfolioShares {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ListAcceptedPortfolioShares', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConstraintsForPortfolio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ListConstraintsForPortfolio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLaunchPaths {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ListLaunchPaths', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOrganizationPortfolioAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ListOrganizationPortfolioAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPortfolioAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ListPortfolioAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPortfolios {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ListPortfolios', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPortfoliosForProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ListPortfoliosForProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPrincipalsForPortfolio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ListPrincipalsForPortfolio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProvisionedProductPlans {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ListProvisionedProductPlans', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProvisioningArtifacts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ListProvisioningArtifacts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProvisioningArtifactsForServiceAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ListProvisioningArtifactsForServiceAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecordHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ListRecordHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourcesForTagOption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ListResourcesForTagOption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ListServiceActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceActionsForProvisioningArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ListServiceActionsForProvisioningArtifact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ListTagOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ProvisionProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ProvisionProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectPortfolioShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::RejectPortfolioShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ScanProvisionedProducts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ScanProvisionedProducts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchProducts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::SearchProducts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchProductsAsAdmin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::SearchProductsAsAdmin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchProvisionedProducts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::SearchProvisionedProducts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateProvisionedProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::TerminateProvisionedProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConstraint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::UpdateConstraint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePortfolio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::UpdatePortfolio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::UpdateProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProvisionedProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::UpdateProvisionedProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProvisioningArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::UpdateProvisioningArtifact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServiceAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::UpdateServiceAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTagOption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::UpdateTagOption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAcceptedPortfolioShares {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAcceptedPortfolioShares(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextPageToken) {
        $next_result = $self->ListAcceptedPortfolioShares(@_, PageToken => $next_result->NextPageToken);
        push @{ $result->PortfolioDetails }, @{ $next_result->PortfolioDetails };
      }
      return $result;
    } else {
      while ($result->NextPageToken) {
        $callback->($_ => 'PortfolioDetails') foreach (@{ $result->PortfolioDetails });
        $result = $self->ListAcceptedPortfolioShares(@_, PageToken => $result->NextPageToken);
      }
      $callback->($_ => 'PortfolioDetails') foreach (@{ $result->PortfolioDetails });
    }

    return undef
  }
  sub ListAllConstraintsForPortfolio {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConstraintsForPortfolio(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextPageToken) {
        $next_result = $self->ListConstraintsForPortfolio(@_, PageToken => $next_result->NextPageToken);
        push @{ $result->ConstraintDetails }, @{ $next_result->ConstraintDetails };
      }
      return $result;
    } else {
      while ($result->NextPageToken) {
        $callback->($_ => 'ConstraintDetails') foreach (@{ $result->ConstraintDetails });
        $result = $self->ListConstraintsForPortfolio(@_, PageToken => $result->NextPageToken);
      }
      $callback->($_ => 'ConstraintDetails') foreach (@{ $result->ConstraintDetails });
    }

    return undef
  }
  sub ListAllLaunchPaths {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLaunchPaths(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextPageToken) {
        $next_result = $self->ListLaunchPaths(@_, PageToken => $next_result->NextPageToken);
        push @{ $result->LaunchPathSummaries }, @{ $next_result->LaunchPathSummaries };
      }
      return $result;
    } else {
      while ($result->NextPageToken) {
        $callback->($_ => 'LaunchPathSummaries') foreach (@{ $result->LaunchPathSummaries });
        $result = $self->ListLaunchPaths(@_, PageToken => $result->NextPageToken);
      }
      $callback->($_ => 'LaunchPathSummaries') foreach (@{ $result->LaunchPathSummaries });
    }

    return undef
  }
  sub ListAllOrganizationPortfolioAccess {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOrganizationPortfolioAccess(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextPageToken) {
        $next_result = $self->ListOrganizationPortfolioAccess(@_, PageToken => $next_result->NextPageToken);
        push @{ $result->OrganizationNodes }, @{ $next_result->OrganizationNodes };
      }
      return $result;
    } else {
      while ($result->NextPageToken) {
        $callback->($_ => 'OrganizationNodes') foreach (@{ $result->OrganizationNodes });
        $result = $self->ListOrganizationPortfolioAccess(@_, PageToken => $result->NextPageToken);
      }
      $callback->($_ => 'OrganizationNodes') foreach (@{ $result->OrganizationNodes });
    }

    return undef
  }
  sub ListAllPortfolios {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPortfolios(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextPageToken) {
        $next_result = $self->ListPortfolios(@_, PageToken => $next_result->NextPageToken);
        push @{ $result->PortfolioDetails }, @{ $next_result->PortfolioDetails };
      }
      return $result;
    } else {
      while ($result->NextPageToken) {
        $callback->($_ => 'PortfolioDetails') foreach (@{ $result->PortfolioDetails });
        $result = $self->ListPortfolios(@_, PageToken => $result->NextPageToken);
      }
      $callback->($_ => 'PortfolioDetails') foreach (@{ $result->PortfolioDetails });
    }

    return undef
  }
  sub ListAllPortfoliosForProduct {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPortfoliosForProduct(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextPageToken) {
        $next_result = $self->ListPortfoliosForProduct(@_, PageToken => $next_result->NextPageToken);
        push @{ $result->PortfolioDetails }, @{ $next_result->PortfolioDetails };
      }
      return $result;
    } else {
      while ($result->NextPageToken) {
        $callback->($_ => 'PortfolioDetails') foreach (@{ $result->PortfolioDetails });
        $result = $self->ListPortfoliosForProduct(@_, PageToken => $result->NextPageToken);
      }
      $callback->($_ => 'PortfolioDetails') foreach (@{ $result->PortfolioDetails });
    }

    return undef
  }
  sub ListAllPrincipalsForPortfolio {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPrincipalsForPortfolio(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextPageToken) {
        $next_result = $self->ListPrincipalsForPortfolio(@_, PageToken => $next_result->NextPageToken);
        push @{ $result->Principals }, @{ $next_result->Principals };
      }
      return $result;
    } else {
      while ($result->NextPageToken) {
        $callback->($_ => 'Principals') foreach (@{ $result->Principals });
        $result = $self->ListPrincipalsForPortfolio(@_, PageToken => $result->NextPageToken);
      }
      $callback->($_ => 'Principals') foreach (@{ $result->Principals });
    }

    return undef
  }
  sub ListAllProvisionedProductPlans {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProvisionedProductPlans(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextPageToken) {
        $next_result = $self->ListProvisionedProductPlans(@_, PageToken => $next_result->NextPageToken);
        push @{ $result->ProvisionedProductPlans }, @{ $next_result->ProvisionedProductPlans };
      }
      return $result;
    } else {
      while ($result->NextPageToken) {
        $callback->($_ => 'ProvisionedProductPlans') foreach (@{ $result->ProvisionedProductPlans });
        $result = $self->ListProvisionedProductPlans(@_, PageToken => $result->NextPageToken);
      }
      $callback->($_ => 'ProvisionedProductPlans') foreach (@{ $result->ProvisionedProductPlans });
    }

    return undef
  }
  sub ListAllProvisioningArtifactsForServiceAction {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProvisioningArtifactsForServiceAction(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextPageToken) {
        $next_result = $self->ListProvisioningArtifactsForServiceAction(@_, PageToken => $next_result->NextPageToken);
        push @{ $result->ProvisioningArtifactViews }, @{ $next_result->ProvisioningArtifactViews };
      }
      return $result;
    } else {
      while ($result->NextPageToken) {
        $callback->($_ => 'ProvisioningArtifactViews') foreach (@{ $result->ProvisioningArtifactViews });
        $result = $self->ListProvisioningArtifactsForServiceAction(@_, PageToken => $result->NextPageToken);
      }
      $callback->($_ => 'ProvisioningArtifactViews') foreach (@{ $result->ProvisioningArtifactViews });
    }

    return undef
  }
  sub ListAllRecordHistory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRecordHistory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextPageToken) {
        $next_result = $self->ListRecordHistory(@_, PageToken => $next_result->NextPageToken);
        push @{ $result->RecordDetails }, @{ $next_result->RecordDetails };
      }
      return $result;
    } else {
      while ($result->NextPageToken) {
        $callback->($_ => 'RecordDetails') foreach (@{ $result->RecordDetails });
        $result = $self->ListRecordHistory(@_, PageToken => $result->NextPageToken);
      }
      $callback->($_ => 'RecordDetails') foreach (@{ $result->RecordDetails });
    }

    return undef
  }
  sub ListAllResourcesForTagOption {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourcesForTagOption(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->PageToken) {
        $next_result = $self->ListResourcesForTagOption(@_, PageToken => $next_result->PageToken);
        push @{ $result->ResourceDetails }, @{ $next_result->ResourceDetails };
      }
      return $result;
    } else {
      while ($result->PageToken) {
        $callback->($_ => 'ResourceDetails') foreach (@{ $result->ResourceDetails });
        $result = $self->ListResourcesForTagOption(@_, PageToken => $result->PageToken);
      }
      $callback->($_ => 'ResourceDetails') foreach (@{ $result->ResourceDetails });
    }

    return undef
  }
  sub ListAllServiceActions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceActions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextPageToken) {
        $next_result = $self->ListServiceActions(@_, PageToken => $next_result->NextPageToken);
        push @{ $result->ServiceActionSummaries }, @{ $next_result->ServiceActionSummaries };
      }
      return $result;
    } else {
      while ($result->NextPageToken) {
        $callback->($_ => 'ServiceActionSummaries') foreach (@{ $result->ServiceActionSummaries });
        $result = $self->ListServiceActions(@_, PageToken => $result->NextPageToken);
      }
      $callback->($_ => 'ServiceActionSummaries') foreach (@{ $result->ServiceActionSummaries });
    }

    return undef
  }
  sub ListAllServiceActionsForProvisioningArtifact {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceActionsForProvisioningArtifact(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextPageToken) {
        $next_result = $self->ListServiceActionsForProvisioningArtifact(@_, PageToken => $next_result->NextPageToken);
        push @{ $result->ServiceActionSummaries }, @{ $next_result->ServiceActionSummaries };
      }
      return $result;
    } else {
      while ($result->NextPageToken) {
        $callback->($_ => 'ServiceActionSummaries') foreach (@{ $result->ServiceActionSummaries });
        $result = $self->ListServiceActionsForProvisioningArtifact(@_, PageToken => $result->NextPageToken);
      }
      $callback->($_ => 'ServiceActionSummaries') foreach (@{ $result->ServiceActionSummaries });
    }

    return undef
  }
  sub ListAllTagOptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagOptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->PageToken) {
        $next_result = $self->ListTagOptions(@_, PageToken => $next_result->PageToken);
        push @{ $result->TagOptionDetails }, @{ $next_result->TagOptionDetails };
      }
      return $result;
    } else {
      while ($result->PageToken) {
        $callback->($_ => 'TagOptionDetails') foreach (@{ $result->TagOptionDetails });
        $result = $self->ListTagOptions(@_, PageToken => $result->PageToken);
      }
      $callback->($_ => 'TagOptionDetails') foreach (@{ $result->TagOptionDetails });
    }

    return undef
  }
  sub ScanAllProvisionedProducts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ScanProvisionedProducts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextPageToken) {
        $next_result = $self->ScanProvisionedProducts(@_, PageToken => $next_result->NextPageToken);
        push @{ $result->ProvisionedProducts }, @{ $next_result->ProvisionedProducts };
      }
      return $result;
    } else {
      while ($result->NextPageToken) {
        $callback->($_ => 'ProvisionedProducts') foreach (@{ $result->ProvisionedProducts });
        $result = $self->ScanProvisionedProducts(@_, PageToken => $result->NextPageToken);
      }
      $callback->($_ => 'ProvisionedProducts') foreach (@{ $result->ProvisionedProducts });
    }

    return undef
  }
  sub SearchAllProductsAsAdmin {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchProductsAsAdmin(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextPageToken) {
        $next_result = $self->SearchProductsAsAdmin(@_, PageToken => $next_result->NextPageToken);
        push @{ $result->ProductViewDetails }, @{ $next_result->ProductViewDetails };
      }
      return $result;
    } else {
      while ($result->NextPageToken) {
        $callback->($_ => 'ProductViewDetails') foreach (@{ $result->ProductViewDetails });
        $result = $self->SearchProductsAsAdmin(@_, PageToken => $result->NextPageToken);
      }
      $callback->($_ => 'ProductViewDetails') foreach (@{ $result->ProductViewDetails });
    }

    return undef
  }


  sub operations { qw/AcceptPortfolioShare AssociatePrincipalWithPortfolio AssociateProductWithPortfolio AssociateServiceActionWithProvisioningArtifact AssociateTagOptionWithResource BatchAssociateServiceActionWithProvisioningArtifact BatchDisassociateServiceActionFromProvisioningArtifact CopyProduct CreateConstraint CreatePortfolio CreatePortfolioShare CreateProduct CreateProvisionedProductPlan CreateProvisioningArtifact CreateServiceAction CreateTagOption DeleteConstraint DeletePortfolio DeletePortfolioShare DeleteProduct DeleteProvisionedProductPlan DeleteProvisioningArtifact DeleteServiceAction DeleteTagOption DescribeConstraint DescribeCopyProductStatus DescribePortfolio DescribePortfolioShareStatus DescribeProduct DescribeProductAsAdmin DescribeProductView DescribeProvisionedProduct DescribeProvisionedProductPlan DescribeProvisioningArtifact DescribeProvisioningParameters DescribeRecord DescribeServiceAction DescribeTagOption DisableAWSOrganizationsAccess DisassociatePrincipalFromPortfolio DisassociateProductFromPortfolio DisassociateServiceActionFromProvisioningArtifact DisassociateTagOptionFromResource EnableAWSOrganizationsAccess ExecuteProvisionedProductPlan ExecuteProvisionedProductServiceAction GetAWSOrganizationsAccessStatus ListAcceptedPortfolioShares ListConstraintsForPortfolio ListLaunchPaths ListOrganizationPortfolioAccess ListPortfolioAccess ListPortfolios ListPortfoliosForProduct ListPrincipalsForPortfolio ListProvisionedProductPlans ListProvisioningArtifacts ListProvisioningArtifactsForServiceAction ListRecordHistory ListResourcesForTagOption ListServiceActions ListServiceActionsForProvisioningArtifact ListTagOptions ProvisionProduct RejectPortfolioShare ScanProvisionedProducts SearchProducts SearchProductsAsAdmin SearchProvisionedProducts TerminateProvisionedProduct UpdateConstraint UpdatePortfolio UpdateProduct UpdateProvisionedProduct UpdateProvisioningArtifact UpdateServiceAction UpdateTagOption / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog - Perl Interface to AWS AWS Service Catalog

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ServiceCatalog');
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

AWS Service Catalog

AWS Service Catalog (https://aws.amazon.com/servicecatalog/) enables
organizations to create and manage catalogs of IT services that are
approved for use on AWS. To get the most out of this documentation, you
should be familiar with the terminology discussed in AWS Service
Catalog Concepts
(http://docs.aws.amazon.com/servicecatalog/latest/adminguide/what-is_concepts.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10>


=head1 METHODS

=head2 AcceptPortfolioShare

=over

=item PortfolioId => Str

=item [AcceptLanguage => Str]

=item [PortfolioShareType => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::AcceptPortfolioShare>

Returns: a L<Paws::ServiceCatalog::AcceptPortfolioShareOutput> instance

Accepts an offer to share the specified portfolio.


=head2 AssociatePrincipalWithPortfolio

=over

=item PortfolioId => Str

=item PrincipalARN => Str

=item PrincipalType => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::AssociatePrincipalWithPortfolio>

Returns: a L<Paws::ServiceCatalog::AssociatePrincipalWithPortfolioOutput> instance

Associates the specified principal ARN with the specified portfolio.


=head2 AssociateProductWithPortfolio

=over

=item PortfolioId => Str

=item ProductId => Str

=item [AcceptLanguage => Str]

=item [SourcePortfolioId => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::AssociateProductWithPortfolio>

Returns: a L<Paws::ServiceCatalog::AssociateProductWithPortfolioOutput> instance

Associates the specified product with the specified portfolio.


=head2 AssociateServiceActionWithProvisioningArtifact

=over

=item ProductId => Str

=item ProvisioningArtifactId => Str

=item ServiceActionId => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::AssociateServiceActionWithProvisioningArtifact>

Returns: a L<Paws::ServiceCatalog::AssociateServiceActionWithProvisioningArtifactOutput> instance

Associates a self-service action with a provisioning artifact.


=head2 AssociateTagOptionWithResource

=over

=item ResourceId => Str

=item TagOptionId => Str


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::AssociateTagOptionWithResource>

Returns: a L<Paws::ServiceCatalog::AssociateTagOptionWithResourceOutput> instance

Associate the specified TagOption with the specified portfolio or
product.


=head2 BatchAssociateServiceActionWithProvisioningArtifact

=over

=item ServiceActionAssociations => ArrayRef[L<Paws::ServiceCatalog::ServiceActionAssociation>]

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::BatchAssociateServiceActionWithProvisioningArtifact>

Returns: a L<Paws::ServiceCatalog::BatchAssociateServiceActionWithProvisioningArtifactOutput> instance

Associates multiple self-service actions with provisioning artifacts.


=head2 BatchDisassociateServiceActionFromProvisioningArtifact

=over

=item ServiceActionAssociations => ArrayRef[L<Paws::ServiceCatalog::ServiceActionAssociation>]

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::BatchDisassociateServiceActionFromProvisioningArtifact>

Returns: a L<Paws::ServiceCatalog::BatchDisassociateServiceActionFromProvisioningArtifactOutput> instance

Disassociates a batch of self-service actions from the specified
provisioning artifact.


=head2 CopyProduct

=over

=item IdempotencyToken => Str

=item SourceProductArn => Str

=item [AcceptLanguage => Str]

=item [CopyOptions => ArrayRef[Str|Undef]]

=item [SourceProvisioningArtifactIdentifiers => ArrayRef[L<Paws::ServiceCatalog::SourceProvisioningArtifactPropertiesMap>]]

=item [TargetProductId => Str]

=item [TargetProductName => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::CopyProduct>

Returns: a L<Paws::ServiceCatalog::CopyProductOutput> instance

Copies the specified source product to the specified target product or
a new product.

You can copy a product to the same account or another account. You can
copy a product to the same region or another region.

This operation is performed asynchronously. To track the progress of
the operation, use DescribeCopyProductStatus.


=head2 CreateConstraint

=over

=item IdempotencyToken => Str

=item Parameters => Str

=item PortfolioId => Str

=item ProductId => Str

=item Type => Str

=item [AcceptLanguage => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::CreateConstraint>

Returns: a L<Paws::ServiceCatalog::CreateConstraintOutput> instance

Creates a constraint.


=head2 CreatePortfolio

=over

=item DisplayName => Str

=item IdempotencyToken => Str

=item ProviderName => Str

=item [AcceptLanguage => Str]

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::ServiceCatalog::Tag>]]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::CreatePortfolio>

Returns: a L<Paws::ServiceCatalog::CreatePortfolioOutput> instance

Creates a portfolio.


=head2 CreatePortfolioShare

=over

=item PortfolioId => Str

=item [AcceptLanguage => Str]

=item [AccountId => Str]

=item [OrganizationNode => L<Paws::ServiceCatalog::OrganizationNode>]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::CreatePortfolioShare>

Returns: a L<Paws::ServiceCatalog::CreatePortfolioShareOutput> instance

Shares the specified portfolio with the specified account or
organization node. Shares to an organization node can only be created
by the master account of an Organization. AWSOrganizationsAccess must
be enabled in order to create a portfolio share to an organization
node.


=head2 CreateProduct

=over

=item IdempotencyToken => Str

=item Name => Str

=item Owner => Str

=item ProductType => Str

=item ProvisioningArtifactParameters => L<Paws::ServiceCatalog::ProvisioningArtifactProperties>

=item [AcceptLanguage => Str]

=item [Description => Str]

=item [Distributor => Str]

=item [SupportDescription => Str]

=item [SupportEmail => Str]

=item [SupportUrl => Str]

=item [Tags => ArrayRef[L<Paws::ServiceCatalog::Tag>]]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::CreateProduct>

Returns: a L<Paws::ServiceCatalog::CreateProductOutput> instance

Creates a product.


=head2 CreateProvisionedProductPlan

=over

=item IdempotencyToken => Str

=item PlanName => Str

=item PlanType => Str

=item ProductId => Str

=item ProvisionedProductName => Str

=item ProvisioningArtifactId => Str

=item [AcceptLanguage => Str]

=item [NotificationArns => ArrayRef[Str|Undef]]

=item [PathId => Str]

=item [ProvisioningParameters => ArrayRef[L<Paws::ServiceCatalog::UpdateProvisioningParameter>]]

=item [Tags => ArrayRef[L<Paws::ServiceCatalog::Tag>]]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::CreateProvisionedProductPlan>

Returns: a L<Paws::ServiceCatalog::CreateProvisionedProductPlanOutput> instance

Creates a plan. A plan includes the list of resources to be created
(when provisioning a new product) or modified (when updating a
provisioned product) when the plan is executed.

You can create one plan per provisioned product. To create a plan for
an existing provisioned product, the product status must be AVAILBLE or
TAINTED.

To view the resource changes in the change set, use
DescribeProvisionedProductPlan. To create or modify the provisioned
product, use ExecuteProvisionedProductPlan.


=head2 CreateProvisioningArtifact

=over

=item IdempotencyToken => Str

=item Parameters => L<Paws::ServiceCatalog::ProvisioningArtifactProperties>

=item ProductId => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::CreateProvisioningArtifact>

Returns: a L<Paws::ServiceCatalog::CreateProvisioningArtifactOutput> instance

Creates a provisioning artifact (also known as a version) for the
specified product.

You cannot create a provisioning artifact for a product that was shared
with you.


=head2 CreateServiceAction

=over

=item Definition => L<Paws::ServiceCatalog::ServiceActionDefinitionMap>

=item DefinitionType => Str

=item IdempotencyToken => Str

=item Name => Str

=item [AcceptLanguage => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::CreateServiceAction>

Returns: a L<Paws::ServiceCatalog::CreateServiceActionOutput> instance

Creates a self-service action.


=head2 CreateTagOption

=over

=item Key => Str

=item Value => Str


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::CreateTagOption>

Returns: a L<Paws::ServiceCatalog::CreateTagOptionOutput> instance

Creates a TagOption.


=head2 DeleteConstraint

=over

=item Id => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DeleteConstraint>

Returns: a L<Paws::ServiceCatalog::DeleteConstraintOutput> instance

Deletes the specified constraint.


=head2 DeletePortfolio

=over

=item Id => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DeletePortfolio>

Returns: a L<Paws::ServiceCatalog::DeletePortfolioOutput> instance

Deletes the specified portfolio.

You cannot delete a portfolio if it was shared with you or if it has
associated products, users, constraints, or shared accounts.


=head2 DeletePortfolioShare

=over

=item PortfolioId => Str

=item [AcceptLanguage => Str]

=item [AccountId => Str]

=item [OrganizationNode => L<Paws::ServiceCatalog::OrganizationNode>]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DeletePortfolioShare>

Returns: a L<Paws::ServiceCatalog::DeletePortfolioShareOutput> instance

Stops sharing the specified portfolio with the specified account or
organization node. Shares to an organization node can only be deleted
by the master account of an Organization.


=head2 DeleteProduct

=over

=item Id => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DeleteProduct>

Returns: a L<Paws::ServiceCatalog::DeleteProductOutput> instance

Deletes the specified product.

You cannot delete a product if it was shared with you or is associated
with a portfolio.


=head2 DeleteProvisionedProductPlan

=over

=item PlanId => Str

=item [AcceptLanguage => Str]

=item [IgnoreErrors => Bool]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DeleteProvisionedProductPlan>

Returns: a L<Paws::ServiceCatalog::DeleteProvisionedProductPlanOutput> instance

Deletes the specified plan.


=head2 DeleteProvisioningArtifact

=over

=item ProductId => Str

=item ProvisioningArtifactId => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DeleteProvisioningArtifact>

Returns: a L<Paws::ServiceCatalog::DeleteProvisioningArtifactOutput> instance

Deletes the specified provisioning artifact (also known as a version)
for the specified product.

You cannot delete a provisioning artifact associated with a product
that was shared with you. You cannot delete the last provisioning
artifact for a product, because a product must have at least one
provisioning artifact.


=head2 DeleteServiceAction

=over

=item Id => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DeleteServiceAction>

Returns: a L<Paws::ServiceCatalog::DeleteServiceActionOutput> instance

Deletes a self-service action.


=head2 DeleteTagOption

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DeleteTagOption>

Returns: a L<Paws::ServiceCatalog::DeleteTagOptionOutput> instance

Deletes the specified TagOption.

You cannot delete a TagOption if it is associated with a product or
portfolio.


=head2 DescribeConstraint

=over

=item Id => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeConstraint>

Returns: a L<Paws::ServiceCatalog::DescribeConstraintOutput> instance

Gets information about the specified constraint.


=head2 DescribeCopyProductStatus

=over

=item CopyProductToken => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeCopyProductStatus>

Returns: a L<Paws::ServiceCatalog::DescribeCopyProductStatusOutput> instance

Gets the status of the specified copy product operation.


=head2 DescribePortfolio

=over

=item Id => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribePortfolio>

Returns: a L<Paws::ServiceCatalog::DescribePortfolioOutput> instance

Gets information about the specified portfolio.


=head2 DescribePortfolioShareStatus

=over

=item PortfolioShareToken => Str


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribePortfolioShareStatus>

Returns: a L<Paws::ServiceCatalog::DescribePortfolioShareStatusOutput> instance

Gets the status of the specified portfolio share operation. This API
can only be called by the master account in the organization.


=head2 DescribeProduct

=over

=item Id => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeProduct>

Returns: a L<Paws::ServiceCatalog::DescribeProductOutput> instance

Gets information about the specified product.


=head2 DescribeProductAsAdmin

=over

=item Id => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeProductAsAdmin>

Returns: a L<Paws::ServiceCatalog::DescribeProductAsAdminOutput> instance

Gets information about the specified product. This operation is run
with administrator access.


=head2 DescribeProductView

=over

=item Id => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeProductView>

Returns: a L<Paws::ServiceCatalog::DescribeProductViewOutput> instance

Gets information about the specified product.


=head2 DescribeProvisionedProduct

=over

=item Id => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeProvisionedProduct>

Returns: a L<Paws::ServiceCatalog::DescribeProvisionedProductOutput> instance

Gets information about the specified provisioned product.


=head2 DescribeProvisionedProductPlan

=over

=item PlanId => Str

=item [AcceptLanguage => Str]

=item [PageSize => Int]

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeProvisionedProductPlan>

Returns: a L<Paws::ServiceCatalog::DescribeProvisionedProductPlanOutput> instance

Gets information about the resource changes for the specified plan.


=head2 DescribeProvisioningArtifact

=over

=item ProductId => Str

=item ProvisioningArtifactId => Str

=item [AcceptLanguage => Str]

=item [Verbose => Bool]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeProvisioningArtifact>

Returns: a L<Paws::ServiceCatalog::DescribeProvisioningArtifactOutput> instance

Gets information about the specified provisioning artifact (also known
as a version) for the specified product.


=head2 DescribeProvisioningParameters

=over

=item ProductId => Str

=item ProvisioningArtifactId => Str

=item [AcceptLanguage => Str]

=item [PathId => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeProvisioningParameters>

Returns: a L<Paws::ServiceCatalog::DescribeProvisioningParametersOutput> instance

Gets information about the configuration required to provision the
specified product using the specified provisioning artifact.

If the output contains a TagOption key with an empty list of values,
there is a TagOption conflict for that key. The end user cannot take
action to fix the conflict, and launch is not blocked. In subsequent
calls to ProvisionProduct, do not include conflicted TagOption keys as
tags, or this causes the error "Parameter validation failed: Missing
required parameter in Tags[I<N>]:I<Value>". Tag the provisioned product
with the value C<sc-tagoption-conflict-portfolioId-productId>.


=head2 DescribeRecord

=over

=item Id => Str

=item [AcceptLanguage => Str]

=item [PageSize => Int]

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeRecord>

Returns: a L<Paws::ServiceCatalog::DescribeRecordOutput> instance

Gets information about the specified request operation.

Use this operation after calling a request operation (for example,
ProvisionProduct, TerminateProvisionedProduct, or
UpdateProvisionedProduct).


=head2 DescribeServiceAction

=over

=item Id => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeServiceAction>

Returns: a L<Paws::ServiceCatalog::DescribeServiceActionOutput> instance

Describes a self-service action.


=head2 DescribeTagOption

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeTagOption>

Returns: a L<Paws::ServiceCatalog::DescribeTagOptionOutput> instance

Gets information about the specified TagOption.


=head2 DisableAWSOrganizationsAccess






Each argument is described in detail in: L<Paws::ServiceCatalog::DisableAWSOrganizationsAccess>

Returns: a L<Paws::ServiceCatalog::DisableAWSOrganizationsAccessOutput> instance

Disable portfolio sharing through AWS Organizations feature. This
feature will not delete your current shares but it will prevent you
from creating new shares throughout your organization. Current shares
will not be in sync with your organization structure if it changes
after calling this API. This API can only be called by the master
account in the organization.


=head2 DisassociatePrincipalFromPortfolio

=over

=item PortfolioId => Str

=item PrincipalARN => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DisassociatePrincipalFromPortfolio>

Returns: a L<Paws::ServiceCatalog::DisassociatePrincipalFromPortfolioOutput> instance

Disassociates a previously associated principal ARN from a specified
portfolio.


=head2 DisassociateProductFromPortfolio

=over

=item PortfolioId => Str

=item ProductId => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DisassociateProductFromPortfolio>

Returns: a L<Paws::ServiceCatalog::DisassociateProductFromPortfolioOutput> instance

Disassociates the specified product from the specified portfolio.


=head2 DisassociateServiceActionFromProvisioningArtifact

=over

=item ProductId => Str

=item ProvisioningArtifactId => Str

=item ServiceActionId => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DisassociateServiceActionFromProvisioningArtifact>

Returns: a L<Paws::ServiceCatalog::DisassociateServiceActionFromProvisioningArtifactOutput> instance

Disassociates the specified self-service action association from the
specified provisioning artifact.


=head2 DisassociateTagOptionFromResource

=over

=item ResourceId => Str

=item TagOptionId => Str


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::DisassociateTagOptionFromResource>

Returns: a L<Paws::ServiceCatalog::DisassociateTagOptionFromResourceOutput> instance

Disassociates the specified TagOption from the specified resource.


=head2 EnableAWSOrganizationsAccess






Each argument is described in detail in: L<Paws::ServiceCatalog::EnableAWSOrganizationsAccess>

Returns: a L<Paws::ServiceCatalog::EnableAWSOrganizationsAccessOutput> instance

Enable portfolio sharing feature through AWS Organizations. This API
will allow Service Catalog to receive updates on your organization in
order to sync your shares with the current structure. This API can only
be called by the master account in the organization.

By calling this API Service Catalog will make a call to
organizations:EnableAWSServiceAccess on your behalf so that your shares
can be in sync with any changes in your AWS Organizations structure.


=head2 ExecuteProvisionedProductPlan

=over

=item IdempotencyToken => Str

=item PlanId => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::ExecuteProvisionedProductPlan>

Returns: a L<Paws::ServiceCatalog::ExecuteProvisionedProductPlanOutput> instance

Provisions or modifies a product based on the resource changes for the
specified plan.


=head2 ExecuteProvisionedProductServiceAction

=over

=item ExecuteToken => Str

=item ProvisionedProductId => Str

=item ServiceActionId => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::ExecuteProvisionedProductServiceAction>

Returns: a L<Paws::ServiceCatalog::ExecuteProvisionedProductServiceActionOutput> instance

Executes a self-service action against a provisioned product.


=head2 GetAWSOrganizationsAccessStatus






Each argument is described in detail in: L<Paws::ServiceCatalog::GetAWSOrganizationsAccessStatus>

Returns: a L<Paws::ServiceCatalog::GetAWSOrganizationsAccessStatusOutput> instance

Get the Access Status for AWS Organization portfolio share feature.
This API can only be called by the master account in the organization.


=head2 ListAcceptedPortfolioShares

=over

=item [AcceptLanguage => Str]

=item [PageSize => Int]

=item [PageToken => Str]

=item [PortfolioShareType => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::ListAcceptedPortfolioShares>

Returns: a L<Paws::ServiceCatalog::ListAcceptedPortfolioSharesOutput> instance

Lists all portfolios for which sharing was accepted by this account.


=head2 ListConstraintsForPortfolio

=over

=item PortfolioId => Str

=item [AcceptLanguage => Str]

=item [PageSize => Int]

=item [PageToken => Str]

=item [ProductId => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::ListConstraintsForPortfolio>

Returns: a L<Paws::ServiceCatalog::ListConstraintsForPortfolioOutput> instance

Lists the constraints for the specified portfolio and product.


=head2 ListLaunchPaths

=over

=item ProductId => Str

=item [AcceptLanguage => Str]

=item [PageSize => Int]

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::ListLaunchPaths>

Returns: a L<Paws::ServiceCatalog::ListLaunchPathsOutput> instance

Lists the paths to the specified product. A path is how the user has
access to a specified product, and is necessary when provisioning a
product. A path also determines the constraints put on the product.


=head2 ListOrganizationPortfolioAccess

=over

=item OrganizationNodeType => Str

=item PortfolioId => Str

=item [AcceptLanguage => Str]

=item [PageSize => Int]

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::ListOrganizationPortfolioAccess>

Returns: a L<Paws::ServiceCatalog::ListOrganizationPortfolioAccessOutput> instance

Lists the organization nodes that have access to the specified
portfolio. This API can only be called by the master account in the
organization.


=head2 ListPortfolioAccess

=over

=item PortfolioId => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::ListPortfolioAccess>

Returns: a L<Paws::ServiceCatalog::ListPortfolioAccessOutput> instance

Lists the account IDs that have access to the specified portfolio.


=head2 ListPortfolios

=over

=item [AcceptLanguage => Str]

=item [PageSize => Int]

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::ListPortfolios>

Returns: a L<Paws::ServiceCatalog::ListPortfoliosOutput> instance

Lists all portfolios in the catalog.


=head2 ListPortfoliosForProduct

=over

=item ProductId => Str

=item [AcceptLanguage => Str]

=item [PageSize => Int]

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::ListPortfoliosForProduct>

Returns: a L<Paws::ServiceCatalog::ListPortfoliosForProductOutput> instance

Lists all portfolios that the specified product is associated with.


=head2 ListPrincipalsForPortfolio

=over

=item PortfolioId => Str

=item [AcceptLanguage => Str]

=item [PageSize => Int]

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::ListPrincipalsForPortfolio>

Returns: a L<Paws::ServiceCatalog::ListPrincipalsForPortfolioOutput> instance

Lists all principal ARNs associated with the specified portfolio.


=head2 ListProvisionedProductPlans

=over

=item [AcceptLanguage => Str]

=item [AccessLevelFilter => L<Paws::ServiceCatalog::AccessLevelFilter>]

=item [PageSize => Int]

=item [PageToken => Str]

=item [ProvisionProductId => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::ListProvisionedProductPlans>

Returns: a L<Paws::ServiceCatalog::ListProvisionedProductPlansOutput> instance

Lists the plans for the specified provisioned product or all plans to
which the user has access.


=head2 ListProvisioningArtifacts

=over

=item ProductId => Str

=item [AcceptLanguage => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::ListProvisioningArtifacts>

Returns: a L<Paws::ServiceCatalog::ListProvisioningArtifactsOutput> instance

Lists all provisioning artifacts (also known as versions) for the
specified product.


=head2 ListProvisioningArtifactsForServiceAction

=over

=item ServiceActionId => Str

=item [AcceptLanguage => Str]

=item [PageSize => Int]

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::ListProvisioningArtifactsForServiceAction>

Returns: a L<Paws::ServiceCatalog::ListProvisioningArtifactsForServiceActionOutput> instance

Lists all provisioning artifacts (also known as versions) for the
specified self-service action.


=head2 ListRecordHistory

=over

=item [AcceptLanguage => Str]

=item [AccessLevelFilter => L<Paws::ServiceCatalog::AccessLevelFilter>]

=item [PageSize => Int]

=item [PageToken => Str]

=item [SearchFilter => L<Paws::ServiceCatalog::ListRecordHistorySearchFilter>]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::ListRecordHistory>

Returns: a L<Paws::ServiceCatalog::ListRecordHistoryOutput> instance

Lists the specified requests or all performed requests.


=head2 ListResourcesForTagOption

=over

=item TagOptionId => Str

=item [PageSize => Int]

=item [PageToken => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::ListResourcesForTagOption>

Returns: a L<Paws::ServiceCatalog::ListResourcesForTagOptionOutput> instance

Lists the resources associated with the specified TagOption.


=head2 ListServiceActions

=over

=item [AcceptLanguage => Str]

=item [PageSize => Int]

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::ListServiceActions>

Returns: a L<Paws::ServiceCatalog::ListServiceActionsOutput> instance

Lists all self-service actions.


=head2 ListServiceActionsForProvisioningArtifact

=over

=item ProductId => Str

=item ProvisioningArtifactId => Str

=item [AcceptLanguage => Str]

=item [PageSize => Int]

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::ListServiceActionsForProvisioningArtifact>

Returns: a L<Paws::ServiceCatalog::ListServiceActionsForProvisioningArtifactOutput> instance

Returns a paginated list of self-service actions associated with the
specified Product ID and Provisioning Artifact ID.


=head2 ListTagOptions

=over

=item [Filters => L<Paws::ServiceCatalog::ListTagOptionsFilters>]

=item [PageSize => Int]

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::ListTagOptions>

Returns: a L<Paws::ServiceCatalog::ListTagOptionsOutput> instance

Lists the specified TagOptions or all TagOptions.


=head2 ProvisionProduct

=over

=item ProductId => Str

=item ProvisionedProductName => Str

=item ProvisioningArtifactId => Str

=item ProvisionToken => Str

=item [AcceptLanguage => Str]

=item [NotificationArns => ArrayRef[Str|Undef]]

=item [PathId => Str]

=item [ProvisioningParameters => ArrayRef[L<Paws::ServiceCatalog::ProvisioningParameter>]]

=item [ProvisioningPreferences => L<Paws::ServiceCatalog::ProvisioningPreferences>]

=item [Tags => ArrayRef[L<Paws::ServiceCatalog::Tag>]]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::ProvisionProduct>

Returns: a L<Paws::ServiceCatalog::ProvisionProductOutput> instance

Provisions the specified product.

A provisioned product is a resourced instance of a product. For
example, provisioning a product based on a CloudFormation template
launches a CloudFormation stack and its underlying resources. You can
check the status of this request using DescribeRecord.

If the request contains a tag key with an empty list of values, there
is a tag conflict for that key. Do not include conflicted keys as tags,
or this causes the error "Parameter validation failed: Missing required
parameter in Tags[I<N>]:I<Value>".


=head2 RejectPortfolioShare

=over

=item PortfolioId => Str

=item [AcceptLanguage => Str]

=item [PortfolioShareType => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::RejectPortfolioShare>

Returns: a L<Paws::ServiceCatalog::RejectPortfolioShareOutput> instance

Rejects an offer to share the specified portfolio.


=head2 ScanProvisionedProducts

=over

=item [AcceptLanguage => Str]

=item [AccessLevelFilter => L<Paws::ServiceCatalog::AccessLevelFilter>]

=item [PageSize => Int]

=item [PageToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::ScanProvisionedProducts>

Returns: a L<Paws::ServiceCatalog::ScanProvisionedProductsOutput> instance

Lists the provisioned products that are available (not terminated).

To use additional filtering, see SearchProvisionedProducts.


=head2 SearchProducts

=over

=item [AcceptLanguage => Str]

=item [Filters => L<Paws::ServiceCatalog::ProductViewFilters>]

=item [PageSize => Int]

=item [PageToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::SearchProducts>

Returns: a L<Paws::ServiceCatalog::SearchProductsOutput> instance

Gets information about the products to which the caller has access.


=head2 SearchProductsAsAdmin

=over

=item [AcceptLanguage => Str]

=item [Filters => L<Paws::ServiceCatalog::ProductViewFilters>]

=item [PageSize => Int]

=item [PageToken => Str]

=item [PortfolioId => Str]

=item [ProductSource => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::SearchProductsAsAdmin>

Returns: a L<Paws::ServiceCatalog::SearchProductsAsAdminOutput> instance

Gets information about the products for the specified portfolio or all
products.


=head2 SearchProvisionedProducts

=over

=item [AcceptLanguage => Str]

=item [AccessLevelFilter => L<Paws::ServiceCatalog::AccessLevelFilter>]

=item [Filters => L<Paws::ServiceCatalog::ProvisionedProductFilters>]

=item [PageSize => Int]

=item [PageToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::SearchProvisionedProducts>

Returns: a L<Paws::ServiceCatalog::SearchProvisionedProductsOutput> instance

Gets information about the provisioned products that meet the specified
criteria.


=head2 TerminateProvisionedProduct

=over

=item TerminateToken => Str

=item [AcceptLanguage => Str]

=item [IgnoreErrors => Bool]

=item [ProvisionedProductId => Str]

=item [ProvisionedProductName => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::TerminateProvisionedProduct>

Returns: a L<Paws::ServiceCatalog::TerminateProvisionedProductOutput> instance

Terminates the specified provisioned product.

This operation does not delete any records associated with the
provisioned product.

You can check the status of this request using DescribeRecord.


=head2 UpdateConstraint

=over

=item Id => Str

=item [AcceptLanguage => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::UpdateConstraint>

Returns: a L<Paws::ServiceCatalog::UpdateConstraintOutput> instance

Updates the specified constraint.


=head2 UpdatePortfolio

=over

=item Id => Str

=item [AcceptLanguage => Str]

=item [AddTags => ArrayRef[L<Paws::ServiceCatalog::Tag>]]

=item [Description => Str]

=item [DisplayName => Str]

=item [ProviderName => Str]

=item [RemoveTags => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::UpdatePortfolio>

Returns: a L<Paws::ServiceCatalog::UpdatePortfolioOutput> instance

Updates the specified portfolio.

You cannot update a product that was shared with you.


=head2 UpdateProduct

=over

=item Id => Str

=item [AcceptLanguage => Str]

=item [AddTags => ArrayRef[L<Paws::ServiceCatalog::Tag>]]

=item [Description => Str]

=item [Distributor => Str]

=item [Name => Str]

=item [Owner => Str]

=item [RemoveTags => ArrayRef[Str|Undef]]

=item [SupportDescription => Str]

=item [SupportEmail => Str]

=item [SupportUrl => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::UpdateProduct>

Returns: a L<Paws::ServiceCatalog::UpdateProductOutput> instance

Updates the specified product.


=head2 UpdateProvisionedProduct

=over

=item UpdateToken => Str

=item [AcceptLanguage => Str]

=item [PathId => Str]

=item [ProductId => Str]

=item [ProvisionedProductId => Str]

=item [ProvisionedProductName => Str]

=item [ProvisioningArtifactId => Str]

=item [ProvisioningParameters => ArrayRef[L<Paws::ServiceCatalog::UpdateProvisioningParameter>]]

=item [ProvisioningPreferences => L<Paws::ServiceCatalog::UpdateProvisioningPreferences>]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::UpdateProvisionedProduct>

Returns: a L<Paws::ServiceCatalog::UpdateProvisionedProductOutput> instance

Requests updates to the configuration of the specified provisioned
product.

If there are tags associated with the object, they cannot be updated or
added. Depending on the specific updates requested, this operation can
update with no interruption, with some interruption, or replace the
provisioned product entirely.

You can check the status of this request using DescribeRecord.


=head2 UpdateProvisioningArtifact

=over

=item ProductId => Str

=item ProvisioningArtifactId => Str

=item [AcceptLanguage => Str]

=item [Active => Bool]

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::UpdateProvisioningArtifact>

Returns: a L<Paws::ServiceCatalog::UpdateProvisioningArtifactOutput> instance

Updates the specified provisioning artifact (also known as a version)
for the specified product.

You cannot update a provisioning artifact for a product that was shared
with you.


=head2 UpdateServiceAction

=over

=item Id => Str

=item [AcceptLanguage => Str]

=item [Definition => L<Paws::ServiceCatalog::ServiceActionDefinitionMap>]

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::UpdateServiceAction>

Returns: a L<Paws::ServiceCatalog::UpdateServiceActionOutput> instance

Updates a self-service action.


=head2 UpdateTagOption

=over

=item Id => Str

=item [Active => Bool]

=item [Value => Str]


=back

Each argument is described in detail in: L<Paws::ServiceCatalog::UpdateTagOption>

Returns: a L<Paws::ServiceCatalog::UpdateTagOptionOutput> instance

Updates the specified TagOption.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAcceptedPortfolioShares(sub { },[AcceptLanguage => Str, PageSize => Int, PageToken => Str, PortfolioShareType => Str])

=head2 ListAllAcceptedPortfolioShares([AcceptLanguage => Str, PageSize => Int, PageToken => Str, PortfolioShareType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PortfolioDetails, passing the object as the first parameter, and the string 'PortfolioDetails' as the second parameter 

If not, it will return a a L<Paws::ServiceCatalog::ListAcceptedPortfolioSharesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConstraintsForPortfolio(sub { },PortfolioId => Str, [AcceptLanguage => Str, PageSize => Int, PageToken => Str, ProductId => Str])

=head2 ListAllConstraintsForPortfolio(PortfolioId => Str, [AcceptLanguage => Str, PageSize => Int, PageToken => Str, ProductId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConstraintDetails, passing the object as the first parameter, and the string 'ConstraintDetails' as the second parameter 

If not, it will return a a L<Paws::ServiceCatalog::ListConstraintsForPortfolioOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLaunchPaths(sub { },ProductId => Str, [AcceptLanguage => Str, PageSize => Int, PageToken => Str])

=head2 ListAllLaunchPaths(ProductId => Str, [AcceptLanguage => Str, PageSize => Int, PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LaunchPathSummaries, passing the object as the first parameter, and the string 'LaunchPathSummaries' as the second parameter 

If not, it will return a a L<Paws::ServiceCatalog::ListLaunchPathsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOrganizationPortfolioAccess(sub { },OrganizationNodeType => Str, PortfolioId => Str, [AcceptLanguage => Str, PageSize => Int, PageToken => Str])

=head2 ListAllOrganizationPortfolioAccess(OrganizationNodeType => Str, PortfolioId => Str, [AcceptLanguage => Str, PageSize => Int, PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OrganizationNodes, passing the object as the first parameter, and the string 'OrganizationNodes' as the second parameter 

If not, it will return a a L<Paws::ServiceCatalog::ListOrganizationPortfolioAccessOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPortfolios(sub { },[AcceptLanguage => Str, PageSize => Int, PageToken => Str])

=head2 ListAllPortfolios([AcceptLanguage => Str, PageSize => Int, PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PortfolioDetails, passing the object as the first parameter, and the string 'PortfolioDetails' as the second parameter 

If not, it will return a a L<Paws::ServiceCatalog::ListPortfoliosOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPortfoliosForProduct(sub { },ProductId => Str, [AcceptLanguage => Str, PageSize => Int, PageToken => Str])

=head2 ListAllPortfoliosForProduct(ProductId => Str, [AcceptLanguage => Str, PageSize => Int, PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PortfolioDetails, passing the object as the first parameter, and the string 'PortfolioDetails' as the second parameter 

If not, it will return a a L<Paws::ServiceCatalog::ListPortfoliosForProductOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPrincipalsForPortfolio(sub { },PortfolioId => Str, [AcceptLanguage => Str, PageSize => Int, PageToken => Str])

=head2 ListAllPrincipalsForPortfolio(PortfolioId => Str, [AcceptLanguage => Str, PageSize => Int, PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Principals, passing the object as the first parameter, and the string 'Principals' as the second parameter 

If not, it will return a a L<Paws::ServiceCatalog::ListPrincipalsForPortfolioOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProvisionedProductPlans(sub { },[AcceptLanguage => Str, AccessLevelFilter => L<Paws::ServiceCatalog::AccessLevelFilter>, PageSize => Int, PageToken => Str, ProvisionProductId => Str])

=head2 ListAllProvisionedProductPlans([AcceptLanguage => Str, AccessLevelFilter => L<Paws::ServiceCatalog::AccessLevelFilter>, PageSize => Int, PageToken => Str, ProvisionProductId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProvisionedProductPlans, passing the object as the first parameter, and the string 'ProvisionedProductPlans' as the second parameter 

If not, it will return a a L<Paws::ServiceCatalog::ListProvisionedProductPlansOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProvisioningArtifactsForServiceAction(sub { },ServiceActionId => Str, [AcceptLanguage => Str, PageSize => Int, PageToken => Str])

=head2 ListAllProvisioningArtifactsForServiceAction(ServiceActionId => Str, [AcceptLanguage => Str, PageSize => Int, PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProvisioningArtifactViews, passing the object as the first parameter, and the string 'ProvisioningArtifactViews' as the second parameter 

If not, it will return a a L<Paws::ServiceCatalog::ListProvisioningArtifactsForServiceActionOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRecordHistory(sub { },[AcceptLanguage => Str, AccessLevelFilter => L<Paws::ServiceCatalog::AccessLevelFilter>, PageSize => Int, PageToken => Str, SearchFilter => L<Paws::ServiceCatalog::ListRecordHistorySearchFilter>])

=head2 ListAllRecordHistory([AcceptLanguage => Str, AccessLevelFilter => L<Paws::ServiceCatalog::AccessLevelFilter>, PageSize => Int, PageToken => Str, SearchFilter => L<Paws::ServiceCatalog::ListRecordHistorySearchFilter>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RecordDetails, passing the object as the first parameter, and the string 'RecordDetails' as the second parameter 

If not, it will return a a L<Paws::ServiceCatalog::ListRecordHistoryOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResourcesForTagOption(sub { },TagOptionId => Str, [PageSize => Int, PageToken => Str, ResourceType => Str])

=head2 ListAllResourcesForTagOption(TagOptionId => Str, [PageSize => Int, PageToken => Str, ResourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceDetails, passing the object as the first parameter, and the string 'ResourceDetails' as the second parameter 

If not, it will return a a L<Paws::ServiceCatalog::ListResourcesForTagOptionOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServiceActions(sub { },[AcceptLanguage => Str, PageSize => Int, PageToken => Str])

=head2 ListAllServiceActions([AcceptLanguage => Str, PageSize => Int, PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ServiceActionSummaries, passing the object as the first parameter, and the string 'ServiceActionSummaries' as the second parameter 

If not, it will return a a L<Paws::ServiceCatalog::ListServiceActionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServiceActionsForProvisioningArtifact(sub { },ProductId => Str, ProvisioningArtifactId => Str, [AcceptLanguage => Str, PageSize => Int, PageToken => Str])

=head2 ListAllServiceActionsForProvisioningArtifact(ProductId => Str, ProvisioningArtifactId => Str, [AcceptLanguage => Str, PageSize => Int, PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ServiceActionSummaries, passing the object as the first parameter, and the string 'ServiceActionSummaries' as the second parameter 

If not, it will return a a L<Paws::ServiceCatalog::ListServiceActionsForProvisioningArtifactOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagOptions(sub { },[Filters => L<Paws::ServiceCatalog::ListTagOptionsFilters>, PageSize => Int, PageToken => Str])

=head2 ListAllTagOptions([Filters => L<Paws::ServiceCatalog::ListTagOptionsFilters>, PageSize => Int, PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TagOptionDetails, passing the object as the first parameter, and the string 'TagOptionDetails' as the second parameter 

If not, it will return a a L<Paws::ServiceCatalog::ListTagOptionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ScanAllProvisionedProducts(sub { },[AcceptLanguage => Str, AccessLevelFilter => L<Paws::ServiceCatalog::AccessLevelFilter>, PageSize => Int, PageToken => Str])

=head2 ScanAllProvisionedProducts([AcceptLanguage => Str, AccessLevelFilter => L<Paws::ServiceCatalog::AccessLevelFilter>, PageSize => Int, PageToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProvisionedProducts, passing the object as the first parameter, and the string 'ProvisionedProducts' as the second parameter 

If not, it will return a a L<Paws::ServiceCatalog::ScanProvisionedProductsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllProductsAsAdmin(sub { },[AcceptLanguage => Str, Filters => L<Paws::ServiceCatalog::ProductViewFilters>, PageSize => Int, PageToken => Str, PortfolioId => Str, ProductSource => Str, SortBy => Str, SortOrder => Str])

=head2 SearchAllProductsAsAdmin([AcceptLanguage => Str, Filters => L<Paws::ServiceCatalog::ProductViewFilters>, PageSize => Int, PageToken => Str, PortfolioId => Str, ProductSource => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProductViewDetails, passing the object as the first parameter, and the string 'ProductViewDetails' as the second parameter 

If not, it will return a a L<Paws::ServiceCatalog::SearchProductsAsAdminOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

