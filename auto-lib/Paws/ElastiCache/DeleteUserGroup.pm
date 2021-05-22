
package Paws::ElastiCache::DeleteUserGroup;
  use Moose;
  has UserGroupId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUserGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::UserGroup');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteUserGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DeleteUserGroup - Arguments for method DeleteUserGroup on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteUserGroup on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DeleteUserGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteUserGroup.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $UserGroup = $elasticache->DeleteUserGroup(
      UserGroupId => 'MyString',

    );

    # Results:
    my $ARN               = $UserGroup->ARN;
    my $Engine            = $UserGroup->Engine;
    my $PendingChanges    = $UserGroup->PendingChanges;
    my $ReplicationGroups = $UserGroup->ReplicationGroups;
    my $Status            = $UserGroup->Status;
    my $UserGroupId       = $UserGroup->UserGroupId;
    my $UserIds           = $UserGroup->UserIds;

    # Returns a L<Paws::ElastiCache::UserGroup> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DeleteUserGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> UserGroupId => Str

The ID of the user group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteUserGroup in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

