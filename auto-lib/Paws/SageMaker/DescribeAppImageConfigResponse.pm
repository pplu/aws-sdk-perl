
package Paws::SageMaker::DescribeAppImageConfigResponse;
  use Moose;
  has AppImageConfigArn => (is => 'ro', isa => 'Str');
  has AppImageConfigName => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has KernelGatewayImageConfig => (is => 'ro', isa => 'Paws::SageMaker::KernelGatewayImageConfig');
  has LastModifiedTime => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeAppImageConfigResponse

=head1 ATTRIBUTES


=head2 AppImageConfigArn => Str

The Amazon Resource Name (ARN) of the AppImageConfig.


=head2 AppImageConfigName => Str

The name of the AppImageConfig.


=head2 CreationTime => Str

When the AppImageConfig was created.


=head2 KernelGatewayImageConfig => L<Paws::SageMaker::KernelGatewayImageConfig>

The configuration of a KernelGateway app.


=head2 LastModifiedTime => Str

When the AppImageConfig was last modified.


=head2 _request_id => Str


=cut

1;