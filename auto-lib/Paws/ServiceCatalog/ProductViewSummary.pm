package Paws::ServiceCatalog::ProductViewSummary;
  use Moose;
  has Distributor => (is => 'ro', isa => 'Str');
  has HasDefaultPath => (is => 'ro', isa => 'Bool');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Str');
  has ProductId => (is => 'ro', isa => 'Str');
  has ShortDescription => (is => 'ro', isa => 'Str');
  has SupportDescription => (is => 'ro', isa => 'Str');
  has SupportEmail => (is => 'ro', isa => 'Str');
  has SupportUrl => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ProductViewSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ProductViewSummary object:

  $service_obj->Method(Att1 => { Distributor => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ProductViewSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Distributor

=head1 DESCRIPTION

Summary information about a product view.

=head1 ATTRIBUTES


=head2 Distributor => Str

  The distributor of the product. Contact the product administrator for
the significance of this value.


=head2 HasDefaultPath => Bool

  Indicates whether the product has a default path. If the product does
not have a default path, call ListLaunchPaths to disambiguate between
paths. Otherwise, ListLaunchPaths is not required, and the output of
ProductViewSummary can be used directly with
DescribeProvisioningParameters.


=head2 Id => Str

  The product view identifier.


=head2 Name => Str

  The name of the product.


=head2 Owner => Str

  The owner of the product. Contact the product administrator for the
significance of this value.


=head2 ProductId => Str

  The product identifier.


=head2 ShortDescription => Str

  Short description of the product.


=head2 SupportDescription => Str

  The description of the support for this Product.


=head2 SupportEmail => Str

  The email contact information to obtain support for this Product.


=head2 SupportUrl => Str

  The URL information to obtain support for this Product.


=head2 Type => Str

  The product type. Contact the product administrator for the
significance of this value. If this value is C<MARKETPLACE>, the
product was created by AWS Marketplace.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

