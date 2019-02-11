
package Paws::IAM::AttachRolePolicy;
  use Moose;
  has PolicyArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachRolePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::AttachRolePolicy - Arguments for method AttachRolePolicy on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachRolePolicy on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method AttachRolePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachRolePolicy.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To attach a managed policy to an IAM role
    # The following command attaches the AWS managed policy named ReadOnlyAccess
    # to the IAM role named ReadOnlyRole.
    $iam->AttachRolePolicy(
      {
        'PolicyArn' => 'arn:aws:iam::aws:policy/ReadOnlyAccess',
        'RoleName'  => 'ReadOnlyRole'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/AttachRolePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyArn => Str

The Amazon Resource Name (ARN) of the IAM policy you want to attach.

For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<AWS General Reference>.



=head2 B<REQUIRED> RoleName => Str

The name (friendly name, not ARN) of the role to attach the policy to.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachRolePolicy in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

