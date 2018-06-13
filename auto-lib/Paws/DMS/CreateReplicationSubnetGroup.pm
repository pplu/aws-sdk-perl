
package Paws::DMS::CreateReplicationSubnetGroup;
  use Moose;
  has ReplicationSubnetGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationSubnetGroupIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReplicationSubnetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::CreateReplicationSubnetGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::CreateReplicationSubnetGroup - Arguments for method CreateReplicationSubnetGroup on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReplicationSubnetGroup on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method CreateReplicationSubnetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReplicationSubnetGroup.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $CreateReplicationSubnetGroupResponse =
      $dms->CreateReplicationSubnetGroup(
      ReplicationSubnetGroupDescription => 'MyString',
      ReplicationSubnetGroupIdentifier  => 'MyString',
      SubnetIds                         => [ 'MyString', ... ],
      Tags                              => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $ReplicationSubnetGroup =
      $CreateReplicationSubnetGroupResponse->ReplicationSubnetGroup;

    # Returns a L<Paws::DMS::CreateReplicationSubnetGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/CreateReplicationSubnetGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReplicationSubnetGroupDescription => Str

The description for the subnet group.



=head2 B<REQUIRED> ReplicationSubnetGroupIdentifier => Str

The name for the replication subnet group. This value is stored as a
lowercase string.

Constraints: Must contain no more than 255 alphanumeric characters,
periods, spaces, underscores, or hyphens. Must not be "default".

Example: C<mySubnetgroup>



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

The EC2 subnet IDs for the subnet group.



=head2 Tags => ArrayRef[L<Paws::DMS::Tag>]

The tag to be assigned to the subnet group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReplicationSubnetGroup in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

