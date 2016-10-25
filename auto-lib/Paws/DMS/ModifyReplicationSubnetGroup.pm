
package Paws::DMS::ModifyReplicationSubnetGroup;
  use Moose;
  has ReplicationSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has ReplicationSubnetGroupIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyReplicationSubnetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::ModifyReplicationSubnetGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ModifyReplicationSubnetGroup - Arguments for method ModifyReplicationSubnetGroup on Paws::DMS

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyReplicationSubnetGroup on the 
AWS Database Migration Service service. Use the attributes of this class
as arguments to method ModifyReplicationSubnetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyReplicationSubnetGroup.

As an example:

  $service_obj->ModifyReplicationSubnetGroup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ReplicationSubnetGroupDescription => Str

The description of the replication instance subnet group.



=head2 B<REQUIRED> ReplicationSubnetGroupIdentifier => Str

The name of the replication instance subnet group.



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

A list of subnet IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyReplicationSubnetGroup in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

