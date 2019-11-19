# Generated from callresult_class.tt

package Paws::IAM::ListEntitiesForPolicyResponse;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::IAM::Types qw/IAM_PolicyUser IAM_PolicyGroup IAM_PolicyRole/;
  has IsTruncated => (is => 'ro', isa => Bool);
  has Marker => (is => 'ro', isa => Str);
  has PolicyGroups => (is => 'ro', isa => ArrayRef[IAM_PolicyGroup]);
  has PolicyRoles => (is => 'ro', isa => ArrayRef[IAM_PolicyRole]);
  has PolicyUsers => (is => 'ro', isa => ArrayRef[IAM_PolicyUser]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PolicyUsers' => {
                                  'type' => 'ArrayRef[IAM_PolicyUser]',
                                  'class' => 'Paws::IAM::PolicyUser'
                                },
               'Marker' => {
                             'type' => 'Str'
                           },
               'IsTruncated' => {
                                  'type' => 'Bool'
                                },
               'PolicyRoles' => {
                                  'class' => 'Paws::IAM::PolicyRole',
                                  'type' => 'ArrayRef[IAM_PolicyRole]'
                                },
               'PolicyGroups' => {
                                   'type' => 'ArrayRef[IAM_PolicyGroup]',
                                   'class' => 'Paws::IAM::PolicyGroup'
                                 }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListEntitiesForPolicyResponse

=head1 ATTRIBUTES


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


=head2 PolicyGroups => ArrayRef[IAM_PolicyGroup]

A list of IAM groups that the policy is attached to.


=head2 PolicyRoles => ArrayRef[IAM_PolicyRole]

A list of IAM roles that the policy is attached to.


=head2 PolicyUsers => ArrayRef[IAM_PolicyUser]

A list of IAM users that the policy is attached to.


=head2 _request_id => Str


=cut

