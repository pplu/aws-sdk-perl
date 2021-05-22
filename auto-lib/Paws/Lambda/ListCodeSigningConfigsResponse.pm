
package Paws::Lambda::ListCodeSigningConfigsResponse;
  use Moose;
  has CodeSigningConfigs => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::CodeSigningConfig]');
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListCodeSigningConfigsResponse

=head1 ATTRIBUTES


=head2 CodeSigningConfigs => ArrayRef[L<Paws::Lambda::CodeSigningConfig>]

The code signing configurations


=head2 NextMarker => Str

The pagination token that's included if more results are available.


=head2 _request_id => Str


=cut

