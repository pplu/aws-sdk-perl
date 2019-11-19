# Generated from json/callresult_class.tt

package Paws::Organizations::DescribeCreateAccountStatusResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Organizations::Types qw/Organizations_CreateAccountStatus/;
  has CreateAccountStatus => (is => 'ro', isa => Organizations_CreateAccountStatus);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreateAccountStatus' => {
                                          'class' => 'Paws::Organizations::CreateAccountStatus',
                                          'type' => 'Organizations_CreateAccountStatus'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Organizations::DescribeCreateAccountStatusResponse

=head1 ATTRIBUTES


=head2 CreateAccountStatus => Organizations_CreateAccountStatus

A structure that contains the current status of an account creation
request.


=head2 _request_id => Str


=cut

1;