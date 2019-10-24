# Generated from json/callresult_class.tt

package Paws::DAX::DescribeEventsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DAX::Types qw/DAX_Event/;
  has Events => (is => 'ro', isa => ArrayRef[DAX_Event]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Events' => {
                             'class' => 'Paws::DAX::Event',
                             'type' => 'ArrayRef[DAX_Event]'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DAX::DescribeEventsResponse

=head1 ATTRIBUTES


=head2 Events => ArrayRef[DAX_Event]

An array of events. Each element in the array represents one event.


=head2 NextToken => Str

Provides an identifier to allow retrieval of paginated results.


=head2 _request_id => Str


=cut

1;