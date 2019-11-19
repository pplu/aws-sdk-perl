# Generated from callresult_class.tt

package Paws::SES::SendBounceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SES::Types qw//;
  has MessageId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MessageId' => {
                                'type' => 'Str'
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

Paws::SES::SendBounceResponse

=head1 ATTRIBUTES


=head2 MessageId => Str

The message ID of the bounce message.


=head2 _request_id => Str


=cut

