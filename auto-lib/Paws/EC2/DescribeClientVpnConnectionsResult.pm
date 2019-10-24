
package Paws::EC2::DescribeClientVpnConnectionsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ClientVpnConnection/;
  has Connections => (is => 'ro', isa => ArrayRef[EC2_ClientVpnConnection]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Connections' => {
                                  'class' => 'Paws::EC2::ClientVpnConnection',
                                  'type' => 'ArrayRef[EC2_ClientVpnConnection]'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Connections' => 'connections',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeClientVpnConnectionsResult

=head1 ATTRIBUTES


=head2 Connections => ArrayRef[EC2_ClientVpnConnection]

Information about the active and terminated client connections.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

