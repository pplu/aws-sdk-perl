
package Paws::Pinpoint::PutEventStreamResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'EventStream');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_EventStream/;
  has EventStream => (is => 'ro', isa => Pinpoint_EventStream, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventStream' => {
                                  'class' => 'Paws::Pinpoint::EventStream',
                                  'type' => 'Pinpoint_EventStream'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'EventStream' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::PutEventStreamResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventStream => Pinpoint_EventStream




=head2 _request_id => Str


=cut

