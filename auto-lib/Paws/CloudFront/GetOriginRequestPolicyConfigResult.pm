
package Paws::CloudFront::GetOriginRequestPolicyConfigResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has OriginRequestPolicyConfig => (is => 'ro', isa => 'Paws::CloudFront::OriginRequestPolicyConfig', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetOriginRequestPolicyConfigResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the origin request policy.



=head2 OriginRequestPolicyConfig => L<Paws::CloudFront::OriginRequestPolicyConfig>

The origin request policy configuration.




=cut

