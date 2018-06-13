
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

Paws::DMS::ModifyReplicationSubnetGroup - Arguments for method ModifyReplicationSubnetGroup on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyReplicationSubnetGroup on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method ModifyReplicationSubnetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyReplicationSubnetGroup.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $ModifyReplicationSubnetGroupResponse =
      $dms->ModifyReplicationSubnetGroup(
      ReplicationSubnetGroupIdentifier  => 'MyString',
      SubnetIds                         => [ 'MyString', ... ],
      ReplicationSubnetGroupDescription => 'MyString',            # OPTIONAL
      );

    # Results:
    my $ReplicationSubnetGroup =
      $ModifyReplicationSubnetGroupResponse->ReplicationSubnetGroup;

    # Returns a L<Paws::DMS::ModifyReplicationSubnetGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/ModifyReplicationSubnetGroup>

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

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

