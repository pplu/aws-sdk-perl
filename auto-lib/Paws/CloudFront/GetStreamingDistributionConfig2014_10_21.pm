
package Paws::CloudFront::GetStreamingDistributionConfig2014_10_21 {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStreamingDistributionConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::GetStreamingDistributionConfigResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetStreamingDistributionConfigResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetStreamingDistributionConfigResult

=head1 ATTRIBUTES

=head2 B<REQUIRED> Id => Str

  

The streaming distribution's id.











=cut

