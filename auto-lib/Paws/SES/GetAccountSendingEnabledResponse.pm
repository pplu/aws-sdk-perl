# Generated from callresult_class.tt

package Paws::SES::GetAccountSendingEnabledResponse;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::SES::Types qw//;
  has Enabled => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Enabled' => {
                              'type' => 'Bool'
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

Paws::SES::GetAccountSendingEnabledResponse

=head1 ATTRIBUTES


=head2 Enabled => Bool

Describes whether email sending is enabled or disabled for your Amazon
SES account in the current AWS Region.


=head2 _request_id => Str


=cut

