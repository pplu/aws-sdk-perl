
package Paws::ServiceCatalog::DeletePortfolioShare;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has AccountId => (is => 'ro', isa => 'Str');
  has OrganizationNode => (is => 'ro', isa => 'Paws::ServiceCatalog::OrganizationNode');
  has PortfolioId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePortfolioShare');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::DeletePortfolioShareOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DeletePortfolioShare - Arguments for method DeletePortfolioShare on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePortfolioShare on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method DeletePortfolioShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePortfolioShare.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $DeletePortfolioShareOutput = $servicecatalog->DeletePortfolioShare(
      PortfolioId      => 'MyId',
      AcceptLanguage   => 'MyAcceptLanguage',    # OPTIONAL
      AccountId        => 'MyAccountId',         # OPTIONAL
      OrganizationNode => {
        Type => 'ORGANIZATION'
        ,    # values: ORGANIZATION, ORGANIZATIONAL_UNIT, ACCOUNT; OPTIONAL
        Value => 'MyOrganizationNodeValue',    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $PortfolioShareToken = $DeletePortfolioShareOutput->PortfolioShareToken;

    # Returns a L<Paws::ServiceCatalog::DeletePortfolioShareOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/DeletePortfolioShare>

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




=head2 AccountId => Str

The AWS account ID.



=head2 OrganizationNode => L<Paws::ServiceCatalog::OrganizationNode>

The organization node to whom you are going to stop sharing.



=head2 B<REQUIRED> PortfolioId => Str

The portfolio identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePortfolioShare in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

