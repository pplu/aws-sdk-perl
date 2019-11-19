
package Paws::EC2::DescribeVpcEndpointConnectionNotificationsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ConnectionNotification/;
  has ConnectionNotificationSet => (is => 'ro', isa => ArrayRef[EC2_ConnectionNotification]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ConnectionNotificationSet' => {
                                                'class' => 'Paws::EC2::ConnectionNotification',
                                                'type' => 'ArrayRef[EC2_ConnectionNotification]'
                                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ConnectionNotificationSet' => 'connectionNotificationSet',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcEndpointConnectionNotificationsResult

=head1 ATTRIBUTES


=head2 ConnectionNotificationSet => ArrayRef[EC2_ConnectionNotification]

One or more notifications.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

