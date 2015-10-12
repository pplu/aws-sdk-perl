package Paws::ElastiCache::ReplicationGroup;
  use Moose;
  has AutomaticFailover => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has MemberClusters => (is => 'ro', isa => 'ArrayRef[Str]');
  has NodeGroups => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::NodeGroup]');
  has PendingModifiedValues => (is => 'ro', isa => 'Paws::ElastiCache::ReplicationGroupPendingModifiedValues');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');
  has SnapshottingClusterId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ReplicationGroup

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::ReplicationGroup object:

  $service_obj->Method(Att1 => { AutomaticFailover => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::ReplicationGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->AutomaticFailover

=head1 ATTRIBUTES

=head2 AutomaticFailover => Str

  

Indicates the status of Multi-AZ for this replication group.

ElastiCache Multi-AZ replication groups are not supported on:

=over

=item * Redis versions earlier than 2.8.6.

=item * T1 and T2 cache node types.

=back










=head2 Description => Str

  

The description of the replication group.










=head2 MemberClusters => ArrayRef[Str]

  

The names of all the cache clusters that are part of this replication
group.










=head2 NodeGroups => ArrayRef[Paws::ElastiCache::NodeGroup]

  

A single element list with information about the nodes in the
replication group.










=head2 PendingModifiedValues => Paws::ElastiCache::ReplicationGroupPendingModifiedValues

  

A group of settings to be applied to the replication group, either
immediately or during the next maintenance window.










=head2 ReplicationGroupId => Str

  

The identifier for the replication group.










=head2 SnapshottingClusterId => Str

  

The cache cluster ID that is used as the daily snapshot source for the
replication group.










=head2 Status => Str

  

The current state of this replication group - I<creating>,
I<available>, etc.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

