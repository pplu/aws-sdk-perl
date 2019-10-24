
package Paws::EC2::DescribeMovingAddressesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_MovingAddressStatus/;
  has MovingAddressStatuses => (is => 'ro', isa => ArrayRef[EC2_MovingAddressStatus]);
  has NextToken => (is => 'ro', isa => Str);

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
               'MovingAddressStatuses' => {
                                            'class' => 'Paws::EC2::MovingAddressStatus',
                                            'type' => 'ArrayRef[EC2_MovingAddressStatus]'
                                          }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'MovingAddressStatuses' => 'movingAddressStatusSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeMovingAddressesResult

=head1 ATTRIBUTES


=head2 MovingAddressStatuses => ArrayRef[EC2_MovingAddressStatus]

The status for each Elastic IP address.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

