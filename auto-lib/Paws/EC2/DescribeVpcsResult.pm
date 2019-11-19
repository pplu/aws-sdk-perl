
package Paws::EC2::DescribeVpcsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_Vpc/;
  has NextToken => (is => 'ro', isa => Str);
  has Vpcs => (is => 'ro', isa => ArrayRef[EC2_Vpc]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Vpcs' => 'vpcSet',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Vpcs' => {
                           'type' => 'ArrayRef[EC2_Vpc]',
                           'class' => 'Paws::EC2::Vpc'
                         },
               '_request_id' => {
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

Paws::EC2::DescribeVpcsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 Vpcs => ArrayRef[EC2_Vpc]

Information about one or more VPCs.


=head2 _request_id => Str


=cut

