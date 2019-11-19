
package Paws::SSO::ListAccountRolesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSO::Types qw/SSO_RoleInfo/;
  has NextToken => (is => 'ro', isa => Str);
  has RoleList => (is => 'ro', isa => ArrayRef[SSO_RoleInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoleList' => {
                               'class' => 'Paws::SSO::RoleInfo',
                               'type' => 'ArrayRef[SSO_RoleInfo]'
                             },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'RoleList' => 'roleList',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSO::ListAccountRolesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The page token client that is used to retrieve the list of accounts.


=head2 RoleList => ArrayRef[SSO_RoleInfo]

A paginated response with the list of roles and the next token if more
results are available.


=head2 _request_id => Str


=cut

