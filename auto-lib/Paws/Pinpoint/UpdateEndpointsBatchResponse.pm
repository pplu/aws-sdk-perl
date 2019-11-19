
package Paws::Pinpoint::UpdateEndpointsBatchResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'MessageBody');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_MessageBody/;
  has MessageBody => (is => 'ro', isa => Pinpoint_MessageBody, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'MessageBody' => {
                                  'type' => 'Pinpoint_MessageBody',
                                  'class' => 'Paws::Pinpoint::MessageBody'
                                }
             },
  'IsRequired' => {
                    'MessageBody' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateEndpointsBatchResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MessageBody => Pinpoint_MessageBody




=head2 _request_id => Str


=cut

