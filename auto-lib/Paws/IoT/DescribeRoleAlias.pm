
package Paws::IoT::DescribeRoleAlias;
  use Moose;
  has RoleAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'roleAlias', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRoleAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/role-aliases/{roleAlias}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeRoleAliasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeRoleAlias - Arguments for method DescribeRoleAlias on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRoleAlias on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeRoleAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRoleAlias.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeRoleAliasResponse = $iot->DescribeRoleAlias(
      RoleAlias => 'MyRoleAlias',

    );

    # Results:
    my $RoleAliasDescription = $DescribeRoleAliasResponse->RoleAliasDescription;

    # Returns a L<Paws::IoT::DescribeRoleAliasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeRoleAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RoleAlias => Str

The role alias to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRoleAlias in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

