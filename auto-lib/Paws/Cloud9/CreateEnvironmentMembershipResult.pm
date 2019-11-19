# Generated from json/callresult_class.tt

package Paws::Cloud9::CreateEnvironmentMembershipResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Cloud9::Types qw/Cloud9_EnvironmentMember/;
  has Membership => (is => 'ro', isa => Cloud9_EnvironmentMember);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Membership' => {
                                 'type' => 'Cloud9_EnvironmentMember',
                                 'class' => 'Paws::Cloud9::EnvironmentMember'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Membership' => 'membership'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::CreateEnvironmentMembershipResult

=head1 ATTRIBUTES


=head2 Membership => Cloud9_EnvironmentMember

Information about the environment member that was added.


=head2 _request_id => Str


=cut

1;