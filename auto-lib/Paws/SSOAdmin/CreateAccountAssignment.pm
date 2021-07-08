
package Paws::SSOAdmin::CreateAccountAssignment;
  use Moose;
  has InstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has PermissionSetArn => (is => 'ro', isa => 'Str', required => 1);
  has PrincipalId => (is => 'ro', isa => 'Str', required => 1);
  has PrincipalType => (is => 'ro', isa => 'Str', required => 1);
  has TargetId => (is => 'ro', isa => 'Str', required => 1);
  has TargetType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccountAssignment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::CreateAccountAssignmentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::CreateAccountAssignment - Arguments for method CreateAccountAssignment on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAccountAssignment on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method CreateAccountAssignment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAccountAssignment.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $CreateAccountAssignmentResponse = $sso->CreateAccountAssignment(
      InstanceArn      => 'MyInstanceArn',
      PermissionSetArn => 'MyPermissionSetArn',
      PrincipalId      => 'MyPrincipalId',
      PrincipalType    => 'USER',
      TargetId         => 'MyTargetId',
      TargetType       => 'AWS_ACCOUNT',

    );

    # Results:
    my $AccountAssignmentCreationStatus =
      $CreateAccountAssignmentResponse->AccountAssignmentCreationStatus;

    # Returns a L<Paws::SSOAdmin::CreateAccountAssignmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/CreateAccountAssignment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceArn => Str

The ARN of the SSO instance under which the operation will be executed.
For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces in the I<AWS General Reference>.



=head2 B<REQUIRED> PermissionSetArn => Str

The ARN of the permission set that the admin wants to grant the
principal access to.



=head2 B<REQUIRED> PrincipalId => Str

An identifier for an object in AWS SSO, such as a user or group.
PrincipalIds are GUIDs (For example,
f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
PrincipalIds in AWS SSO, see the AWS SSO Identity Store API Reference.



=head2 B<REQUIRED> PrincipalType => Str

The entity type for which the assignment will be created.

Valid values are: C<"USER">, C<"GROUP">

=head2 B<REQUIRED> TargetId => Str

TargetID is an AWS account identifier, typically a 10-12 digit string
(For example, 123456789012).



=head2 B<REQUIRED> TargetType => Str

The entity type for which the assignment will be created.

Valid values are: C<"AWS_ACCOUNT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAccountAssignment in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

