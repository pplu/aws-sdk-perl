
package Paws::CloudFront::CreateDistributionWithTags;
  use Moose;
  has DistributionConfigWithTags => (is => 'ro', isa => 'Paws::CloudFront::DistributionConfigWithTags', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDistributionWithTags');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2016-09-07/distribution?WithTags');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateDistributionWithTagsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateDistributionWithTags

=head1 ATTRIBUTES


=head2 B<REQUIRED> DistributionConfigWithTags => L<Paws::CloudFront::DistributionConfigWithTags>

The distribution's configuration information.




=cut

