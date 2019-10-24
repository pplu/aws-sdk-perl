
package Paws::IoT::ListThingRegistrationTasksResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::IoT::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has TaskIds => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TaskIds' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TaskIds' => 'taskIds',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingRegistrationTasksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to get the next set of results, or B<null> if there are
no additional results.


=head2 TaskIds => ArrayRef[Str|Undef]

A list of bulk thing provisioning task IDs.


=head2 _request_id => Str


=cut

