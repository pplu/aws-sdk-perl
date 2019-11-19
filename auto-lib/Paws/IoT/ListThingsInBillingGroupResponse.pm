
package Paws::IoT::ListThingsInBillingGroupResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::IoT::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has Things => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Things' => 'things'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Things' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'NextToken' => {
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

Paws::IoT::ListThingsInBillingGroupResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to get the next set of results, or B<null> if there are
no additional results.


=head2 Things => ArrayRef[Str|Undef]

A list of things in the billing group.


=head2 _request_id => Str


=cut

