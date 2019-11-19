
package Paws::Pinpoint::DeleteSegmentResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'SegmentResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_SegmentResponse/;
  has SegmentResponse => (is => 'ro', isa => Pinpoint_SegmentResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'SegmentResponse' => 1
                  },
  'types' => {
               'SegmentResponse' => {
                                      'class' => 'Paws::Pinpoint::SegmentResponse',
                                      'type' => 'Pinpoint_SegmentResponse'
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

Paws::Pinpoint::DeleteSegmentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SegmentResponse => Pinpoint_SegmentResponse




=head2 _request_id => Str


=cut

