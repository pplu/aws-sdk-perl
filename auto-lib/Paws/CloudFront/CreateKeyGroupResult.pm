
package Paws::CloudFront::CreateKeyGroupResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has KeyGroup => (is => 'ro', isa => 'Paws::CloudFront::KeyGroup', traits => ['ParamInBody']);
  has Location => (is => 'ro', isa => 'Str', header_name => 'Location', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateKeyGroupResult

=head1 ATTRIBUTES


=head2 ETag => Str

The identifier for this version of the key group.



=head2 KeyGroup => L<Paws::CloudFront::KeyGroup>

The key group that was just created.



=head2 Location => Str

The URL of the key group.




=cut

