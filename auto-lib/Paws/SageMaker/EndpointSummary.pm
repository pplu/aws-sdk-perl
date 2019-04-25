package Paws::SageMaker::EndpointSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);
  has EndpointName => (is => 'ro', isa => 'Str', required => 1);
  has EndpointStatus => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::EndpointSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::EndpointSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., LastModifiedTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::EndpointSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Provides summary information for an endpoint.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

  A timestamp that shows when the endpoint was created.


=head2 B<REQUIRED> EndpointArn => Str

  The Amazon Resource Name (ARN) of the endpoint.


=head2 B<REQUIRED> EndpointName => Str

  The name of the endpoint.


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
updated or deleted or re-scaled until it has completed. This mainenance
operation does not change any customer-specified values such as VPC
config, KMS encryption, model, instance type, or instance count.

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

To get a list of endpoints with a specified status, use the
ListEndpointsInput$StatusEquals filter.


=head2 B<REQUIRED> LastModifiedTime => Str

  A timestamp that shows when the endpoint was last modified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

