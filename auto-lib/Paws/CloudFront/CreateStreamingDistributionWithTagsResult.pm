
package Paws::CloudFront::CreateStreamingDistributionWithTagsResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has Location => (is => 'ro', isa => 'Str', header_name => 'Location', traits => ['ParamInHeader']);
  has StreamingDistribution => (is => 'ro', isa => 'Paws::CloudFront::StreamingDistribution', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateStreamingDistributionWithTagsResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the distribution created.



=head2 Location => Str

The fully qualified URI of the new streaming distribution resource just
created.



=head2 StreamingDistribution => L<Paws::CloudFront::StreamingDistribution>

The streaming distribution's information.




=cut

