
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
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method CreatePortfolio.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePortfolio.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $CreatePortfolioOutput = $servicecatalog->CreatePortfolio(
      DisplayName      => 'MyPortfolioDisplayName',
      IdempotencyToken => 'MyIdempotencyToken',
      ProviderName     => 'MyProviderName',
      AcceptLanguage   => 'MyAcceptLanguage',          # OPTIONAL
      Description      => 'MyPortfolioDescription',    # OPTIONAL
      Tags             => [
        {
          Key   => 'MyTagKey',                         # min: 1, max: 128
          Value => 'MyTagValue',                       # min: 1, max: 256

        },
        ...
      ],                                               # OPTIONAL
    );

    # Results:
    my $PortfolioDetail = $CreatePortfolioOutput->PortfolioDetail;
    my $Tags            = $CreatePortfolioOutput->Tags;

    # Returns a L<Paws::ServiceCatalog::CreatePortfolioOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/CreatePortfolio>

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

One or more tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePortfolio in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

