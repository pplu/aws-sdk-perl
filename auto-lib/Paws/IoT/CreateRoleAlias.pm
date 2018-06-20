
package Paws::IoT::CreateRoleAlias;
  use Moose;
  has CredentialDurationSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'credentialDurationSeconds');
  has RoleAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'roleAlias', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRoleAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/role-aliases/{roleAlias}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateRoleAliasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateRoleAlias - Arguments for method CreateRoleAlias on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRoleAlias on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateRoleAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRoleAlias.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateRoleAliasResponse = $iot->CreateRoleAlias(
      RoleAlias                 => 'MyRoleAlias',
      RoleArn                   => 'MyRoleArn',
      CredentialDurationSeconds => 1,               # OPTIONAL
    );

    # Results:
    my $RoleAlias    = $CreateRoleAliasResponse->RoleAlias;
    my $RoleAliasArn = $CreateRoleAliasResponse->RoleAliasArn;

    # Returns a L<Paws::IoT::CreateRoleAliasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateRoleAlias>

=head1 ATTRIBUTES


=head2 CredentialDurationSeconds => Int

How long (in seconds) the credentials will be valid.



=head2 B<REQUIRED> RoleAlias => Str

The role alias that points to a role ARN. This allows you to change the
role without having to update the device.



=head2 B<REQUIRED> RoleArn => Str

The role ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRoleAlias in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

