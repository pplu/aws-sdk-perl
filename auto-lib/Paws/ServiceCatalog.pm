package Paws::ServiceCatalog;
  use Moose;
  sub service { 'servicecatalog' }
  sub version { '2015-12-10' }
  sub target_prefix { 'AWS242ServiceCatalogService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
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
  sub AssociateTagOptionWithResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::AssociateTagOptionWithResource', @_);
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
  sub CreateProvisioningArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::CreateProvisioningArtifact', @_);
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
  sub DeleteProvisioningArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DeleteProvisioningArtifact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConstraint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DescribeConstraint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePortfolio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DescribePortfolio', @_);
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
  sub DescribeTagOption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DescribeTagOption', @_);
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
  sub DisassociateTagOptionFromResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DisassociateTagOptionFromResource', @_);
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
  sub ListProvisioningArtifacts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ListProvisioningArtifacts', @_);
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
  sub UpdateTagOption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::UpdateTagOption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AcceptPortfolioShare AssociatePrincipalWithPortfolio AssociateProductWithPortfolio AssociateTagOptionWithResource CreateConstraint CreatePortfolio CreatePortfolioShare CreateProduct CreateProvisioningArtifact CreateTagOption DeleteConstraint DeletePortfolio DeletePortfolioShare DeleteProduct DeleteProvisioningArtifact DescribeConstraint DescribePortfolio DescribeProduct DescribeProductAsAdmin DescribeProductView DescribeProvisionedProduct DescribeProvisioningArtifact DescribeProvisioningParameters DescribeRecord DescribeTagOption DisassociatePrincipalFromPortfolio DisassociateProductFromPortfolio DisassociateTagOptionFromResource ListAcceptedPortfolioShares ListConstraintsForPortfolio ListLaunchPaths ListPortfolioAccess ListPortfolios ListPortfoliosForProduct ListPrincipalsForPortfolio ListProvisioningArtifacts ListRecordHistory ListResourcesForTagOption ListTagOptions ProvisionProduct RejectPortfolioShare ScanProvisionedProducts SearchProducts SearchProductsAsAdmin TerminateProvisionedProduct UpdateConstraint UpdatePortfolio UpdateProduct UpdateProvisionedProduct UpdateProvisioningArtifact UpdateTagOption / }

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

B<Overview>

AWS Service Catalog allows organizations to create and manage catalogs
of IT services that are approved for use on AWS. This documentation
provides reference material for the AWS Service Catalog end user API.
To get the most out of this documentation, be familiar with the
terminology discussed in AWS Service Catalog Concepts.

I<Additional Resources>

=over

=item *

AWS Service Catalog Administrator Guide

=item *

AWS Service Catalog User Guide

=back


=head1 METHODS

=head2 AcceptPortfolioShare(PortfolioId => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::AcceptPortfolioShare>

Returns: a L<Paws::ServiceCatalog::AcceptPortfolioShareOutput> instance

  Accepts an offer to share a portfolio.


=head2 AssociatePrincipalWithPortfolio(PortfolioId => Str, PrincipalARN => Str, PrincipalType => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::AssociatePrincipalWithPortfolio>

Returns: a L<Paws::ServiceCatalog::AssociatePrincipalWithPortfolioOutput> instance

  Associates the specified principal ARN with the specified portfolio.


=head2 AssociateProductWithPortfolio(PortfolioId => Str, ProductId => Str, [AcceptLanguage => Str, SourcePortfolioId => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::AssociateProductWithPortfolio>

Returns: a L<Paws::ServiceCatalog::AssociateProductWithPortfolioOutput> instance

  Associates a product with a portfolio.


=head2 AssociateTagOptionWithResource(ResourceId => Str, TagOptionId => Str)

Each argument is described in detail in: L<Paws::ServiceCatalog::AssociateTagOptionWithResource>

Returns: a L<Paws::ServiceCatalog::AssociateTagOptionWithResourceOutput> instance

  Associate a TagOption identifier with a resource identifier.


=head2 CreateConstraint(IdempotencyToken => Str, Parameters => Str, PortfolioId => Str, ProductId => Str, Type => Str, [AcceptLanguage => Str, Description => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::CreateConstraint>

Returns: a L<Paws::ServiceCatalog::CreateConstraintOutput> instance

  Creates a new constraint. For more information, see Using Constraints.


=head2 CreatePortfolio(DisplayName => Str, IdempotencyToken => Str, ProviderName => Str, [AcceptLanguage => Str, Description => Str, Tags => ArrayRef[L<Paws::ServiceCatalog::Tag>]])

Each argument is described in detail in: L<Paws::ServiceCatalog::CreatePortfolio>

Returns: a L<Paws::ServiceCatalog::CreatePortfolioOutput> instance

  Creates a new portfolio.


=head2 CreatePortfolioShare(AccountId => Str, PortfolioId => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::CreatePortfolioShare>

Returns: a L<Paws::ServiceCatalog::CreatePortfolioShareOutput> instance

  Creates a new portfolio share.


=head2 CreateProduct(IdempotencyToken => Str, Name => Str, Owner => Str, ProductType => Str, ProvisioningArtifactParameters => L<Paws::ServiceCatalog::ProvisioningArtifactProperties>, [AcceptLanguage => Str, Description => Str, Distributor => Str, SupportDescription => Str, SupportEmail => Str, SupportUrl => Str, Tags => ArrayRef[L<Paws::ServiceCatalog::Tag>]])

Each argument is described in detail in: L<Paws::ServiceCatalog::CreateProduct>

Returns: a L<Paws::ServiceCatalog::CreateProductOutput> instance

  Creates a new product.


=head2 CreateProvisioningArtifact(IdempotencyToken => Str, Parameters => L<Paws::ServiceCatalog::ProvisioningArtifactProperties>, ProductId => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::CreateProvisioningArtifact>

Returns: a L<Paws::ServiceCatalog::CreateProvisioningArtifactOutput> instance

  Create a new provisioning artifact for the specified product. This
operation does not work with a product that has been shared with you.

See the bottom of this topic for an example JSON request.


=head2 CreateTagOption(Key => Str, Value => Str)

Each argument is described in detail in: L<Paws::ServiceCatalog::CreateTagOption>

Returns: a L<Paws::ServiceCatalog::CreateTagOptionOutput> instance

  Create a new TagOption.


=head2 DeleteConstraint(Id => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::DeleteConstraint>

Returns: a L<Paws::ServiceCatalog::DeleteConstraintOutput> instance

  Deletes the specified constraint.


=head2 DeletePortfolio(Id => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::DeletePortfolio>

Returns: a L<Paws::ServiceCatalog::DeletePortfolioOutput> instance

  Deletes the specified portfolio. This operation does not work with a
portfolio that has been shared with you or if it has products, users,
constraints, or shared accounts associated with it.


=head2 DeletePortfolioShare(AccountId => Str, PortfolioId => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::DeletePortfolioShare>

Returns: a L<Paws::ServiceCatalog::DeletePortfolioShareOutput> instance

  Deletes the specified portfolio share.


=head2 DeleteProduct(Id => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::DeleteProduct>

Returns: a L<Paws::ServiceCatalog::DeleteProductOutput> instance

  Deletes the specified product. This operation does not work with a
product that has been shared with you or is associated with a
portfolio.


=head2 DeleteProvisioningArtifact(ProductId => Str, ProvisioningArtifactId => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::DeleteProvisioningArtifact>

Returns: a L<Paws::ServiceCatalog::DeleteProvisioningArtifactOutput> instance

  Deletes the specified provisioning artifact. This operation does not
work on a provisioning artifact associated with a product that has been
shared with you, or on the last provisioning artifact associated with a
product (a product must have at least one provisioning artifact).


=head2 DescribeConstraint(Id => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeConstraint>

Returns: a L<Paws::ServiceCatalog::DescribeConstraintOutput> instance

  Retrieves detailed information for a specified constraint.


=head2 DescribePortfolio(Id => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribePortfolio>

Returns: a L<Paws::ServiceCatalog::DescribePortfolioOutput> instance

  Retrieves detailed information and any tags associated with the
specified portfolio.


=head2 DescribeProduct(Id => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeProduct>

Returns: a L<Paws::ServiceCatalog::DescribeProductOutput> instance

  Retrieves information about a specified product.

This operation is functionally identical to DescribeProductView except
that it takes as input C<ProductId> instead of C<ProductViewId>.


=head2 DescribeProductAsAdmin(Id => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeProductAsAdmin>

Returns: a L<Paws::ServiceCatalog::DescribeProductAsAdminOutput> instance

  Retrieves information about a specified product, run with administrator
access.


=head2 DescribeProductView(Id => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeProductView>

Returns: a L<Paws::ServiceCatalog::DescribeProductViewOutput> instance

  Retrieves information about a specified product.

This operation is functionally identical to DescribeProduct except that
it takes as input C<ProductViewId> instead of C<ProductId>.


=head2 DescribeProvisionedProduct(Id => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeProvisionedProduct>

Returns: a L<Paws::ServiceCatalog::DescribeProvisionedProductOutput> instance

  Retrieve detailed information about the provisioned product.


=head2 DescribeProvisioningArtifact(ProductId => Str, ProvisioningArtifactId => Str, [AcceptLanguage => Str, Verbose => Bool])

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeProvisioningArtifact>

Returns: a L<Paws::ServiceCatalog::DescribeProvisioningArtifactOutput> instance

  Retrieves detailed information about the specified provisioning
artifact.


=head2 DescribeProvisioningParameters(ProductId => Str, ProvisioningArtifactId => Str, [AcceptLanguage => Str, PathId => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeProvisioningParameters>

Returns: a L<Paws::ServiceCatalog::DescribeProvisioningParametersOutput> instance

  Provides information about parameters required to provision a specified
product in a specified manner. Use this operation to obtain the list of
C<ProvisioningArtifactParameters> parameters available to call the
ProvisionProduct operation for the specified product.

If the output contains a TagOption key with an empty list of values,
there is a TagOption conflict for that key. The end user cannot take
action to fix the conflict, and launch is not blocked. In subsequent
calls to the C<ProvisionProduct> operation, do not include conflicted
TagOption keys as tags. Calls to C<ProvisionProduct> with empty
TagOption values cause the error "Parameter validation failed: Missing
required parameter in Tags[I<N>]:I<Value> ". Calls to
C<ProvisionProduct> with conflicted TagOption keys automatically tag
the provisioned product with the conflicted keys with the value
"C<sc-tagoption-conflict-portfolioId-productId>".


=head2 DescribeRecord(Id => Str, [AcceptLanguage => Str, PageSize => Int, PageToken => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeRecord>

Returns: a L<Paws::ServiceCatalog::DescribeRecordOutput> instance

  Retrieves a paginated list of the full details of a specific request.
Use this operation after calling a request operation (ProvisionProduct,
TerminateProvisionedProduct, or UpdateProvisionedProduct).


=head2 DescribeTagOption(Id => Str)

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeTagOption>

Returns: a L<Paws::ServiceCatalog::DescribeTagOptionOutput> instance

  Describes a TagOption.


=head2 DisassociatePrincipalFromPortfolio(PortfolioId => Str, PrincipalARN => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::DisassociatePrincipalFromPortfolio>

Returns: a L<Paws::ServiceCatalog::DisassociatePrincipalFromPortfolioOutput> instance

  Disassociates a previously associated principal ARN from a specified
portfolio.


=head2 DisassociateProductFromPortfolio(PortfolioId => Str, ProductId => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::DisassociateProductFromPortfolio>

Returns: a L<Paws::ServiceCatalog::DisassociateProductFromPortfolioOutput> instance

  Disassociates the specified product from the specified portfolio.


=head2 DisassociateTagOptionFromResource(ResourceId => Str, TagOptionId => Str)

Each argument is described in detail in: L<Paws::ServiceCatalog::DisassociateTagOptionFromResource>

Returns: a L<Paws::ServiceCatalog::DisassociateTagOptionFromResourceOutput> instance

  Disassociates a TagOption from a resource.


=head2 ListAcceptedPortfolioShares([AcceptLanguage => Str, PageSize => Int, PageToken => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::ListAcceptedPortfolioShares>

Returns: a L<Paws::ServiceCatalog::ListAcceptedPortfolioSharesOutput> instance

  Lists details of all portfolios for which sharing was accepted by this
account.


=head2 ListConstraintsForPortfolio(PortfolioId => Str, [AcceptLanguage => Str, PageSize => Int, PageToken => Str, ProductId => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::ListConstraintsForPortfolio>

Returns: a L<Paws::ServiceCatalog::ListConstraintsForPortfolioOutput> instance

  Retrieves detailed constraint information for the specified portfolio
and product.


=head2 ListLaunchPaths(ProductId => Str, [AcceptLanguage => Str, PageSize => Int, PageToken => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::ListLaunchPaths>

Returns: a L<Paws::ServiceCatalog::ListLaunchPathsOutput> instance

  Returns a paginated list of all paths to a specified product. A path is
how the user has access to a specified product, and is necessary when
provisioning a product. A path also determines the constraints put on
the product.


=head2 ListPortfolioAccess(PortfolioId => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::ListPortfolioAccess>

Returns: a L<Paws::ServiceCatalog::ListPortfolioAccessOutput> instance

  Lists the account IDs that have been authorized sharing of the
specified portfolio.


=head2 ListPortfolios([AcceptLanguage => Str, PageSize => Int, PageToken => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::ListPortfolios>

Returns: a L<Paws::ServiceCatalog::ListPortfoliosOutput> instance

  Lists all portfolios in the catalog.


=head2 ListPortfoliosForProduct(ProductId => Str, [AcceptLanguage => Str, PageSize => Int, PageToken => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::ListPortfoliosForProduct>

Returns: a L<Paws::ServiceCatalog::ListPortfoliosForProductOutput> instance

  Lists all portfolios that the specified product is associated with.


=head2 ListPrincipalsForPortfolio(PortfolioId => Str, [AcceptLanguage => Str, PageSize => Int, PageToken => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::ListPrincipalsForPortfolio>

Returns: a L<Paws::ServiceCatalog::ListPrincipalsForPortfolioOutput> instance

  Lists all principal ARNs associated with the specified portfolio.


=head2 ListProvisioningArtifacts(ProductId => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::ListProvisioningArtifacts>

Returns: a L<Paws::ServiceCatalog::ListProvisioningArtifactsOutput> instance

  Lists all provisioning artifacts associated with the specified product.


=head2 ListRecordHistory([AcceptLanguage => Str, AccessLevelFilter => L<Paws::ServiceCatalog::AccessLevelFilter>, PageSize => Int, PageToken => Str, SearchFilter => L<Paws::ServiceCatalog::ListRecordHistorySearchFilter>])

Each argument is described in detail in: L<Paws::ServiceCatalog::ListRecordHistory>

Returns: a L<Paws::ServiceCatalog::ListRecordHistoryOutput> instance

  Returns a paginated list of all performed requests, in the form of
RecordDetails objects that are filtered as specified.


=head2 ListResourcesForTagOption(TagOptionId => Str, [PageSize => Int, PageToken => Str, ResourceType => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::ListResourcesForTagOption>

Returns: a L<Paws::ServiceCatalog::ListResourcesForTagOptionOutput> instance

  Lists resources associated with a TagOption.


=head2 ListTagOptions([Filters => L<Paws::ServiceCatalog::ListTagOptionsFilters>, PageSize => Int, PageToken => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::ListTagOptions>

Returns: a L<Paws::ServiceCatalog::ListTagOptionsOutput> instance

  Lists detailed TagOptions information.


=head2 ProvisionProduct(ProductId => Str, ProvisionedProductName => Str, ProvisioningArtifactId => Str, ProvisionToken => Str, [AcceptLanguage => Str, NotificationArns => ArrayRef[Str|Undef], PathId => Str, ProvisioningParameters => ArrayRef[L<Paws::ServiceCatalog::ProvisioningParameter>], Tags => ArrayRef[L<Paws::ServiceCatalog::Tag>]])

Each argument is described in detail in: L<Paws::ServiceCatalog::ProvisionProduct>

Returns: a L<Paws::ServiceCatalog::ProvisionProductOutput> instance

  Requests a I<provision> of a specified product. A I<provisioned
product> is a resourced instance for a product. For example,
provisioning a CloudFormation-template-backed product results in
launching a CloudFormation stack and all the underlying resources that
come with it.

You can check the status of this request using the DescribeRecord
operation. The error "Parameter validation failed: Missing required
parameter in Tags[I<N>]:I<Value>" indicates that your request contains
a tag which has a tag key but no corresponding tag value (value is
empty or null). Your call may have included values returned from a
C<DescribeProvisioningParameters> call that resulted in a TagOption key
with an empty list. This happens when TagOption keys are in conflict.
For more information, see DescribeProvisioningParameters.


=head2 RejectPortfolioShare(PortfolioId => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::RejectPortfolioShare>

Returns: a L<Paws::ServiceCatalog::RejectPortfolioShareOutput> instance

  Rejects an offer to share a portfolio.


=head2 ScanProvisionedProducts([AcceptLanguage => Str, AccessLevelFilter => L<Paws::ServiceCatalog::AccessLevelFilter>, PageSize => Int, PageToken => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::ScanProvisionedProducts>

Returns: a L<Paws::ServiceCatalog::ScanProvisionedProductsOutput> instance

  Returns a paginated list of all the ProvisionedProduct objects that are
currently available (not terminated).


=head2 SearchProducts([AcceptLanguage => Str, Filters => L<Paws::ServiceCatalog::ProductViewFilters>, PageSize => Int, PageToken => Str, SortBy => Str, SortOrder => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::SearchProducts>

Returns: a L<Paws::ServiceCatalog::SearchProductsOutput> instance

  Returns a paginated list all of the C<Products> objects to which the
caller has access.

The output of this operation can be used as input for other operations,
such as DescribeProductView.


=head2 SearchProductsAsAdmin([AcceptLanguage => Str, Filters => L<Paws::ServiceCatalog::ProductViewFilters>, PageSize => Int, PageToken => Str, PortfolioId => Str, ProductSource => Str, SortBy => Str, SortOrder => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::SearchProductsAsAdmin>

Returns: a L<Paws::ServiceCatalog::SearchProductsAsAdminOutput> instance

  Retrieves summary and status information about all products created
within the caller's account. If a portfolio ID is provided, this
operation retrieves information for only those products that are
associated with the specified portfolio.


=head2 TerminateProvisionedProduct(TerminateToken => Str, [AcceptLanguage => Str, IgnoreErrors => Bool, ProvisionedProductId => Str, ProvisionedProductName => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::TerminateProvisionedProduct>

Returns: a L<Paws::ServiceCatalog::TerminateProvisionedProductOutput> instance

  Requests termination of an existing ProvisionedProduct object. If there
are C<Tags> associated with the object, they are terminated when the
ProvisionedProduct object is terminated.

This operation does not delete any records associated with the
ProvisionedProduct object.

You can check the status of this request using the DescribeRecord
operation.


=head2 UpdateConstraint(Id => Str, [AcceptLanguage => Str, Description => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::UpdateConstraint>

Returns: a L<Paws::ServiceCatalog::UpdateConstraintOutput> instance

  Updates an existing constraint.


=head2 UpdatePortfolio(Id => Str, [AcceptLanguage => Str, AddTags => ArrayRef[L<Paws::ServiceCatalog::Tag>], Description => Str, DisplayName => Str, ProviderName => Str, RemoveTags => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::ServiceCatalog::UpdatePortfolio>

Returns: a L<Paws::ServiceCatalog::UpdatePortfolioOutput> instance

  Updates the specified portfolio's details. This operation does not work
with a product that has been shared with you.


=head2 UpdateProduct(Id => Str, [AcceptLanguage => Str, AddTags => ArrayRef[L<Paws::ServiceCatalog::Tag>], Description => Str, Distributor => Str, Name => Str, Owner => Str, RemoveTags => ArrayRef[Str|Undef], SupportDescription => Str, SupportEmail => Str, SupportUrl => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::UpdateProduct>

Returns: a L<Paws::ServiceCatalog::UpdateProductOutput> instance

  Updates an existing product.


=head2 UpdateProvisionedProduct(UpdateToken => Str, [AcceptLanguage => Str, PathId => Str, ProductId => Str, ProvisionedProductId => Str, ProvisionedProductName => Str, ProvisioningArtifactId => Str, ProvisioningParameters => ArrayRef[L<Paws::ServiceCatalog::UpdateProvisioningParameter>]])

Each argument is described in detail in: L<Paws::ServiceCatalog::UpdateProvisionedProduct>

Returns: a L<Paws::ServiceCatalog::UpdateProvisionedProductOutput> instance

  Requests updates to the configuration of an existing ProvisionedProduct
object. If there are tags associated with the object, they cannot be
updated or added with this operation. Depending on the specific updates
requested, this operation may update with no interruption, with some
interruption, or replace the ProvisionedProduct object entirely.

You can check the status of this request using the DescribeRecord
operation.


=head2 UpdateProvisioningArtifact(ProductId => Str, ProvisioningArtifactId => Str, [AcceptLanguage => Str, Description => Str, Name => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::UpdateProvisioningArtifact>

Returns: a L<Paws::ServiceCatalog::UpdateProvisioningArtifactOutput> instance

  Updates an existing provisioning artifact's information. This operation
does not work on a provisioning artifact associated with a product that
has been shared with you.


=head2 UpdateTagOption(Id => Str, [Active => Bool, Value => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::UpdateTagOption>

Returns: a L<Paws::ServiceCatalog::UpdateTagOptionOutput> instance

  Updates an existing TagOption.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

