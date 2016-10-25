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

  
  sub DescribeProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DescribeProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProductView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::DescribeProductView', @_);
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
  sub ListLaunchPaths {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ListLaunchPaths', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecordHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ListRecordHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ProvisionProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::ProvisionProduct', @_);
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
  sub TerminateProvisionedProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::TerminateProvisionedProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProvisionedProduct {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceCatalog::UpdateProvisionedProduct', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/DescribeProduct DescribeProductView DescribeProvisioningParameters DescribeRecord ListLaunchPaths ListRecordHistory ProvisionProduct ScanProvisionedProducts SearchProducts TerminateProvisionedProduct UpdateProvisionedProduct / }

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
To get the most out of this documentation, you need to be familiar with
the terminology discussed in AWS Service Catalog Concepts.

I<Additional Resources>

=over

=item *

AWS Service Catalog Administrator Guide

=item *

AWS Service Catalog User Guide

=back


=head1 METHODS

=head2 DescribeProduct(Id => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeProduct>

Returns: a L<Paws::ServiceCatalog::DescribeProductOutput> instance

  Retrieves information about a specified product.

This operation is functionally identical to DescribeProductView except
that it takes as input C<ProductId> instead of C<ProductViewId>.


=head2 DescribeProductView(Id => Str, [AcceptLanguage => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeProductView>

Returns: a L<Paws::ServiceCatalog::DescribeProductViewOutput> instance

  Retrieves information about a specified product.

This operation is functionally identical to DescribeProduct except that
it takes as input C<ProductViewId> instead of C<ProductId>.


=head2 DescribeProvisioningParameters(ProductId => Str, ProvisioningArtifactId => Str, [AcceptLanguage => Str, PathId => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeProvisioningParameters>

Returns: a L<Paws::ServiceCatalog::DescribeProvisioningParametersOutput> instance

  Provides information about parameters required to provision a specified
product in a specified manner. Use this operation to obtain the list of
C<ProvisioningArtifactParameters> parameters available to call the
ProvisionProduct operation for the specified product.


=head2 DescribeRecord(Id => Str, [AcceptLanguage => Str, PageSize => Int, PageToken => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::DescribeRecord>

Returns: a L<Paws::ServiceCatalog::DescribeRecordOutput> instance

  Retrieves a paginated list of the full details of a specific request.
Use this operation after calling a request operation (ProvisionProduct,
TerminateProvisionedProduct, or UpdateProvisionedProduct).


=head2 ListLaunchPaths(ProductId => Str, [AcceptLanguage => Str, PageSize => Int, PageToken => Str])

Each argument is described in detail in: L<Paws::ServiceCatalog::ListLaunchPaths>

Returns: a L<Paws::ServiceCatalog::ListLaunchPathsOutput> instance

  Returns a paginated list of all paths to a specified product. A path is
how the user has access to a specified product, and is necessary when
provisioning a product. A path also determines the constraints put on
the product.


=head2 ListRecordHistory([AcceptLanguage => Str, AccessLevelFilter => L<Paws::ServiceCatalog::AccessLevelFilter>, PageSize => Int, PageToken => Str, SearchFilter => L<Paws::ServiceCatalog::ListRecordHistorySearchFilter>])

Each argument is described in detail in: L<Paws::ServiceCatalog::ListRecordHistory>

Returns: a L<Paws::ServiceCatalog::ListRecordHistoryOutput> instance

  Returns a paginated list of all performed requests, in the form of
RecordDetails objects that are filtered as specified.


=head2 ProvisionProduct(ProductId => Str, ProvisionedProductName => Str, ProvisioningArtifactId => Str, ProvisionToken => Str, [AcceptLanguage => Str, NotificationArns => ArrayRef[Str|Undef], PathId => Str, ProvisioningParameters => ArrayRef[L<Paws::ServiceCatalog::ProvisioningParameter>], Tags => ArrayRef[L<Paws::ServiceCatalog::Tag>]])

Each argument is described in detail in: L<Paws::ServiceCatalog::ProvisionProduct>

Returns: a L<Paws::ServiceCatalog::ProvisionProductOutput> instance

  Requests a I<Provision> of a specified product. A I<ProvisionedProduct>
is a resourced instance for a product. For example, provisioning a
CloudFormation-template-backed product results in launching a
CloudFormation stack and all the underlying resources that come with
it.

You can check the status of this request using the DescribeRecord
operation.


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




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

