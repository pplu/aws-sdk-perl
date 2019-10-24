# Generated from callresult_class.tt

package Paws::IAM::ListUsersResponse;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::IAM::Types qw/IAM_User/;
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
               'Users' => {
                            'class' => 'Paws::IAM::User',
                            'type' => 'ArrayRef[IAM_User]'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'Users' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListUsersResponse

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


=head2 B<REQUIRED> Users => ArrayRef[IAM_User]

A list of users.


=head2 _request_id => Str


=cut

