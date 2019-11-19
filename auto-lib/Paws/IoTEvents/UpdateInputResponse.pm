
package Paws::IoTEvents::UpdateInputResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTEvents::Types qw/IoTEvents_InputConfiguration/;
  has InputConfiguration => (is => 'ro', isa => IoTEvents_InputConfiguration);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InputConfiguration' => {
                                         'type' => 'IoTEvents_InputConfiguration',
                                         'class' => 'Paws::IoTEvents::InputConfiguration'
                                       }
             },
  'NameInRequest' => {
                       'InputConfiguration' => 'inputConfiguration'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::UpdateInputResponse

=head1 ATTRIBUTES


=head2 InputConfiguration => IoTEvents_InputConfiguration

Information about the configuration of the input.


=head2 _request_id => Str


=cut

