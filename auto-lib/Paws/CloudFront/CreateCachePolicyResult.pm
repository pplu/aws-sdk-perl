
package Paws::CloudFront::CreateCachePolicyResult;
  use Moose;
  has CachePolicy => (is => 'ro', isa => 'Paws::CloudFront::CachePolicy', traits => ['ParamInBody']);
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has Location => (is => 'ro', isa => 'Str', header_name => 'Location', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateCachePolicyResult

=head1 ATTRIBUTES


=head2 CachePolicy => L<Paws::CloudFront::CachePolicy>

A cache policy.



=head2 ETag => Str

The current version of the cache policy.



=head2 Location => Str

The fully qualified URI of the cache policy just created.




=cut

