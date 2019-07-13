
package Paws::ServiceCatalog::RejectPortfolioShare;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has PortfolioId => (is => 'ro', isa => 'Str', required => 1);
  has PortfolioShareType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RejectPortfolioShare');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::RejectPortfolioShareOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::RejectPortfolioShare - Arguments for method RejectPortfolioShare on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RejectPortfolioShare on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method RejectPortfolioShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RejectPortfolioShare.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $RejectPortfolioShareOutput = $servicecatalog->RejectPortfolioShare(
      PortfolioId        => 'MyId',
      AcceptLanguage     => 'MyAcceptLanguage',    # OPTIONAL
      PortfolioShareType => 'IMPORTED',            # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/RejectPortfolioShare>

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



=head2 PortfolioShareType => Str

The type of shared portfolios to reject. The default is to reject
imported portfolios.

=over

=item *

C<AWS_ORGANIZATIONS> - Reject portfolios shared by the master account
of your organization.

=item *

C<IMPORTED> - Reject imported portfolios.

=item *

C<AWS_SERVICECATALOG> - Not supported. (Throws
ResourceNotFoundException.)

=back

For example, C<aws servicecatalog reject-portfolio-share --portfolio-id
"port-2qwzkwxt3y5fk" --portfolio-share-type AWS_ORGANIZATIONS>

Valid values are: C<"IMPORTED">, C<"AWS_SERVICECATALOG">, C<"AWS_ORGANIZATIONS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RejectPortfolioShare in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

