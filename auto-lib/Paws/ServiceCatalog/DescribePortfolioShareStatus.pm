
package Paws::ServiceCatalog::DescribePortfolioShareStatus;
  use Moose;
  has PortfolioShareToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePortfolioShareStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::DescribePortfolioShareStatusOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribePortfolioShareStatus - Arguments for method DescribePortfolioShareStatus on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePortfolioShareStatus on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method DescribePortfolioShareStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePortfolioShareStatus.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $DescribePortfolioShareStatusOutput =
      $servicecatalog->DescribePortfolioShareStatus(
      PortfolioShareToken => 'MyPortfolioShareToken',

      );

    # Results:
    my $OrganizationNodeValue =
      $DescribePortfolioShareStatusOutput->OrganizationNodeValue;
    my $PortfolioId = $DescribePortfolioShareStatusOutput->PortfolioId;
    my $PortfolioShareToken =
      $DescribePortfolioShareStatusOutput->PortfolioShareToken;
    my $ShareDetails = $DescribePortfolioShareStatusOutput->ShareDetails;
    my $Status       = $DescribePortfolioShareStatusOutput->Status;

 # Returns a L<Paws::ServiceCatalog::DescribePortfolioShareStatusOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/DescribePortfolioShareStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PortfolioShareToken => Str

The token for the portfolio share operation. This token is returned
either by CreatePortfolioShare or by DeletePortfolioShare.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePortfolioShareStatus in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

