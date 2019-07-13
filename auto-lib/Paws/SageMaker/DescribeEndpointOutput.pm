
package Paws::SageMaker::DescribeEndpointOutput;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);
  has EndpointConfigName => (is => 'ro', isa => 'Str', required => 1);
  has EndpointName => (is => 'ro', isa => 'Str', required => 1);
  has EndpointStatus => (is => 'ro', isa => 'Str', required => 1);
  has FailureReason => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has ProductionVariants => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ProductionVariantSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeEndpointOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

A timestamp that shows when the endpoint was created.


=head2 B<REQUIRED> EndpointArn => Str

The Amazon Resource Name (ARN) of the endpoint.


=head2 B<REQUIRED> EndpointConfigName => Str

The name of the endpoint configuration associated with this endpoint.


=head2 B<REQUIRED> EndpointName => Str

Name of the endpoint.


=head2 B<REQUIRED> EndpointStatus => Str

The status of the endpoint.

=over

=item *

C<OutOfService>: Endpoint is not available to take incoming requests.

=item *

C<Creating>: CreateEndpoint is executing.

=item *

C<Updating>: UpdateEndpoint or UpdateEndpointWeightsAndCapacities is
executing.

=item *

C<SystemUpdating>: Endpoint is undergoing maintenance and cannot be
updated or deleted or re-scaled until it has completed. This
maintenance operation does not change any customer-specified values
such as VPC config, KMS encryption, model, instance type, or instance
count.

=item *

C<RollingBack>: Endpoint fails to scale up or down or change its
variant weight and is in the process of rolling back to its previous
configuration. Once the rollback completes, endpoint returns to an
C<InService> status. This transitional status only applies to an
endpoint that has autoscaling enabled and is undergoing variant weight
or capacity changes as part of an UpdateEndpointWeightsAndCapacities
call or when the UpdateEndpointWeightsAndCapacities operation is called
explicitly.

=item *

C<InService>: Endpoint is available to process incoming requests.

=item *

C<Deleting>: DeleteEndpoint is executing.

=item *

C<Failed>: Endpoint could not be created, updated, or re-scaled. Use
DescribeEndpointOutput$FailureReason for information about the failure.
DeleteEndpoint is the only operation that can be performed on a failed
endpoint.

=back


Valid values are: C<"OutOfService">, C<"Creating">, C<"Updating">, C<"SystemUpdating">, C<"RollingBack">, C<"InService">, C<"Deleting">, C<"Failed">
=head2 FailureReason => Str

If the status of the endpoint is C<Failed>, the reason why it failed.


=head2 B<REQUIRED> LastModifiedTime => Str

A timestamp that shows when the endpoint was last modified.


=head2 ProductionVariants => ArrayRef[L<Paws::SageMaker::ProductionVariantSummary>]

An array of ProductionVariantSummary objects, one for each model hosted
behind this endpoint.


=head2 _request_id => Str


=cut

1;