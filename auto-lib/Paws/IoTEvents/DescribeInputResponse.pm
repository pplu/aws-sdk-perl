
package Paws::IoTEvents::DescribeInputResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTEvents::Types qw/IoTEvents_Input/;
  has Input => (is => 'ro', isa => IoTEvents_Input);

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
                            'type' => 'IoTEvents_Input',
                            'class' => 'Paws::IoTEvents::Input'
                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::DescribeInputResponse

=head1 ATTRIBUTES


=head2 Input => IoTEvents_Input

Information about the input.


=head2 _request_id => Str


=cut

