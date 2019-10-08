
package Paws::EC2::DescribeStaleSecurityGroupsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_StaleSecurityGroup/;
  has NextToken => (is => 'ro', isa => Str);
  has StaleSecurityGroupSet => (is => 'ro', isa => ArrayRef[EC2_StaleSecurityGroup]);

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
               'StaleSecurityGroupSet' => {
                                            'class' => 'Paws::EC2::StaleSecurityGroup',
                                            'type' => 'ArrayRef[EC2_StaleSecurityGroup]'
                                          }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'StaleSecurityGroupSet' => 'staleSecurityGroupSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeStaleSecurityGroupsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 StaleSecurityGroupSet => ArrayRef[EC2_StaleSecurityGroup]

Information about the stale security groups.


=head2 _request_id => Str


=cut

