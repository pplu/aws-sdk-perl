# Generated by default/object.tt
package Paws::ElastiCache::ReplicationGroupPendingModifiedValues;
  use Moose;
  has AuthTokenStatus => (is => 'ro', isa => 'Str');
  has AutomaticFailoverStatus => (is => 'ro', isa => 'Str');
  has LogDeliveryConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::PendingLogDeliveryConfiguration]');
  has PrimaryClusterId => (is => 'ro', isa => 'Str');
  has Resharding => (is => 'ro', isa => 'Paws::ElastiCache::ReshardingStatus');
  has UserGroups => (is => 'ro', isa => 'Paws::ElastiCache::UserGroupsUpdateStatus');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ReplicationGroupPendingModifiedValues

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::ReplicationGroupPendingModifiedValues object:

  $service_obj->Method(Att1 => { AuthTokenStatus => $value, ..., UserGroups => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::ReplicationGroupPendingModifiedValues object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthTokenStatus

=head1 DESCRIPTION

The settings to be applied to the Redis replication group, either
immediately or during the next maintenance window.

=head1 ATTRIBUTES


=head2 AuthTokenStatus => Str

The auth token status


=head2 AutomaticFailoverStatus => Str

Indicates the status of automatic failover for this Redis replication
group.


=head2 LogDeliveryConfigurations => ArrayRef[L<Paws::ElastiCache::PendingLogDeliveryConfiguration>]

The log delivery configurations being modified


=head2 PrimaryClusterId => Str

The primary cluster ID that is applied immediately (if
C<--apply-immediately> was specified), or during the next maintenance
window.


=head2 Resharding => L<Paws::ElastiCache::ReshardingStatus>

The status of an online resharding operation.


=head2 UserGroups => L<Paws::ElastiCache::UserGroupsUpdateStatus>

The user groups being modified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

