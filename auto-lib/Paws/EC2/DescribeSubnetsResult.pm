
package Paws::EC2::DescribeSubnetsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_Subnet/;
  has NextToken => (is => 'ro', isa => Str);
  has Subnets => (is => 'ro', isa => ArrayRef[EC2_Subnet]);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Subnets' => {
                              'class' => 'Paws::EC2::Subnet',
                              'type' => 'ArrayRef[EC2_Subnet]'
                            },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Subnets' => 'subnetSet',
                       'NextToken' => 'nextToken'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSubnetsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 Subnets => ArrayRef[EC2_Subnet]

Information about one or more subnets.


=head2 _request_id => Str


=cut

