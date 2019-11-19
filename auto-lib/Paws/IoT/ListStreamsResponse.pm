
package Paws::IoT::ListStreamsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_StreamSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Streams => (is => 'ro', isa => ArrayRef[IoT_StreamSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Streams' => 'streams'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Streams' => {
                              'type' => 'ArrayRef[IoT_StreamSummary]',
                              'class' => 'Paws::IoT::StreamSummary'
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

Paws::IoT::ListStreamsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token used to get the next set of results.


=head2 Streams => ArrayRef[IoT_StreamSummary]

A list of streams.


=head2 _request_id => Str


=cut

