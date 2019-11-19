# Generated from json/callresult_class.tt

package Paws::OpsWorks::CreateUserProfileResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorks::Types qw//;
  has IamUserArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IamUserArn' => {
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


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CreateUserProfileResult

=head1 ATTRIBUTES


=head2 IamUserArn => Str

The user's IAM ARN.


=head2 _request_id => Str


=cut

1;