
package Paws::EC2::DescribeSecurityGroupsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_SecurityGroup/;
  has NextToken => (is => 'ro', isa => Str);
  has SecurityGroups => (is => 'ro', isa => ArrayRef[EC2_SecurityGroup]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'SecurityGroups' => {
                                     'type' => 'ArrayRef[EC2_SecurityGroup]',
                                     'class' => 'Paws::EC2::SecurityGroup'
                                   }
             },
  'NameInRequest' => {
                       'SecurityGroups' => 'securityGroupInfo',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSecurityGroupsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 SecurityGroups => ArrayRef[EC2_SecurityGroup]

Information about the security groups.


=head2 _request_id => Str


=cut

