# Generated from json/callresult_class.tt

package Paws::OpsWorks::DescribeMyUserProfileResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorks::Types qw/OpsWorks_SelfUserProfile/;
  has UserProfile => (is => 'ro', isa => OpsWorks_SelfUserProfile);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UserProfile' => {
                                  'class' => 'Paws::OpsWorks::SelfUserProfile',
                                  'type' => 'OpsWorks_SelfUserProfile'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeMyUserProfileResult

=head1 ATTRIBUTES


=head2 UserProfile => OpsWorks_SelfUserProfile

A C<UserProfile> object that describes the user's SSH information.


=head2 _request_id => Str


=cut

1;