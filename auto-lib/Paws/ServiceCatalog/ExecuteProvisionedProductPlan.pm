
package Paws::ServiceCatalog::ExecuteProvisionedProductPlan;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has IdempotencyToken => (is => 'ro', isa => 'Str', required => 1);
  has PlanId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecuteProvisionedProductPlan');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::ExecuteProvisionedProductPlanOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ExecuteProvisionedProductPlan - Arguments for method ExecuteProvisionedProductPlan on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExecuteProvisionedProductPlan on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method ExecuteProvisionedProductPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExecuteProvisionedProductPlan.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $ExecuteProvisionedProductPlanOutput =
      $servicecatalog->ExecuteProvisionedProductPlan(
      IdempotencyToken => 'MyIdempotencyToken',
      PlanId           => 'MyId',
      AcceptLanguage   => 'MyAcceptLanguage',     # OPTIONAL
      );

    # Results:
    my $RecordDetail = $ExecuteProvisionedProductPlanOutput->RecordDetail;

# Returns a L<Paws::ServiceCatalog::ExecuteProvisionedProductPlanOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/ExecuteProvisionedProductPlan>

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




=head2 B<REQUIRED> IdempotencyToken => Str

A unique identifier that you provide to ensure idempotency. If multiple
requests differ only by the idempotency token, the same response is
returned for each repeated request.



=head2 B<REQUIRED> PlanId => Str

The plan identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExecuteProvisionedProductPlan in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

