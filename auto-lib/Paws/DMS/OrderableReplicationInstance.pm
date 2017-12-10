package Paws::DMS::OrderableReplicationInstance;
  use Moose;
  has DefaultAllocatedStorage => (is => 'ro', isa => 'Int');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has IncludedAllocatedStorage => (is => 'ro', isa => 'Int');
  has MaxAllocatedStorage => (is => 'ro', isa => 'Int');
  has MinAllocatedStorage => (is => 'ro', isa => 'Int');
  has ReplicationInstanceClass => (is => 'ro', isa => 'Str');
  has StorageType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::OrderableReplicationInstance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::OrderableReplicationInstance object:

  $service_obj->Method(Att1 => { DefaultAllocatedStorage => $value, ..., StorageType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::OrderableReplicationInstance object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultAllocatedStorage

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DefaultAllocatedStorage => Int

  The default amount of storage (in gigabytes) that is allocated for the
replication instance.


=head2 EngineVersion => Str

  The version of the replication engine.


=head2 IncludedAllocatedStorage => Int

  The amount of storage (in gigabytes) that is allocated for the
replication instance.


=head2 MaxAllocatedStorage => Int

  The minimum amount of storage (in gigabytes) that can be allocated for
the replication instance.


=head2 MinAllocatedStorage => Int

  The minimum amount of storage (in gigabytes) that can be allocated for
the replication instance.


=head2 ReplicationInstanceClass => Str

  The compute and memory capacity of the replication instance.

Valid Values: C<dms.t2.micro | dms.t2.small | dms.t2.medium |
dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge |
dms.c4.4xlarge>


=head2 StorageType => Str

  The type of storage used by the replication instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

