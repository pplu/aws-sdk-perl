
package Paws::SSM::UpdateManagedInstanceRole;
  use Moose;
  has IamRole => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateManagedInstanceRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::UpdateManagedInstanceRoleResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateManagedInstanceRole - Arguments for method UpdateManagedInstanceRole on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateManagedInstanceRole on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method UpdateManagedInstanceRole.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateManagedInstanceRole.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $UpdateManagedInstanceRoleResult = $ssm->UpdateManagedInstanceRole(
      IamRole    => 'MyIamRole',
      InstanceId => 'MyManagedInstanceId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/UpdateManagedInstanceRole>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IamRole => Str

The IAM role you want to assign or change.



=head2 B<REQUIRED> InstanceId => Str

The ID of the managed instance where you want to update the role.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateManagedInstanceRole in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

