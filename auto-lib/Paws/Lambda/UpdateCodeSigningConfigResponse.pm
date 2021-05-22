
package Paws::Lambda::UpdateCodeSigningConfigResponse;
  use Moose;
  has CodeSigningConfig => (is => 'ro', isa => 'Paws::Lambda::CodeSigningConfig', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::UpdateCodeSigningConfigResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CodeSigningConfig => L<Paws::Lambda::CodeSigningConfig>

The code signing configuration


=head2 _request_id => Str


=cut

