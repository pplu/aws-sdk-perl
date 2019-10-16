
package Paws::SES::SendCustomVerificationEmailResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SES::Types qw//;
  has MessageId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'MessageId' => {
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

Paws::SES::SendCustomVerificationEmailResponse

=head1 ATTRIBUTES


=head2 MessageId => Str

The unique message identifier returned from the
C<SendCustomVerificationEmail> operation.


=head2 _request_id => Str


=cut

