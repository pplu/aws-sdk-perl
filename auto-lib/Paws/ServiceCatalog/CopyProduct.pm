
package Paws::ServiceCatalog::CopyProduct;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has CopyOptions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has IdempotencyToken => (is => 'ro', isa => 'Str', required => 1);
  has SourceProductArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceProvisioningArtifactIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::SourceProvisioningArtifactPropertiesMap]');
  has TargetProductId => (is => 'ro', isa => 'Str');
  has TargetProductName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyProduct');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::CopyProductOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CopyProduct - Arguments for method CopyProduct on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyProduct on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method CopyProduct.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyProduct.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $CopyProductOutput = $servicecatalog->CopyProduct(
      IdempotencyToken => 'MyIdempotencyToken',
      SourceProductArn => 'MyProductArn',
      AcceptLanguage   => 'MyAcceptLanguage',     # OPTIONAL
      CopyOptions      => [
        'CopyTags', ...                           # values: CopyTags
      ],                                          # OPTIONAL
      SourceProvisioningArtifactIdentifiers => [
        {
          'Id' => 'MyProvisioningArtifactPropertyValue',    # key: values: Id
        },
        ...
      ],                                                    # OPTIONAL
      TargetProductId   => 'MyId',                          # OPTIONAL
      TargetProductName => 'MyProductViewName',             # OPTIONAL
    );

    # Results:
    my $CopyProductToken = $CopyProductOutput->CopyProductToken;

    # Returns a L<Paws::ServiceCatalog::CopyProductOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/CopyProduct>

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




=head2 CopyOptions => ArrayRef[Str|Undef]

The copy options. If the value is C<CopyTags>, the tags from the source
product are copied to the target product.



=head2 B<REQUIRED> IdempotencyToken => Str

A unique identifier that you provide to ensure idempotency. If multiple
requests differ only by the idempotency token, the same response is
returned for each repeated request.



=head2 B<REQUIRED> SourceProductArn => Str

The Amazon Resource Name (ARN) of the source product.



=head2 SourceProvisioningArtifactIdentifiers => ArrayRef[L<Paws::ServiceCatalog::SourceProvisioningArtifactPropertiesMap>]

The identifiers of the provisioning artifacts (also known as versions)
of the product to copy. By default, all provisioning artifacts are
copied.



=head2 TargetProductId => Str

The identifier of the target product. By default, a new product is
created.



=head2 TargetProductName => Str

A name for the target product. The default is the name of the source
product.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyProduct in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

