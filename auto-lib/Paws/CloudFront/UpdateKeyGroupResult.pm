
package Paws::CloudFront::UpdateKeyGroupResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has KeyGroup => (is => 'ro', isa => 'Paws::CloudFront::KeyGroup', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateKeyGroupResult

=head1 ATTRIBUTES


=head2 ETag => Str

The identifier for this version of the key group.



=head2 KeyGroup => L<Paws::CloudFront::KeyGroup>

The key group that was just updated.




=cut

