
package Paws::SSOAdmin::DeleteInlinePolicyFromPermissionSet;
  use Moose;
  has InstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has PermissionSetArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInlinePolicyFromPermissionSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::DeleteInlinePolicyFromPermissionSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::DeleteInlinePolicyFromPermissionSet - Arguments for method DeleteInlinePolicyFromPermissionSet on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteInlinePolicyFromPermissionSet on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method DeleteInlinePolicyFromPermissionSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteInlinePolicyFromPermissionSet.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $DeleteInlinePolicyFromPermissionSetResponse =
      $sso->DeleteInlinePolicyFromPermissionSet(
      InstanceArn      => 'MyInstanceArn',
      PermissionSetArn => 'MyPermissionSetArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/DeleteInlinePolicyFromPermissionSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceArn => Str

The ARN of the SSO instance under which the operation will be executed.
For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces in the I<AWS General Reference>.



=head2 B<REQUIRED> PermissionSetArn => Str

The ARN of the permission set that will be used to remove access.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteInlinePolicyFromPermissionSet in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

