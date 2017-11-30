
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

Valid values are: C<"OutOfService">, C<"Creating">, C<"Updating">, C<"RollingBack">, C<"InService">, C<"Deleting">, C<"Failed">
=head2 FailureReason => Str

If the status of the endpoint is C<Failed>, the reason why it failed.


=head2 B<REQUIRED> LastModifiedTime => Str

A timestamp that shows when the endpoint was last modified.


=head2 ProductionVariants => ArrayRef[L<Paws::SageMaker::ProductionVariantSummary>]

An array of ProductionVariant objects, one for each model hosted behind
this endpoint.


=head2 _request_id => Str


=cut

1;