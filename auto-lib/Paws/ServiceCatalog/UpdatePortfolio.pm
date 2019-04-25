
package Paws::ServiceCatalog::UpdatePortfolio;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has AddTags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::Tag]');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has ProviderName => (is => 'ro', isa => 'Str');
  has RemoveTags => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePortfolio');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::UpdatePortfolioOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdatePortfolio - Arguments for method UpdatePortfolio on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePortfolio on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method UpdatePortfolio.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePortfolio.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $UpdatePortfolioOutput = $servicecatalog->UpdatePortfolio(
      Id             => 'MyId',
      AcceptLanguage => 'MyAcceptLanguage',    # OPTIONAL
      AddTags        => [
        {
          Key   => 'MyTagKey',                 # min: 1, max: 128
          Value => 'MyTagValue',               # min: 1, max: 256

        },
        ...
      ],                                       # OPTIONAL
      Description  => 'MyPortfolioDescription',    # OPTIONAL
      DisplayName  => 'MyPortfolioDisplayName',    # OPTIONAL
      ProviderName => 'MyProviderName',            # OPTIONAL
      RemoveTags   => [
        'MyTagKey', ...                            # min: 1, max: 128
      ],                                           # OPTIONAL
    );

    # Results:
    my $PortfolioDetail = $UpdatePortfolioOutput->PortfolioDetail;
    my $Tags            = $UpdatePortfolioOutput->Tags;

    # Returns a L<Paws::ServiceCatalog::UpdatePortfolioOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/UpdatePortfolio>

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




=head2 AddTags => ArrayRef[L<Paws::ServiceCatalog::Tag>]

The tags to add.



=head2 Description => Str

The updated description of the portfolio.



=head2 DisplayName => Str

The name to use for display purposes.



=head2 B<REQUIRED> Id => Str

The portfolio identifier.



=head2 ProviderName => Str

The updated name of the portfolio provider.



=head2 RemoveTags => ArrayRef[Str|Undef]

The tags to remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePortfolio in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

