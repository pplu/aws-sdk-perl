# Generated from callresult_class.tt

package Paws::SQS::ReceiveMessageResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SQS::Types qw/SQS_Message/;
  has Messages => (is => 'ro', isa => ArrayRef[SQS_Message]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Messages' => {
                               'class' => 'Paws::SQS::Message',
                               'type' => 'ArrayRef[SQS_Message]'
                             }
             },
  'NameInRequest' => {
                       'Messages' => 'Message'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::ReceiveMessageResult

=head1 ATTRIBUTES


=head2 Messages => ArrayRef[SQS_Message]

A list of messages.


=head2 _request_id => Str


=cut

