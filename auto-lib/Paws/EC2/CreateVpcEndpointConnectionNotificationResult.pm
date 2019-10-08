
package Paws::EC2::CreateVpcEndpointConnectionNotificationResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_ConnectionNotification/;
  has ClientToken => (is => 'ro', isa => Str);
  has ConnectionNotification => (is => 'ro', isa => EC2_ConnectionNotification);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'ConnectionNotification' => {
                                             'class' => 'Paws::EC2::ConnectionNotification',
                                             'type' => 'EC2_ConnectionNotification'
                                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ClientToken' => 'clientToken',
                       'ConnectionNotification' => 'connectionNotification'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpcEndpointConnectionNotificationResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request.


=head2 ConnectionNotification => EC2_ConnectionNotification

Information about the notification.


=head2 _request_id => Str


=cut

