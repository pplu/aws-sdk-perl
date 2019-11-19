
package Paws::Pinpoint::SendUsersMessagesResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'SendUsersMessageResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_SendUsersMessageResponse/;
  has SendUsersMessageResponse => (is => 'ro', isa => Pinpoint_SendUsersMessageResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'SendUsersMessageResponse' => 1
                  },
  'types' => {
               'SendUsersMessageResponse' => {
                                               'class' => 'Paws::Pinpoint::SendUsersMessageResponse',
                                               'type' => 'Pinpoint_SendUsersMessageResponse'
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

Paws::Pinpoint::SendUsersMessagesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SendUsersMessageResponse => Pinpoint_SendUsersMessageResponse




=head2 _request_id => Str


=cut

