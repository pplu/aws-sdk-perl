
package Paws::IoT::UpdateRoleAlias;
  use Moose;
  has CredentialDurationSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'credentialDurationSeconds');
  has RoleAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'roleAlias', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRoleAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/role-aliases/{roleAlias}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::UpdateRoleAliasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateRoleAlias - Arguments for method UpdateRoleAlias on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRoleAlias on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateRoleAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRoleAlias.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdateRoleAliasResponse = $iot->UpdateRoleAlias(
      RoleAlias                 => 'MyRoleAlias',
      CredentialDurationSeconds => 1,               # OPTIONAL
      RoleArn                   => 'MyRoleArn',     # OPTIONAL
    );

    # Results:
    my $RoleAlias    = $UpdateRoleAliasResponse->RoleAlias;
    my $RoleAliasArn = $UpdateRoleAliasResponse->RoleAliasArn;

    # Returns a L<Paws::IoT::UpdateRoleAliasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateRoleAlias>

=head1 ATTRIBUTES


=head2 CredentialDurationSeconds => Int

The number of seconds the credential will be valid.



=head2 B<REQUIRED> RoleAlias => Str

The role alias to update.



=head2 RoleArn => Str

The role ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRoleAlias in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

