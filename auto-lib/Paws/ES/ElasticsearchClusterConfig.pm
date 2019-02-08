package Paws::ES::ElasticsearchClusterConfig;
  use Moose;
  has DedicatedMasterCount => (is => 'ro', isa => 'Int');
  has DedicatedMasterEnabled => (is => 'ro', isa => 'Bool');
  has DedicatedMasterType => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has InstanceType => (is => 'ro', isa => 'Str');
  has ZoneAwarenessConfig => (is => 'ro', isa => 'Paws::ES::ZoneAwarenessConfig');
  has ZoneAwarenessEnabled => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ElasticsearchClusterConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::ElasticsearchClusterConfig object:

  $service_obj->Method(Att1 => { DedicatedMasterCount => $value, ..., ZoneAwarenessEnabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::ElasticsearchClusterConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->DedicatedMasterCount

=head1 DESCRIPTION

Specifies the configuration for the domain cluster, such as the type
and number of instances.

=head1 ATTRIBUTES


=head2 DedicatedMasterCount => Int

  Total number of dedicated master nodes, active and on standby, for the
cluster.


=head2 DedicatedMasterEnabled => Bool

  A boolean value to indicate whether a dedicated master node is enabled.
See About Dedicated Master Nodes
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-dedicatedmasternodes)
for more information.


=head2 DedicatedMasterType => Str

  The instance type for a dedicated master node.


=head2 InstanceCount => Int

  The number of instances in the specified domain cluster.


=head2 InstanceType => Str

  The instance type for an Elasticsearch cluster.


=head2 ZoneAwarenessConfig => L<Paws::ES::ZoneAwarenessConfig>

  Specifies the zone awareness configuration for a domain when zone
awareness is enabled.


=head2 ZoneAwarenessEnabled => Bool

  A boolean value to indicate whether zone awareness is enabled. See
About Zone Awareness
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-zoneawareness)
for more information.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

