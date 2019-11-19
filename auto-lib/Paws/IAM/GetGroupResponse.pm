# Generated from callresult_class.tt

package Paws::IAM::GetGroupResponse;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::IAM::Types qw/IAM_Group IAM_User/;
  has Group => (is => 'ro', isa => IAM_Group, required => 1);
  has IsTruncated => (is => 'ro', isa => Bool);
  has Marker => (is => 'ro', isa => Str);
  has Users => (is => 'ro', isa => ArrayRef[IAM_User], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IsTruncated' => {
                                  'type' => 'Bool'
                                },
               'Marker' => {
                             'type' => 'Str'
                           },
               'Group' => {
                            'class' => 'Paws::IAM::Group',
                            'type' => 'IAM_Group'
                          },
               'Users' => {
                            'class' => 'Paws::IAM::User',
                            'type' => 'ArrayRef[IAM_User]'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Group' => 1,
                    'Users' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetGroupResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Group => IAM_Group

A structure that contains details about the group.


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


=head2 B<REQUIRED> Users => ArrayRef[IAM_User]

A list of users in the group.


=head2 _request_id => Str


=cut

