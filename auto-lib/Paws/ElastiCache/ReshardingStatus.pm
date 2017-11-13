package Paws::ElastiCache::ReshardingStatus;
  use Moose;
  has SlotMigration => (is => 'ro', isa => 'Paws::ElastiCache::SlotMigration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ReshardingStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::ReshardingStatus object:

  $service_obj->Method(Att1 => { SlotMigration => $value, ..., SlotMigration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::ReshardingStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->SlotMigration

=head1 DESCRIPTION

The status of an online resharding operation.

=head1 ATTRIBUTES


=head2 SlotMigration => L<Paws::ElastiCache::SlotMigration>

  Represents the progress of an online resharding operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

