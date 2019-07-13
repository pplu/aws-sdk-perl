package Paws::Kafka::BrokerEBSVolumeInfo;
  use Moose;
  has KafkaBrokerNodeId => (is => 'ro', isa => 'Str', request_name => 'kafkaBrokerNodeId', traits => ['NameInRequest'], required => 1);
  has VolumeSizeGB => (is => 'ro', isa => 'Int', request_name => 'volumeSizeGB', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::BrokerEBSVolumeInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kafka::BrokerEBSVolumeInfo object:

  $service_obj->Method(Att1 => { KafkaBrokerNodeId => $value, ..., VolumeSizeGB => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::BrokerEBSVolumeInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->KafkaBrokerNodeId

=head1 DESCRIPTION

Specifies the EBS volume upgrade information. The broker identifier
must be set to the keyword ALL. This means the changes apply to all the
brokers in the cluster.

=head1 ATTRIBUTES


=head2 B<REQUIRED> KafkaBrokerNodeId => Str

  The ID of the broker to update.


=head2 B<REQUIRED> VolumeSizeGB => Int

  Size of the EBS volume to update.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

