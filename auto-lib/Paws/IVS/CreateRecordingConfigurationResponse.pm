
package Paws::IVS::CreateRecordingConfigurationResponse;
  use Moose;
  has RecordingConfiguration => (is => 'ro', isa => 'Paws::IVS::RecordingConfiguration', traits => ['NameInRequest'], request_name => 'recordingConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::CreateRecordingConfigurationResponse

=head1 ATTRIBUTES


=head2 RecordingConfiguration => L<Paws::IVS::RecordingConfiguration>




=head2 _request_id => Str


=cut

