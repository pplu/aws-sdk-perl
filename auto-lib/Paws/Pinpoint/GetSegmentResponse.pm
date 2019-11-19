
package Paws::Pinpoint::GetSegmentResponse;
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
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SegmentResponse' => {
                                      'type' => 'Pinpoint_SegmentResponse',
                                      'class' => 'Paws::Pinpoint::SegmentResponse'
                                    }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetSegmentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SegmentResponse => Pinpoint_SegmentResponse




=head2 _request_id => Str


=cut

