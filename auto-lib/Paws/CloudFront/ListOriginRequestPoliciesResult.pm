
package Paws::CloudFront::ListOriginRequestPoliciesResult;
  use Moose;
  has OriginRequestPolicyList => (is => 'ro', isa => 'Paws::CloudFront::OriginRequestPolicyList', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListOriginRequestPoliciesResult

=head1 ATTRIBUTES


=head2 OriginRequestPolicyList => L<Paws::CloudFront::OriginRequestPolicyList>

A list of origin request policies.




=cut

