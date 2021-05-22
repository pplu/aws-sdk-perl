
package Paws::ServiceCatalog::UpdatePortfolioShare;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has AccountId => (is => 'ro', isa => 'Str');
  has OrganizationNode => (is => 'ro', isa => 'Paws::ServiceCatalog::OrganizationNode');
  has PortfolioId => (is => 'ro', isa => 'Str', required => 1);
  has ShareTagOptions => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePortfolioShare');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::UpdatePortfolioShareOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdatePortfolioShare - Arguments for method UpdatePortfolioShare on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePortfolioShare on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method UpdatePortfolioShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePortfolioShare.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $UpdatePortfolioShareOutput = $servicecatalog->UpdatePortfolioShare(
      PortfolioId      => 'MyId',
      AcceptLanguage   => 'MyAcceptLanguage',    # OPTIONAL
      AccountId        => 'MyAccountId',         # OPTIONAL
      OrganizationNode => {
        Type => 'ORGANIZATION'
        ,    # values: ORGANIZATION, ORGANIZATIONAL_UNIT, ACCOUNT; OPTIONAL
        Value => 'MyOrganizationNodeValue',    # OPTIONAL
      },    # OPTIONAL
      ShareTagOptions => 1,    # OPTIONAL
    );

    # Results:
    my $PortfolioShareToken = $UpdatePortfolioShareOutput->PortfolioShareToken;
    my $Status              = $UpdatePortfolioShareOutput->Status;

    # Returns a L<Paws::ServiceCatalog::UpdatePortfolioShareOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/UpdatePortfolioShare>

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

The AWS Account Id of the recipient account. This field is required
when updating an external account to account type share.



=head2 OrganizationNode => L<Paws::ServiceCatalog::OrganizationNode>





=head2 B<REQUIRED> PortfolioId => Str

The unique identifier of the portfolio for which the share will be
updated.



=head2 ShareTagOptions => Bool

A flag to enable or disable TagOptions sharing for the portfolio share.
If this field is not provided, the current state of TagOptions sharing
on the portfolio share will not be modified.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePortfolioShare in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

