package Paws::Config::DeliveryChannelStatus;
  use Moose;
  has ConfigHistoryDeliveryInfo => (is => 'ro', isa => 'Paws::Config::ConfigExportDeliveryInfo', request_name => 'configHistoryDeliveryInfo', traits => ['NameInRequest']);
  has ConfigSnapshotDeliveryInfo => (is => 'ro', isa => 'Paws::Config::ConfigExportDeliveryInfo', request_name => 'configSnapshotDeliveryInfo', traits => ['NameInRequest']);
  has ConfigStreamDeliveryInfo => (is => 'ro', isa => 'Paws::Config::ConfigStreamDeliveryInfo', request_name => 'configStreamDeliveryInfo', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
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


=head2 ConfigHistoryDeliveryInfo => L<Paws::Config::ConfigExportDeliveryInfo>

  A list that contains the status of the delivery of the configuration
history to the specified Amazon S3 bucket.


=head2 ConfigSnapshotDeliveryInfo => L<Paws::Config::ConfigExportDeliveryInfo>

  A list containing the status of the delivery of the snapshot to the
specified Amazon S3 bucket.


=head2 ConfigStreamDeliveryInfo => L<Paws::Config::ConfigStreamDeliveryInfo>

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

