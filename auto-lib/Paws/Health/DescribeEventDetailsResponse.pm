# Generated from json/callresult_class.tt

package Paws::Health::DescribeEventDetailsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Health::Types qw/Health_EventDetailsErrorItem Health_EventDetails/;
  has FailedSet => (is => 'ro', isa => ArrayRef[Health_EventDetailsErrorItem]);
  has SuccessfulSet => (is => 'ro', isa => ArrayRef[Health_EventDetails]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'SuccessfulSet' => 'successfulSet',
                       'FailedSet' => 'failedSet'
                     },
  'types' => {
               'SuccessfulSet' => {
                                    'class' => 'Paws::Health::EventDetails',
                                    'type' => 'ArrayRef[Health_EventDetails]'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FailedSet' => {
                                'class' => 'Paws::Health::EventDetailsErrorItem',
                                'type' => 'ArrayRef[Health_EventDetailsErrorItem]'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeEventDetailsResponse

=head1 ATTRIBUTES


=head2 FailedSet => ArrayRef[Health_EventDetailsErrorItem]

Error messages for any events that could not be retrieved.


=head2 SuccessfulSet => ArrayRef[Health_EventDetails]

Information about the events that could be retrieved.


=head2 _request_id => Str


=cut

1;