
package Paws::CloudFront::CreateStreamingDistributionResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Str');
  has StreamingDistribution => (is => 'ro', isa => 'Paws::CloudFront::StreamingDistribution');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateStreamingDistributionResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the streaming distribution created.



=head2 Location => Str

The fully qualified URI of the new streaming distribution resource just
created. For example:
C<https://cloudfront.amazonaws.com/2010-11-01/streaming-distribution/EGTXBD79H29TRA8>.



=head2 StreamingDistribution => L<Paws::CloudFront::StreamingDistribution>

The streaming distribution's information.




=cut

