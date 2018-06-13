
package Paws::ServiceCatalog::AssociateProductWithPortfolio;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has PortfolioId => (is => 'ro', isa => 'Str', required => 1);
  has ProductId => (is => 'ro', isa => 'Str', required => 1);
  has SourcePortfolioId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateProductWithPortfolio');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::AssociateProductWithPortfolioOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::AssociateProductWithPortfolio - Arguments for method AssociateProductWithPortfolio on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateProductWithPortfolio on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method AssociateProductWithPortfolio.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateProductWithPortfolio.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $AssociateProductWithPortfolioOutput =
      $servicecatalog->AssociateProductWithPortfolio(
      PortfolioId       => 'MyId',
      ProductId         => 'MyId',
      AcceptLanguage    => 'MyAcceptLanguage',    # OPTIONAL
      SourcePortfolioId => 'MyId',                # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/AssociateProductWithPortfolio>

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code.

=over

=item *

C<en> - English (default)

=item *

C<jp> - Japanese

=item *

C<zh> - Chinese

=back




=head2 B<REQUIRED> PortfolioId => Str

The portfolio identifier.



=head2 B<REQUIRED> ProductId => Str

The product identifier.



=head2 SourcePortfolioId => Str

The identifier of the source portfolio.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateProductWithPortfolio in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

