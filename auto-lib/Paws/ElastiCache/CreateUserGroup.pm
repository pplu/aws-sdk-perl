
package Paws::ElastiCache::CreateUserGroup;
  use Moose;
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::Tag]');
  has UserGroupId => (is => 'ro', isa => 'Str', required => 1);
  has UserIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUserGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::UserGroup');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateUserGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CreateUserGroup - Arguments for method CreateUserGroup on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUserGroup on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method CreateUserGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUserGroup.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $UserGroup = $elasticache->CreateUserGroup(
      Engine      => 'MyEngineType',
      UserGroupId => 'MyString',
      Tags        => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],    # OPTIONAL
      UserIds => [
        'MyUserId', ...    # min: 1
      ],                   # OPTIONAL
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/CreateUserGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Engine => Str

The current supported value is Redis.



=head2 Tags => ArrayRef[L<Paws::ElastiCache::Tag>]

A list of tags to be added to this resource. A tag is a key-value pair.
A tag key must be accompanied by a tag value, although null is
accepted.



=head2 B<REQUIRED> UserGroupId => Str

The ID of the user group.



=head2 UserIds => ArrayRef[Str|Undef]

The list of user IDs that belong to the user group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUserGroup in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

