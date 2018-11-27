
package Paws::Greengrass::AssociateRoleToGroup;
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GroupId', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateRoleToGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/groups/{GroupId}/role');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::AssociateRoleToGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::AssociateRoleToGroup - Arguments for method AssociateRoleToGroup on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateRoleToGroup on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method AssociateRoleToGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateRoleToGroup.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $AssociateRoleToGroupResponse = $greengrass->AssociateRoleToGroup(
      GroupId => 'My__string',
      RoleArn => 'My__string',    # OPTIONAL
    );

    # Results:
    my $AssociatedAt = $AssociateRoleToGroupResponse->AssociatedAt;

    # Returns a L<Paws::Greengrass::AssociateRoleToGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/AssociateRoleToGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupId => Str

The ID of the Greengrass group.



=head2 RoleArn => Str

The ARN of the role you wish to associate with this group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateRoleToGroup in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

