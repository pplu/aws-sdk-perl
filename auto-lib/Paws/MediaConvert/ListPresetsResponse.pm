
package Paws::MediaConvert::ListPresetsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Presets => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::Preset]', traits => ['NameInRequest'], request_name => 'presets');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ListPresetsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Use this string to request the next batch of presets.


=head2 Presets => ArrayRef[L<Paws::MediaConvert::Preset>]

List of presets


=head2 _request_id => Str


=cut

