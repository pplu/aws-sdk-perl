
package Paws::CloudFront::ListCachePoliciesResult;
  use Moose;
  has CachePolicyList => (is => 'ro', isa => 'Paws::CloudFront::CachePolicyList', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListCachePoliciesResult

=head1 ATTRIBUTES


=head2 CachePolicyList => L<Paws::CloudFront::CachePolicyList>

A list of cache policies.




=cut

