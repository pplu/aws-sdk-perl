package Paws::Config::DeliveryChannelStatus;
  use Moose;
  has configHistoryDeliveryInfo => (is => 'ro', isa => 'Paws::Config::ConfigExportDeliveryInfo');
  has configSnapshotDeliveryInfo => (is => 'ro', isa => 'Paws::Config::ConfigExportDeliveryInfo');
  has configStreamDeliveryInfo => (is => 'ro', isa => 'Paws::Config::ConfigStreamDeliveryInfo');
  has name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DeliveryChannelStatus

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::DeliveryChannelStatus object:

  $service_obj->Method(Att1 => { configHistoryDeliveryInfo => $value, ..., name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::DeliveryChannelStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->configHistoryDeliveryInfo

=head1 ATTRIBUTES

=head2 configHistoryDeliveryInfo => Paws::Config::ConfigExportDeliveryInfo

  

A list that contains the status of the delivery of the configuration
history to the specified Amazon S3 bucket.










=head2 configSnapshotDeliveryInfo => Paws::Config::ConfigExportDeliveryInfo

  

A list containing the status of the delivery of the snapshot to the
specified Amazon S3 bucket.










=head2 configStreamDeliveryInfo => Paws::Config::ConfigStreamDeliveryInfo

  

A list containing the status of the delivery of the configuration
stream notification to the specified Amazon SNS topic.










=head2 name => Str

  

The name of the delivery channel.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

