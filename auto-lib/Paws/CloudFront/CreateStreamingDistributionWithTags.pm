
package Paws::CloudFront::CreateStreamingDistributionWithTags;
  use Moose;
  has StreamingDistributionConfigWithTags => (is => 'ro', isa => 'Paws::CloudFront::StreamingDistributionConfigWithTags', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStreamingDistributionWithTags');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2016-09-07/streaming-distribution?WithTags');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateStreamingDistributionWithTagsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateStreamingDistributionWithTagsResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> StreamingDistributionConfigWithTags => L<Paws::CloudFront::StreamingDistributionConfigWithTags>

The streaming distribution's configuration information.




=cut

