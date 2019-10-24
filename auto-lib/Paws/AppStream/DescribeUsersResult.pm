# Generated from json/callresult_class.tt

package Paws::AppStream::DescribeUsersResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppStream::Types qw/AppStream_User/;
  has NextToken => (is => 'ro', isa => Str);
  has Users => (is => 'ro', isa => ArrayRef[AppStream_User]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Users' => {
                            'class' => 'Paws::AppStream::User',
                            'type' => 'ArrayRef[AppStream_User]'
                          },
               'NextToken' => {
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

Paws::AppStream::DescribeUsersResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 Users => ArrayRef[AppStream_User]

Information about users in the user pool.


=head2 _request_id => Str


=cut

1;