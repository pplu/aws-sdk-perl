
package Paws::WorkDocs::DescribeUsersResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::WorkDocs::Types qw/WorkDocs_User/;
  has Marker => (is => 'ro', isa => Str);
  has TotalNumberOfUsers => (is => 'ro', isa => Int);
  has Users => (is => 'ro', isa => ArrayRef[WorkDocs_User]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TotalNumberOfUsers' => {
                                         'type' => 'Int'
                                       },
               'Users' => {
                            'class' => 'Paws::WorkDocs::User',
                            'type' => 'ArrayRef[WorkDocs_User]'
                          },
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::WorkDocs::DescribeUsersResponse

=head1 ATTRIBUTES


=head2 Marker => Str

The marker to use when requesting the next set of results. If there are
no additional results, the string is empty.


=head2 TotalNumberOfUsers => Int

The total number of users included in the results.


=head2 Users => ArrayRef[WorkDocs_User]

The users.


=head2 _request_id => Str


=cut

