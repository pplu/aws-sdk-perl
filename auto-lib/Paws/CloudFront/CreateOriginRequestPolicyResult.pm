
package Paws::CloudFront::CreateOriginRequestPolicyResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has Location => (is => 'ro', isa => 'Str', header_name => 'Location', traits => ['ParamInHeader']);
  has OriginRequestPolicy => (is => 'ro', isa => 'Paws::CloudFront::OriginRequestPolicy', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateOriginRequestPolicyResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the origin request policy.



=head2 Location => Str

The fully qualified URI of the origin request policy just created.



=head2 OriginRequestPolicy => L<Paws::CloudFront::OriginRequestPolicy>

An origin request policy.




=cut

