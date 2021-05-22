
package Paws::Connect::CreateUserHierarchyGroup;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ParentGroupId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUserHierarchyGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/user-hierarchy-groups/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreateUserHierarchyGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateUserHierarchyGroup - Arguments for method CreateUserHierarchyGroup on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUserHierarchyGroup on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreateUserHierarchyGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUserHierarchyGroup.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreateUserHierarchyGroupResponse = $connect->CreateUserHierarchyGroup(
      InstanceId    => 'MyInstanceId',
      Name          => 'MyHierarchyGroupName',
      ParentGroupId => 'MyHierarchyGroupId',     # OPTIONAL
    );

    # Results:
    my $HierarchyGroupArn =
      $CreateUserHierarchyGroupResponse->HierarchyGroupArn;
    my $HierarchyGroupId = $CreateUserHierarchyGroupResponse->HierarchyGroupId;

    # Returns a L<Paws::Connect::CreateUserHierarchyGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateUserHierarchyGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 B<REQUIRED> Name => Str

The name of the user hierarchy group. Must not be more than 100
characters.



=head2 ParentGroupId => Str

The identifier for the parent hierarchy group. The user hierarchy is
created at level one if the parent group ID is null.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUserHierarchyGroup in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

