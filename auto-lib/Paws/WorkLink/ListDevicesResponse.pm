
package Paws::WorkLink::ListDevicesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkLink::Types qw/WorkLink_DeviceSummary/;
  has Devices => (is => 'ro', isa => ArrayRef[WorkLink_DeviceSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Devices' => {
                              'class' => 'Paws::WorkLink::DeviceSummary',
                              'type' => 'ArrayRef[WorkLink_DeviceSummary]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::ListDevicesResponse

=head1 ATTRIBUTES


=head2 Devices => ArrayRef[WorkLink_DeviceSummary]

Information about the devices.


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation. If there are no more pages, this value is null.


=head2 _request_id => Str


=cut

