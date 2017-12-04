
package Paws::CloudFront::GetStreamingDistributionConfigResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'ETag');
  has StreamingDistributionConfig => (is => 'ro', isa => 'Paws::CloudFront::StreamingDistributionConfig');

  use MooseX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'StreamingDistributionConfig');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetStreamingDistributionConfigResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the configuration. For example:
C<E2QWRUHAPOMQZL>.



=head2 StreamingDistributionConfig => L<Paws::CloudFront::StreamingDistributionConfig>

The streaming distribution's configuration information.




=cut

