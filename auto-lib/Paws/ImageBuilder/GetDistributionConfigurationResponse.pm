
package Paws::ImageBuilder::GetDistributionConfigurationResponse;
  use Moose;
  has DistributionConfiguration => (is => 'ro', isa => 'Paws::ImageBuilder::DistributionConfiguration', traits => ['NameInRequest'], request_name => 'distributionConfiguration');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::GetDistributionConfigurationResponse

=head1 ATTRIBUTES


=head2 DistributionConfiguration => L<Paws::ImageBuilder::DistributionConfiguration>

The distribution configuration object.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

