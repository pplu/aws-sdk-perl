
package Paws::EC2::DescribeNetworkInterfacesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_NetworkInterface/;
  has NetworkInterfaces => (is => 'ro', isa => ArrayRef[EC2_NetworkInterface]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'NetworkInterfaces' => {
                                        'class' => 'Paws::EC2::NetworkInterface',
                                        'type' => 'ArrayRef[EC2_NetworkInterface]'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'NetworkInterfaces' => 'networkInterfaceSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeNetworkInterfacesResult

=head1 ATTRIBUTES


=head2 NetworkInterfaces => ArrayRef[EC2_NetworkInterface]

Information about one or more network interfaces.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

