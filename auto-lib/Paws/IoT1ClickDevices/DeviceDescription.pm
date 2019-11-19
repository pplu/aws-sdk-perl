# Generated from default/object.tt
package Paws::IoT1ClickDevices::DeviceDescription;
  use Moo;
  use Types::Standard qw/Str Bool Num/;
  use Paws::IoT1ClickDevices::Types qw/IoT1ClickDevices___mapOf__string IoT1ClickDevices_DeviceAttributes/;
  has Arn => (is => 'ro', isa => Str);
  has Attributes => (is => 'ro', isa => IoT1ClickDevices_DeviceAttributes);
  has DeviceId => (is => 'ro', isa => Str);
  has Enabled => (is => 'ro', isa => Bool);
  has RemainingLife => (is => 'ro', isa => Num);
  has Tags => (is => 'ro', isa => IoT1ClickDevices___mapOf__string);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'RemainingLife' => 'remainingLife',
                       'Arn' => 'arn',
                       'Enabled' => 'enabled',
                       'Attributes' => 'attributes',
                       'DeviceId' => 'deviceId',
                       'Type' => 'type'
                     },
  'types' => {
               'Tags' => {
                           'type' => 'IoT1ClickDevices___mapOf__string',
                           'class' => 'Paws::IoT1ClickDevices::__mapOf__string'
                         },
               'RemainingLife' => {
                                    'type' => 'Num'
                                  },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Enabled' => {
                              'type' => 'Bool'
                            },
               'Attributes' => {
                                 'class' => 'Paws::IoT1ClickDevices::DeviceAttributes',
                                 'type' => 'IoT1ClickDevices_DeviceAttributes'
                               },
               'DeviceId' => {
                               'type' => 'Str'
                             },
               'Type' => {
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

Paws::IoT1ClickDevices::DeviceDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT1ClickDevices::DeviceDescription object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT1ClickDevices::DeviceDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN of the device.


=head2 Attributes => IoT1ClickDevices_DeviceAttributes

  An array of zero or more elements of DeviceAttribute objects providing
user specified device attributes.


=head2 DeviceId => Str

  The unique identifier of the device.


=head2 Enabled => Bool

  A Boolean value indicating whether or not the device is enabled.


=head2 RemainingLife => Num

  A value between 0 and 1 inclusive, representing the fraction of life
remaining for the device.


=head2 Tags => IoT1ClickDevices___mapOf__string

  The tags currently associated with the AWS IoT 1-Click device.


=head2 Type => Str

  The type of the device, such as "button".



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT1ClickDevices>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

