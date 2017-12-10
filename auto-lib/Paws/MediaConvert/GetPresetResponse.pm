
package Paws::MediaConvert::GetPresetResponse;
  use Moose;
  has Preset => (is => 'ro', isa => 'Paws::MediaConvert::Preset', traits => ['NameInRequest'], request_name => 'preset');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::GetPresetResponse

=head1 ATTRIBUTES


=head2 Preset => L<Paws::MediaConvert::Preset>




=head2 _request_id => Str


=cut

