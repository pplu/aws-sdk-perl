# Generated from json/callresult_class.tt

package Paws::Organizations::CreateGovCloudAccountResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Organizations::Types qw/Organizations_CreateAccountStatus/;
  has CreateAccountStatus => (is => 'ro', isa => Organizations_CreateAccountStatus);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CreateAccountStatus' => {
                                          'type' => 'Organizations_CreateAccountStatus',
                                          'class' => 'Paws::Organizations::CreateAccountStatus'
                                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Organizations::CreateGovCloudAccountResponse

=head1 ATTRIBUTES


=head2 CreateAccountStatus => Organizations_CreateAccountStatus




=head2 _request_id => Str


=cut

1;