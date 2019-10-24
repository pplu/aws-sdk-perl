
package Paws::IoT::ListStreamsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_StreamSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Streams => (is => 'ro', isa => ArrayRef[IoT_StreamSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Streams' => {
                              'class' => 'Paws::IoT::StreamSummary',
                              'type' => 'ArrayRef[IoT_StreamSummary]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Streams' => 'streams'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListStreamsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token used to get the next set of results.


=head2 Streams => ArrayRef[IoT_StreamSummary]

A list of streams.


=head2 _request_id => Str


=cut

