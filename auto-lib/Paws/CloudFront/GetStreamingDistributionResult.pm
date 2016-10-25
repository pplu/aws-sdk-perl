
package Paws::CloudFront::GetStreamingDistributionResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str');
  has StreamingDistribution => (is => 'ro', isa => 'Paws::CloudFront::StreamingDistribution');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetStreamingDistributionResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the streaming distribution's information. For
example: C<E2QWRUHAPOMQZL>.



=head2 StreamingDistribution => L<Paws::CloudFront::StreamingDistribution>

The streaming distribution's information.




=cut

