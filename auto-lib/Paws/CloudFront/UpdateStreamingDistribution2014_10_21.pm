
package Paws::CloudFront::UpdateStreamingDistribution2014_10_21 {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IfMatch => (is => 'ro', isa => 'Str');
  has StreamingDistributionConfig => (is => 'ro', isa => 'Paws::CloudFront::StreamingDistributionConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStreamingDistribution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::UpdateStreamingDistributionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStreamingDistributionResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateStreamingDistributionResult

=head1 ATTRIBUTES

=head2 B<REQUIRED> Id => Str

  

The streaming distribution's id.









=head2 IfMatch => Str

  

The value of the ETag header you received when retrieving the streaming
distribution's configuration. For example: E2QWRUHAPOMQZL.









=head2 B<REQUIRED> StreamingDistributionConfig => Paws::CloudFront::StreamingDistributionConfig

  

The streaming distribution's configuration information.











=cut

