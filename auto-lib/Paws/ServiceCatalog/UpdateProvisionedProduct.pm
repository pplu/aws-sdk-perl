# Generated from json/callargs_class.tt

package Paws::ServiceCatalog::UpdateProvisionedProduct;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_Tag ServiceCatalog_UpdateProvisioningPreferences ServiceCatalog_UpdateProvisioningParameter/;
  has AcceptLanguage => (is => 'ro', isa => Str, predicate => 1);
  has PathId => (is => 'ro', isa => Str, predicate => 1);
  has ProductId => (is => 'ro', isa => Str, predicate => 1);
  has ProvisionedProductId => (is => 'ro', isa => Str, predicate => 1);
  has ProvisionedProductName => (is => 'ro', isa => Str, predicate => 1);
  has ProvisioningArtifactId => (is => 'ro', isa => Str, predicate => 1);
  has ProvisioningParameters => (is => 'ro', isa => ArrayRef[ServiceCatalog_UpdateProvisioningParameter], predicate => 1);
  has ProvisioningPreferences => (is => 'ro', isa => ServiceCatalog_UpdateProvisioningPreferences, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[ServiceCatalog_Tag], predicate => 1);
  has UpdateToken => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateProvisionedProduct');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ServiceCatalog::UpdateProvisionedProductOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PathId' => {
                             'type' => 'Str'
                           },
               'UpdateToken' => {
                                  'type' => 'Str'
                                },
               'ProvisionedProductId' => {
                                           'type' => 'Str'
                                         },
               'ProvisioningPreferences' => {
                                              'class' => 'Paws::ServiceCatalog::UpdateProvisioningPreferences',
                                              'type' => 'ServiceCatalog_UpdateProvisioningPreferences'
                                            },
               'ProductId' => {
                                'type' => 'Str'
                              },
               'ProvisioningParameters' => {
                                             'class' => 'Paws::ServiceCatalog::UpdateProvisioningParameter',
                                             'type' => 'ArrayRef[ServiceCatalog_UpdateProvisioningParameter]'
                                           },
               'AcceptLanguage' => {
                                     'type' => 'Str'
                                   },
               'ProvisionedProductName' => {
                                             'type' => 'Str'
                                           },
               'ProvisioningArtifactId' => {
                                             'type' => 'Str'
                                           },
               'Tags' => {
                           'class' => 'Paws::ServiceCatalog::Tag',
                           'type' => 'ArrayRef[ServiceCatalog_Tag]'
                         }
             },
  'IsRequired' => {
                    'UpdateToken' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdateProvisionedProduct - Arguments for method UpdateProvisionedProduct on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProvisionedProduct on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method UpdateProvisionedProduct.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProvisionedProduct.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $UpdateProvisionedProductOutput =
      $servicecatalog->UpdateProvisionedProduct(
      UpdateToken            => 'MyIdempotencyToken',
      AcceptLanguage         => 'MyAcceptLanguage',                 # OPTIONAL
      PathId                 => 'MyId',                             # OPTIONAL
      ProductId              => 'MyId',                             # OPTIONAL
      ProvisionedProductId   => 'MyId',                             # OPTIONAL
      ProvisionedProductName => 'MyProvisionedProductNameOrArn',    # OPTIONAL
      ProvisioningArtifactId => 'MyId',                             # OPTIONAL
      ProvisioningParameters => [
        {
          Key              => 'MyParameterKey',    # min: 1, max: 1000; OPTIONAL
          UsePreviousValue => 1,                   # OPTIONAL
          Value            => 'MyParameterValue',  # max: 4096; OPTIONAL
        },
        ...
      ],                                           # OPTIONAL
      ProvisioningPreferences => {
        StackSetAccounts => [ 'MyAccountId', ... ],    # OPTIONAL
        StackSetFailureToleranceCount => 1,            # OPTIONAL
        StackSetFailureTolerancePercentage => 1,    # max: 100; OPTIONAL
        StackSetMaxConcurrencyCount        => 1,    # min: 1; OPTIONAL
        StackSetMaxConcurrencyPercentage   => 1,    # min: 1, max: 100; OPTIONAL
        StackSetOperationType =>
          'CREATE',    # values: CREATE, UPDATE, DELETE; OPTIONAL
        StackSetRegions => [ 'MyRegion', ... ],    # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],                            # OPTIONAL
      );

    # Results:
    my $RecordDetail = $UpdateProvisionedProductOutput->RecordDetail;

    # Returns a L<Paws::ServiceCatalog::UpdateProvisionedProductOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/UpdateProvisionedProduct>

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




=head2 PathId => Str

The new path identifier. This value is optional if the product has a
default path, and required if the product has more than one path.



=head2 ProductId => Str

The identifier of the product.



=head2 ProvisionedProductId => Str

The identifier of the provisioned product. You cannot specify both
C<ProvisionedProductName> and C<ProvisionedProductId>.



=head2 ProvisionedProductName => Str

The name of the provisioned product. You cannot specify both
C<ProvisionedProductName> and C<ProvisionedProductId>.



=head2 ProvisioningArtifactId => Str

The identifier of the provisioning artifact.



=head2 ProvisioningParameters => ArrayRef[ServiceCatalog_UpdateProvisioningParameter]

The new parameters.



=head2 ProvisioningPreferences => ServiceCatalog_UpdateProvisioningPreferences

An object that contains information about the provisioning preferences
for a stack set.



=head2 Tags => ArrayRef[ServiceCatalog_Tag]

One or more tags. Requires the product to have C<RESOURCE_UPDATE>
constraint with C<TagUpdatesOnProvisionedProduct> set to C<ALLOWED> to
allow tag updates.



=head2 B<REQUIRED> UpdateToken => Str

The idempotency token that uniquely identifies the provisioning update
request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProvisionedProduct in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

