package Paws::EC2::ConnectionNotification;
  use Moo;  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::EC2::Types qw//;
  has ConnectionEvents => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ConnectionNotificationArn => (is => 'ro', isa => Str);
  has ConnectionNotificationId => (is => 'ro', isa => Str);
  has ConnectionNotificationState => (is => 'ro', isa => Str);
  has ConnectionNotificationType => (is => 'ro', isa => Str);
  has ServiceId => (is => 'ro', isa => Str);
  has VpcEndpointId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConnectionNotificationType' => {
                                                 'type' => 'Str'
                                               },
               'ConnectionEvents' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'ConnectionNotificationState' => {
                                                  'type' => 'Str'
                                                },
               'ConnectionNotificationId' => {
                                               'type' => 'Str'
                                             },
               'VpcEndpointId' => {
                                    'type' => 'Str'
                                  },
               'ConnectionNotificationArn' => {
                                                'type' => 'Str'
                                              },
               'ServiceId' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'ConnectionNotificationType' => 'connectionNotificationType',
                       'ConnectionEvents' => 'connectionEvents',
                       'ConnectionNotificationState' => 'connectionNotificationState',
                       'ConnectionNotificationId' => 'connectionNotificationId',
                       'VpcEndpointId' => 'vpcEndpointId',
                       'ConnectionNotificationArn' => 'connectionNotificationArn',
                       'ServiceId' => 'serviceId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ConnectionNotification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ConnectionNotification object:

  $service_obj->Method(Att1 => { ConnectionEvents => $value, ..., VpcEndpointId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ConnectionNotification object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionEvents

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ConnectionEvents => ArrayRef[Str|Undef]

  The events for the notification. Valid values are C<Accept>,
C<Connect>, C<Delete>, and C<Reject>.


=head2 ConnectionNotificationArn => Str

  The ARN of the SNS topic for the notification.


=head2 ConnectionNotificationId => Str

  The ID of the notification.


=head2 ConnectionNotificationState => Str

  The state of the notification.


=head2 ConnectionNotificationType => Str

  The type of notification.


=head2 ServiceId => Str

  The ID of the endpoint service.


=head2 VpcEndpointId => Str

  The ID of the VPC endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
