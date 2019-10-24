# Generated from json/callresult_class.tt

package Paws::CodeStar::UpdateTeamMemberResult;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::CodeStar::Types qw//;
  has ProjectRole => (is => 'ro', isa => Str);
  has RemoteAccessAllowed => (is => 'ro', isa => Bool);
  has UserArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserArn' => {
                              'type' => 'Str'
                            },
               'RemoteAccessAllowed' => {
                                          'type' => 'Bool'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ProjectRole' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'UserArn' => 'userArn',
                       'RemoteAccessAllowed' => 'remoteAccessAllowed',
                       'ProjectRole' => 'projectRole'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::UpdateTeamMemberResult

=head1 ATTRIBUTES


=head2 ProjectRole => Str

The project role granted to the user.


=head2 RemoteAccessAllowed => Bool

Whether a team member is allowed to remotely access project resources
using the SSH public key associated with the user's profile.


=head2 UserArn => Str

The Amazon Resource Name (ARN) of the user whose team membership
attributes were updated.


=head2 _request_id => Str


=cut

1;