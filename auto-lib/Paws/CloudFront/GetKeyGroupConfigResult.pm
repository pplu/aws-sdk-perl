
package Paws::CloudFront::GetKeyGroupConfigResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has KeyGroupConfig => (is => 'ro', isa => 'Paws::CloudFront::KeyGroupConfig', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetKeyGroupConfigResult

=head1 ATTRIBUTES


=head2 ETag => Str

The identifier for this version of the key group.



=head2 KeyGroupConfig => L<Paws::CloudFront::KeyGroupConfig>

The key group configuration.




=cut

