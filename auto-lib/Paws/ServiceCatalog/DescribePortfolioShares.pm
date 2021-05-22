
package Paws::ServiceCatalog::DescribePortfolioShares;
  use Moose;
  has PageSize => (is => 'ro', isa => 'Int');
  has PageToken => (is => 'ro', isa => 'Str');
  has PortfolioId => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePortfolioShares');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::DescribePortfolioSharesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribePortfolioShares - Arguments for method DescribePortfolioShares on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePortfolioShares on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method DescribePortfolioShares.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePortfolioShares.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $DescribePortfolioSharesOutput =
      $servicecatalog->DescribePortfolioShares(
      PortfolioId => 'MyId',
      Type        => 'ACCOUNT',
      PageSize    => 1,                # OPTIONAL
      PageToken   => 'MyPageToken',    # OPTIONAL
      );

    # Results:
    my $NextPageToken = $DescribePortfolioSharesOutput->NextPageToken;
    my $PortfolioShareDetails =
      $DescribePortfolioSharesOutput->PortfolioShareDetails;

    # Returns a L<Paws::ServiceCatalog::DescribePortfolioSharesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/DescribePortfolioShares>

=head1 ATTRIBUTES


=head2 PageSize => Int

The maximum number of items to return with this call.



=head2 PageToken => Str

The page token for the next set of results. To retrieve the first set
of results, use null.



=head2 B<REQUIRED> PortfolioId => Str

The unique identifier of the portfolio for which shares will be
retrieved.



=head2 B<REQUIRED> Type => Str

The type of portfolio share to summarize. This field acts as a filter
on the type of portfolio share, which can be one of the following:

1. C<ACCOUNT> - Represents an external account to account share.

2. C<ORGANIZATION> - Represents a share to an organization. This share
is available to every account in the organization.

3. C<ORGANIZATIONAL_UNIT> - Represents a share to an organizational
unit.

4. C<ORGANIZATION_MEMBER_ACCOUNT> - Represents a share to an account in
the organization.

Valid values are: C<"ACCOUNT">, C<"ORGANIZATION">, C<"ORGANIZATIONAL_UNIT">, C<"ORGANIZATION_MEMBER_ACCOUNT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePortfolioShares in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

