
package Paws::MediaLive::UpdateInputResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaLive::Types qw/MediaLive_Input/;
  has Input => (is => 'ro', isa => MediaLive_Input);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Input' => 'input'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Input' => {
                            'class' => 'Paws::MediaLive::Input',
                            'type' => 'MediaLive_Input'
                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateInputResponse

=head1 ATTRIBUTES


=head2 Input => MediaLive_Input




=head2 _request_id => Str


=cut

