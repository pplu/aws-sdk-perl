package Paws::ElastiCache::ProcessedUpdateAction;
  use Moose;
  has ReplicationGroupId => (is => 'ro', isa => 'Str');
  has ServiceUpdateName => (is => 'ro', isa => 'Str');
  has UpdateActionStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ProcessedUpdateAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::ProcessedUpdateAction object:

  $service_obj->Method(Att1 => { ReplicationGroupId => $value, ..., UpdateActionStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::ProcessedUpdateAction object:

  $result = $service_obj->Method(...);
  $result->Att1->ReplicationGroupId

=head1 DESCRIPTION

Update action that has been processed for the corresponding apply/stop
request

=head1 ATTRIBUTES


=head2 ReplicationGroupId => Str

  The ID of the replication group


=head2 ServiceUpdateName => Str

  The unique ID of the service update


=head2 UpdateActionStatus => Str

  The status of the update action on the Redis cluster



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

