# Generated from default/object.tt
package Paws::Config::DeliveryChannelStatus;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw/Config_ConfigExportDeliveryInfo Config_ConfigStreamDeliveryInfo/;
  has ConfigHistoryDeliveryInfo => (is => 'ro', isa => Config_ConfigExportDeliveryInfo);
  has ConfigSnapshotDeliveryInfo => (is => 'ro', isa => Config_ConfigExportDeliveryInfo);
  has ConfigStreamDeliveryInfo => (is => 'ro', isa => Config_ConfigStreamDeliveryInfo);
  has Name => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'ConfigStreamDeliveryInfo' => {
                                               'type' => 'Config_ConfigStreamDeliveryInfo',
                                               'class' => 'Paws::Config::ConfigStreamDeliveryInfo'
                                             },
               'ConfigSnapshotDeliveryInfo' => {
                                                 'class' => 'Paws::Config::ConfigExportDeliveryInfo',
                                                 'type' => 'Config_ConfigExportDeliveryInfo'
                                               },
               'ConfigHistoryDeliveryInfo' => {
                                                'class' => 'Paws::Config::ConfigExportDeliveryInfo',
                                                'type' => 'Config_ConfigExportDeliveryInfo'
                                              }
             },
  'NameInRequest' => {
                       'ConfigHistoryDeliveryInfo' => 'configHistoryDeliveryInfo',
                       'ConfigSnapshotDeliveryInfo' => 'configSnapshotDeliveryInfo',
                       'ConfigStreamDeliveryInfo' => 'configStreamDeliveryInfo',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DeliveryChannelStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::DeliveryChannelStatus object:

  $service_obj->Method(Att1 => { ConfigHistoryDeliveryInfo => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::DeliveryChannelStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigHistoryDeliveryInfo

=head1 DESCRIPTION

The status of a specified delivery channel.

Valid values: C<Success> | C<Failure>

=head1 ATTRIBUTES


=head2 ConfigHistoryDeliveryInfo => Config_ConfigExportDeliveryInfo

  A list that contains the status of the delivery of the configuration
history to the specified Amazon S3 bucket.


=head2 ConfigSnapshotDeliveryInfo => Config_ConfigExportDeliveryInfo

  A list containing the status of the delivery of the snapshot to the
specified Amazon S3 bucket.


=head2 ConfigStreamDeliveryInfo => Config_ConfigStreamDeliveryInfo

  A list containing the status of the delivery of the configuration
stream notification to the specified Amazon SNS topic.


=head2 Name => Str

  The name of the delivery channel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

