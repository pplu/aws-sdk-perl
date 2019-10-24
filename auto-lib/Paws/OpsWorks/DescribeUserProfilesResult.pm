# Generated from json/callresult_class.tt

package Paws::OpsWorks::DescribeUserProfilesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorks::Types qw/OpsWorks_UserProfile/;
  has UserProfiles => (is => 'ro', isa => ArrayRef[OpsWorks_UserProfile]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UserProfiles' => {
                                   'class' => 'Paws::OpsWorks::UserProfile',
                                   'type' => 'ArrayRef[OpsWorks_UserProfile]'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeUserProfilesResult

=head1 ATTRIBUTES


=head2 UserProfiles => ArrayRef[OpsWorks_UserProfile]

A C<Users> object that describes the specified users.


=head2 _request_id => Str


=cut

1;