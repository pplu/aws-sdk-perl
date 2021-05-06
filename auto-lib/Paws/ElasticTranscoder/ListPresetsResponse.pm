
package Paws::ElasticTranscoder::ListPresetsResponse;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has Presets => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::Preset]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::ListPresetsResponse

=head1 ATTRIBUTES


=head2 NextPageToken => Str

A value that you use to access the second and subsequent pages of
results, if any. When the presets fit on one page or when you've
reached the last page of results, the value of C<NextPageToken> is
C<null>.


=head2 Presets => ArrayRef[L<Paws::ElasticTranscoder::Preset>]

An array of C<Preset> objects.


=head2 _request_id => Str


=cut

