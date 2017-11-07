package Paws::DMS::ReplicationPendingModifiedValues;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has ReplicationInstanceClass => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ReplicationPendingModifiedValues

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::ReplicationPendingModifiedValues object:

  $service_obj->Method(Att1 => { AllocatedStorage => $value, ..., ReplicationInstanceClass => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::ReplicationPendingModifiedValues object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocatedStorage

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

  The amount of storage (in gigabytes) that is allocated for the
replication instance.


=head2 EngineVersion => Str

  The engine version number of the replication instance.


=head2 MultiAZ => Bool

  Specifies if the replication instance is a Multi-AZ deployment. You
cannot set the C<AvailabilityZone> parameter if the Multi-AZ parameter
is set to C<true>.


=head2 ReplicationInstanceClass => Str

  The compute and memory capacity of the replication instance.

Valid Values: C<dms.t2.micro | dms.t2.small | dms.t2.medium |
dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge |
dms.c4.4xlarge>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

