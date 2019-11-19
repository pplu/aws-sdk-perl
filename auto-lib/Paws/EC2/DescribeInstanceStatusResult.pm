
package Paws::EC2::DescribeInstanceStatusResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_InstanceStatus/;
  has InstanceStatuses => (is => 'ro', isa => ArrayRef[EC2_InstanceStatus]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'InstanceStatuses' => 'instanceStatusSet'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InstanceStatuses' => {
                                       'class' => 'Paws::EC2::InstanceStatus',
                                       'type' => 'ArrayRef[EC2_InstanceStatus]'
                                     },
               'NextToken' => {
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

Paws::EC2::DescribeInstanceStatusResult

=head1 ATTRIBUTES


=head2 InstanceStatuses => ArrayRef[EC2_InstanceStatus]

Information about the status of the instances.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

