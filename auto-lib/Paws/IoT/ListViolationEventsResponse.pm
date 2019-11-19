
package Paws::IoT::ListViolationEventsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_ViolationEvent/;
  has NextToken => (is => 'ro', isa => Str);
  has ViolationEvents => (is => 'ro', isa => ArrayRef[IoT_ViolationEvent]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ViolationEvents' => {
                                      'type' => 'ArrayRef[IoT_ViolationEvent]',
                                      'class' => 'Paws::IoT::ViolationEvent'
                                    },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ViolationEvents' => 'violationEvents'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListViolationEventsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 ViolationEvents => ArrayRef[IoT_ViolationEvent]

The security profile violation alerts issued for this account during
the given time period, potentially filtered by security profile,
behavior violated, or thing (device) violating.


=head2 _request_id => Str


=cut

