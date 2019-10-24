# Generated from callresult_class.tt

package Paws::SES::SendEmailResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SES::Types qw//;
  has MessageId => (is => 'ro', isa => Str, required => 1);

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
             },
  'IsRequired' => {
                    'MessageId' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::SendEmailResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MessageId => Str

The unique message identifier returned from the C<SendEmail> action.


=head2 _request_id => Str


=cut

