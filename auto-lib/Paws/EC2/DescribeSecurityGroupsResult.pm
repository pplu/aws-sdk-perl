
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
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SecurityGroups' => {
                                     'class' => 'Paws::EC2::SecurityGroup',
                                     'type' => 'ArrayRef[EC2_SecurityGroup]'
                                   }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'SecurityGroups' => 'securityGroupInfo'
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

