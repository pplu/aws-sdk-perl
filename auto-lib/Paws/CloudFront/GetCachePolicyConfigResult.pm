
package Paws::CloudFront::GetCachePolicyConfigResult;
  use Moose;
  has CachePolicyConfig => (is => 'ro', isa => 'Paws::CloudFront::CachePolicyConfig', traits => ['ParamInBody']);
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetCachePolicyConfigResult

=head1 ATTRIBUTES


=head2 CachePolicyConfig => L<Paws::CloudFront::CachePolicyConfig>

The cache policy configuration.



=head2 ETag => Str

The current version of the cache policy.




=cut

