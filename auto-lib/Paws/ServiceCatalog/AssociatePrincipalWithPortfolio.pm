
package Paws::ServiceCatalog::AssociatePrincipalWithPortfolio;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has PortfolioId => (is => 'ro', isa => 'Str', required => 1);
  has PrincipalARN => (is => 'ro', isa => 'Str', required => 1);
  has PrincipalType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociatePrincipalWithPortfolio');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::AssociatePrincipalWithPortfolioOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::AssociatePrincipalWithPortfolio - Arguments for method AssociatePrincipalWithPortfolio on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociatePrincipalWithPortfolio on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method AssociatePrincipalWithPortfolio.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociatePrincipalWithPortfolio.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $AssociatePrincipalWithPortfolioOutput =
      $servicecatalog->AssociatePrincipalWithPortfolio(
      PortfolioId    => 'MyId',
      PrincipalARN   => 'MyPrincipalARN',
      PrincipalType  => 'IAM',
      AcceptLanguage => 'MyAcceptLanguage',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/AssociatePrincipalWithPortfolio>

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



=head2 B<REQUIRED> PrincipalARN => Str

The ARN of the principal (IAM user, role, or group).



=head2 B<REQUIRED> PrincipalType => Str

The principal type. The supported value is C<IAM>.

Valid values are: C<"IAM">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociatePrincipalWithPortfolio in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

