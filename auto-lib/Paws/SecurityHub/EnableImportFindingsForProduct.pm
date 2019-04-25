
package Paws::SecurityHub::EnableImportFindingsForProduct;
  use Moose;
  has ProductArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableImportFindingsForProduct');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/productSubscriptions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::EnableImportFindingsForProductResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::EnableImportFindingsForProduct - Arguments for method EnableImportFindingsForProduct on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableImportFindingsForProduct on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method EnableImportFindingsForProduct.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableImportFindingsForProduct.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $EnableImportFindingsForProductResponse =
      $securityhub->EnableImportFindingsForProduct(
      ProductArn => 'MyNonEmptyString',

      );

    # Results:
    my $ProductSubscriptionArn =
      $EnableImportFindingsForProductResponse->ProductSubscriptionArn;

# Returns a L<Paws::SecurityHub::EnableImportFindingsForProductResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/EnableImportFindingsForProduct>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProductArn => Str

The ARN of the product that generates findings that you want to import
into Security Hub.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableImportFindingsForProduct in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

