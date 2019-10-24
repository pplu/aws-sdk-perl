# Generated from json/callresult_class.tt

package Paws::Organizations::DescribeAccountResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Organizations::Types qw/Organizations_Account/;
  has Account => (is => 'ro', isa => Organizations_Account);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Account' => {
                              'class' => 'Paws::Organizations::Account',
                              'type' => 'Organizations_Account'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Organizations::DescribeAccountResponse

=head1 ATTRIBUTES


=head2 Account => Organizations_Account

A structure that contains information about the requested account.


=head2 _request_id => Str


=cut

1;