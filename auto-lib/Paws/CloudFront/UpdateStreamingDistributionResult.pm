
package Paws::CloudFront::UpdateStreamingDistributionResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'ETag');
  has StreamingDistribution => (is => 'ro', isa => 'Paws::CloudFront::StreamingDistribution');

  use MooseX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'StreamingDistribution');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateStreamingDistributionResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the configuration. For example:
C<E2QWRUHAPOMQZL>.



=head2 StreamingDistribution => L<Paws::CloudFront::StreamingDistribution>

The streaming distribution's information.




=cut

