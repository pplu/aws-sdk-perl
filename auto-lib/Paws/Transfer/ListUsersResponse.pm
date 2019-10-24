# Generated from json/callresult_class.tt

package Paws::Transfer::ListUsersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Transfer::Types qw/Transfer_ListedUser/;
  has NextToken => (is => 'ro', isa => Str);
  has ServerId => (is => 'ro', isa => Str, required => 1);
  has Users => (is => 'ro', isa => ArrayRef[Transfer_ListedUser], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Users' => {
                            'class' => 'Paws::Transfer::ListedUser',
                            'type' => 'ArrayRef[Transfer_ListedUser]'
                          },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ServerId' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'Users' => 1,
                    'ServerId' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListUsersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When you can get additional results from the C<ListUsers> call, a
C<NextToken> parameter is returned in the output. You can then pass in
a subsequent command the C<NextToken> parameter to continue listing
additional users.


=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for an SFTP server that the users
are assigned to.


=head2 B<REQUIRED> Users => ArrayRef[Transfer_ListedUser]

Returns the user accounts and their properties for the C<ServerId>
value that you specify.


=head2 _request_id => Str


=cut

1;