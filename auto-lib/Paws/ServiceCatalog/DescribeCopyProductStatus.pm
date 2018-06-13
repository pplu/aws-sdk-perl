
package Paws::ServiceCatalog::DescribeCopyProductStatus;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has CopyProductToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCopyProductStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::DescribeCopyProductStatusOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeCopyProductStatus - Arguments for method DescribeCopyProductStatus on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCopyProductStatus on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method DescribeCopyProductStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCopyProductStatus.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $DescribeCopyProductStatusOutput =
      $servicecatalog->DescribeCopyProductStatus(
      CopyProductToken => 'MyId',
      AcceptLanguage   => 'MyAcceptLanguage',    # OPTIONAL
      );

    # Results:
    my $CopyProductStatus = $DescribeCopyProductStatusOutput->CopyProductStatus;
    my $StatusDetail      = $DescribeCopyProductStatusOutput->StatusDetail;
    my $TargetProductId   = $DescribeCopyProductStatusOutput->TargetProductId;

    # Returns a L<Paws::ServiceCatalog::DescribeCopyProductStatusOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/DescribeCopyProductStatus>

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




=head2 B<REQUIRED> CopyProductToken => Str

The token for the copy product operation. This token is returned by
CopyProduct.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCopyProductStatus in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

