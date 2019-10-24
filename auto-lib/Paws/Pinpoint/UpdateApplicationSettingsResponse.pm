
package Paws::Pinpoint::UpdateApplicationSettingsResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ApplicationSettingsResource');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_ApplicationSettingsResource/;
  has ApplicationSettingsResource => (is => 'ro', isa => Pinpoint_ApplicationSettingsResource, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationSettingsResource' => {
                                                  'class' => 'Paws::Pinpoint::ApplicationSettingsResource',
                                                  'type' => 'Pinpoint_ApplicationSettingsResource'
                                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ApplicationSettingsResource' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateApplicationSettingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationSettingsResource => Pinpoint_ApplicationSettingsResource




=head2 _request_id => Str


=cut

