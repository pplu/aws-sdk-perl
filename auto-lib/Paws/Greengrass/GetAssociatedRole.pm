
package Paws::Greengrass::GetAssociatedRole;
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GroupId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAssociatedRole');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/groups/{GroupId}/role');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::GetAssociatedRoleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetAssociatedRole - Arguments for method GetAssociatedRole on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAssociatedRole on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method GetAssociatedRole.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAssociatedRole.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $GetAssociatedRoleResponse = $greengrass->GetAssociatedRole(
      GroupId => 'My__string',

    );

    # Results:
    my $AssociatedAt = $GetAssociatedRoleResponse->AssociatedAt;
    my $RoleArn      = $GetAssociatedRoleResponse->RoleArn;

    # Returns a L<Paws::Greengrass::GetAssociatedRoleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/GetAssociatedRole>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupId => Str

The ID of the Greengrass group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAssociatedRole in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

