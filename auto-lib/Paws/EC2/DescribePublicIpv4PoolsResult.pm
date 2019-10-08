
package Paws::EC2::DescribePublicIpv4PoolsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_PublicIpv4Pool/;
  has NextToken => (is => 'ro', isa => Str);
  has PublicIpv4Pools => (is => 'ro', isa => ArrayRef[EC2_PublicIpv4Pool]);

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
               'PublicIpv4Pools' => {
                                      'class' => 'Paws::EC2::PublicIpv4Pool',
                                      'type' => 'ArrayRef[EC2_PublicIpv4Pool]'
                                    }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'PublicIpv4Pools' => 'publicIpv4PoolSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribePublicIpv4PoolsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 PublicIpv4Pools => ArrayRef[EC2_PublicIpv4Pool]

Information about the address pools.


=head2 _request_id => Str


=cut

