# Generated from default/object.tt
package Paws::IoT::IotAnalyticsAction;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has ChannelArn => (is => 'ro', isa => Str);
  has ChannelName => (is => 'ro', isa => Str);
  has RoleArn => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'ChannelName' => {
                                  'type' => 'Str'
                                },
               'ChannelArn' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'RoleArn' => 'roleArn',
                       'ChannelName' => 'channelName',
                       'ChannelArn' => 'channelArn'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::IotAnalyticsAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::IotAnalyticsAction object:

  $service_obj->Method(Att1 => { ChannelArn => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::IotAnalyticsAction object:

  $result = $service_obj->Method(...);
  $result->Att1->ChannelArn

=head1 DESCRIPTION

Sends messge data to an AWS IoT Analytics channel.

=head1 ATTRIBUTES


=head2 ChannelArn => Str

  (deprecated) The ARN of the IoT Analytics channel to which message data
will be sent.


=head2 ChannelName => Str

  The name of the IoT Analytics channel to which message data will be
sent.


=head2 RoleArn => Str

  The ARN of the role which has a policy that grants IoT Analytics
permission to send message data via IoT Analytics
(iotanalytics:BatchPutMessage).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

