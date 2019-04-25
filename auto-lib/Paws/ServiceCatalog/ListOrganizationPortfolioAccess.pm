
package Paws::ServiceCatalog::ListOrganizationPortfolioAccess;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has OrganizationNodeType => (is => 'ro', isa => 'Str', required => 1);
  has PageSize => (is => 'ro', isa => 'Int');
  has PageToken => (is => 'ro', isa => 'Str');
  has PortfolioId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOrganizationPortfolioAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::ListOrganizationPortfolioAccessOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListOrganizationPortfolioAccess - Arguments for method ListOrganizationPortfolioAccess on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOrganizationPortfolioAccess on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method ListOrganizationPortfolioAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOrganizationPortfolioAccess.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $ListOrganizationPortfolioAccessOutput =
      $servicecatalog->ListOrganizationPortfolioAccess(
      OrganizationNodeType => 'ORGANIZATION',
      PortfolioId          => 'MyId',
      AcceptLanguage       => 'MyAcceptLanguage',    # OPTIONAL
      PageSize             => 1,                     # OPTIONAL
      PageToken            => 'MyPageToken',         # OPTIONAL
      );

    # Results:
    my $NextPageToken = $ListOrganizationPortfolioAccessOutput->NextPageToken;
    my $OrganizationNodes =
      $ListOrganizationPortfolioAccessOutput->OrganizationNodes;

# Returns a L<Paws::ServiceCatalog::ListOrganizationPortfolioAccessOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/ListOrganizationPortfolioAccess>

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




=head2 B<REQUIRED> OrganizationNodeType => Str

The organization node type that will be returned in the output.

=over

=item *

C<ORGANIZATION> - Organization that has access to the portfolio.

=item *

C<ORGANIZATIONAL_UNIT> - Organizational unit that has access to the
portfolio within your organization.

=item *

C<ACCOUNT> - Account that has access to the portfolio within your
organization.

=back


Valid values are: C<"ORGANIZATION">, C<"ORGANIZATIONAL_UNIT">, C<"ACCOUNT">

=head2 PageSize => Int

The maximum number of items to return with this call.



=head2 PageToken => Str

The page token for the next set of results. To retrieve the first set
of results, use null.



=head2 B<REQUIRED> PortfolioId => Str

The portfolio identifier. For example, C<port-2abcdext3y5fk>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOrganizationPortfolioAccess in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

