# Generated from json/callresult_class.tt

package Paws::CognitoIdp::StartUserImportJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_UserImportJobType/;
  has UserImportJob => (is => 'ro', isa => CognitoIdp_UserImportJobType);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UserImportJob' => {
                                    'class' => 'Paws::CognitoIdp::UserImportJobType',
                                    'type' => 'CognitoIdp_UserImportJobType'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::StartUserImportJobResponse

=head1 ATTRIBUTES


=head2 UserImportJob => CognitoIdp_UserImportJobType

The job object that represents the user import job.


=head2 _request_id => Str


=cut

1;