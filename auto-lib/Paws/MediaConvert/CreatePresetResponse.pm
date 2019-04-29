
package Paws::MediaConvert::CreatePresetResponse;
  use Moose;
  has Preset => (is => 'ro', isa => 'Paws::MediaConvert::Preset', traits => ['NameInRequest'], request_name => 'preset');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::CreatePresetResponse

=head1 ATTRIBUTES


=head2 Preset => L<Paws::MediaConvert::Preset>

A preset is a collection of preconfigured media conversion settings
that you want MediaConvert to apply to the output during the conversion
process.


=head2 _request_id => Str


=cut

