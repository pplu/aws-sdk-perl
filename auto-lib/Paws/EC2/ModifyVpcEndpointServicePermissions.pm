
package Paws::EC2::ModifyVpcEndpointServicePermissions;
  use Moose;
  has AddAllowedPrincipals => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DryRun => (is => 'ro', isa => 'Bool');
  has RemoveAllowedPrincipals => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ServiceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVpcEndpointServicePermissions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyVpcEndpointServicePermissionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVpcEndpointServicePermissions - Arguments for method ModifyVpcEndpointServicePermissions on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyVpcEndpointServicePermissions on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyVpcEndpointServicePermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyVpcEndpointServicePermissions.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyVpcEndpointServicePermissionsResult =
      $ec2->ModifyVpcEndpointServicePermissions(
      ServiceId               => 'MyString',
      AddAllowedPrincipals    => [ 'MyString', ... ],    # OPTIONAL
      DryRun                  => 1,                      # OPTIONAL
      RemoveAllowedPrincipals => [ 'MyString', ... ],    # OPTIONAL
      );

    # Results:
    my $ReturnValue = $ModifyVpcEndpointServicePermissionsResult->ReturnValue;

    # Returns a L<Paws::EC2::ModifyVpcEndpointServicePermissionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyVpcEndpointServicePermissions>

=head1 ATTRIBUTES


=head2 AddAllowedPrincipals => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of one or more principals. Permissions
are granted to the principals in this list. To grant permissions to all
principals, specify an asterisk (*).



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 RemoveAllowedPrincipals => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of one or more principals. Permissions
are revoked for principals in this list.



=head2 B<REQUIRED> ServiceId => Str

The ID of the service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyVpcEndpointServicePermissions in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

