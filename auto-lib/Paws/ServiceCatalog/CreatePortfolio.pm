
package Paws::ServiceCatalog::CreatePortfolio;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str', required => 1);
  has IdempotencyToken => (is => 'ro', isa => 'Str', required => 1);
  has ProviderName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePortfolio');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::CreatePortfolioOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CreatePortfolio - Arguments for method CreatePortfolio on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePortfolio on the 
AWS Service Catalog service. Use the attributes of this class
as arguments to method CreatePortfolio.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePortfolio.

As an example:

  $service_obj->CreatePortfolio(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

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




=head2 Description => Str

The description of the portfolio.



=head2 B<REQUIRED> DisplayName => Str

The name to use for display purposes.



=head2 B<REQUIRED> IdempotencyToken => Str

A unique identifier that you provide to ensure idempotency. If multiple
requests differ only by the idempotency token, the same response is
returned for each repeated request.



=head2 B<REQUIRED> ProviderName => Str

The name of the portfolio provider.



=head2 Tags => ArrayRef[L<Paws::ServiceCatalog::Tag>]

The tags to associate with the portfolio.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePortfolio in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

