
package Paws::ImageBuilder::CreateDistributionConfigurationResponse;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DistributionConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'distributionConfigurationArn');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::CreateDistributionConfigurationResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

The idempotency token used to make this request idempotent.


=head2 DistributionConfigurationArn => Str

The Amazon Resource Name (ARN) of the distribution configuration that
was created by this request.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

