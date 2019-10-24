# Generated from callresult_class.tt

package Paws::IAM::GetAccountAuthorizationDetailsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::IAM::Types qw/IAM_RoleDetail IAM_GroupDetail IAM_UserDetail IAM_ManagedPolicyDetail/;
  has GroupDetailList => (is => 'ro', isa => ArrayRef[IAM_GroupDetail]);
  has IsTruncated => (is => 'ro', isa => Bool);
  has Marker => (is => 'ro', isa => Str);
  has Policies => (is => 'ro', isa => ArrayRef[IAM_ManagedPolicyDetail]);
  has RoleDetailList => (is => 'ro', isa => ArrayRef[IAM_RoleDetail]);
  has UserDetailList => (is => 'ro', isa => ArrayRef[IAM_UserDetail]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IsTruncated' => {
                                  'type' => 'Bool'
                                },
               'Policies' => {
                               'class' => 'Paws::IAM::ManagedPolicyDetail',
                               'type' => 'ArrayRef[IAM_ManagedPolicyDetail]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UserDetailList' => {
                                     'class' => 'Paws::IAM::UserDetail',
                                     'type' => 'ArrayRef[IAM_UserDetail]'
                                   },
               'GroupDetailList' => {
                                      'class' => 'Paws::IAM::GroupDetail',
                                      'type' => 'ArrayRef[IAM_GroupDetail]'
                                    },
               'RoleDetailList' => {
                                     'class' => 'Paws::IAM::RoleDetail',
                                     'type' => 'ArrayRef[IAM_RoleDetail]'
                                   },
               'Marker' => {
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

Paws::IAM::GetAccountAuthorizationDetailsResponse

=head1 ATTRIBUTES


=head2 GroupDetailList => ArrayRef[IAM_GroupDetail]

A list containing information about IAM groups.


=head2 IsTruncated => Bool

A flag that indicates whether there are more items to return. If your
results were truncated, you can make a subsequent pagination request
using the C<Marker> request parameter to retrieve more items. Note that
IAM might return fewer than the C<MaxItems> number of results even when
there are more results available. We recommend that you check
C<IsTruncated> after every call to ensure that you receive all your
results.


=head2 Marker => Str

When C<IsTruncated> is C<true>, this element is present and contains
the value to use for the C<Marker> parameter in a subsequent pagination
request.


=head2 Policies => ArrayRef[IAM_ManagedPolicyDetail]

A list containing information about managed policies.


=head2 RoleDetailList => ArrayRef[IAM_RoleDetail]

A list containing information about IAM roles.


=head2 UserDetailList => ArrayRef[IAM_UserDetail]

A list containing information about IAM users.


=head2 _request_id => Str


=cut

