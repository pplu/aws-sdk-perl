
package Paws::IAM::PutRolePermissionsBoundary;
  use Moose;
  has PermissionsBoundary => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRolePermissionsBoundary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::PutRolePermissionsBoundary - Arguments for method PutRolePermissionsBoundary on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRolePermissionsBoundary on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method PutRolePermissionsBoundary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRolePermissionsBoundary.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    $iam->PutRolePermissionsBoundary(
      PermissionsBoundary => 'MyarnType',
      RoleName            => 'MyroleNameType',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/PutRolePermissionsBoundary>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PermissionsBoundary => Str

The ARN of the policy that is used to set the permissions boundary for
the role.



=head2 B<REQUIRED> RoleName => Str

The name (friendly name, not ARN) of the IAM role for which you want to
set the permissions boundary.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRolePermissionsBoundary in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

