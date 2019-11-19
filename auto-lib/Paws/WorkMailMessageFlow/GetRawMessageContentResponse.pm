
package Paws::WorkMailMessageFlow::GetRawMessageContentResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'MessageContent');
  use Types::Standard qw/Str/;
  use Paws::WorkMailMessageFlow::Types qw//;
  has MessageContent => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MessageContent' => {
                                     'type' => 'Str'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'MessageContent' => 1
                  },
  'NameInRequest' => {
                       'MessageContent' => 'messageContent'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMailMessageFlow::GetRawMessageContentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MessageContent => Str

The raw content of the email message, in MIME format.


=head2 _request_id => Str


=cut

