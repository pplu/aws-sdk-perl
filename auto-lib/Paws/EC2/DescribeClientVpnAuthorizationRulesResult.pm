
package Paws::EC2::DescribeClientVpnAuthorizationRulesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_AuthorizationRule/;
  has AuthorizationRules => (is => 'ro', isa => ArrayRef[EC2_AuthorizationRule]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'AuthorizationRules' => {
                                         'class' => 'Paws::EC2::AuthorizationRule',
                                         'type' => 'ArrayRef[EC2_AuthorizationRule]'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'AuthorizationRules' => 'authorizationRule'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeClientVpnAuthorizationRulesResult

=head1 ATTRIBUTES


=head2 AuthorizationRules => ArrayRef[EC2_AuthorizationRule]

Information about the authorization rules.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

