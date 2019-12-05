
package Paws::ImageBuilder::DeleteDistributionConfigurationResponse;
  use Moose;
  has DistributionConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'distributionConfigurationArn');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::DeleteDistributionConfigurationResponse

=head1 ATTRIBUTES


=head2 DistributionConfigurationArn => Str

The Amazon Resource Name (ARN) of the distribution configuration that
was deleted.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

