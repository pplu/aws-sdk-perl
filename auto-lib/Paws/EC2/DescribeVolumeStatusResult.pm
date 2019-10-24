
package Paws::EC2::DescribeVolumeStatusResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_VolumeStatusItem/;
  has NextToken => (is => 'ro', isa => Str);
  has VolumeStatuses => (is => 'ro', isa => ArrayRef[EC2_VolumeStatusItem]);

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
               'VolumeStatuses' => {
                                     'class' => 'Paws::EC2::VolumeStatusItem',
                                     'type' => 'ArrayRef[EC2_VolumeStatusItem]'
                                   }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'VolumeStatuses' => 'volumeStatusSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVolumeStatusResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 VolumeStatuses => ArrayRef[EC2_VolumeStatusItem]

Information about the status of the volumes.


=head2 _request_id => Str


=cut

