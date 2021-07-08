
package Paws::CloudFront::UpdateOriginRequestPolicyResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has OriginRequestPolicy => (is => 'ro', isa => 'Paws::CloudFront::OriginRequestPolicy', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateOriginRequestPolicyResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the origin request policy.



=head2 OriginRequestPolicy => L<Paws::CloudFront::OriginRequestPolicy>

An origin request policy.




=cut

