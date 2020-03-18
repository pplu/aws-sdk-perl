
package Paws::Shield::AssociateDRTRole;
  use Moose;
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateDRTRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Shield::AssociateDRTRoleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::AssociateDRTRole - Arguments for method AssociateDRTRole on L<Paws::Shield>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateDRTRole on the
L<AWS Shield|Paws::Shield> service. Use the attributes of this class
as arguments to method AssociateDRTRole.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateDRTRole.

=head1 SYNOPSIS

    my $shield = Paws->service('Shield');
    my $AssociateDRTRoleResponse = $shield->AssociateDRTRole(
      RoleArn => 'MyRoleArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/shield/AssociateDRTRole>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the role the DRT will use to access
your AWS account.

Prior to making the C<AssociateDRTRole> request, you must attach the
AWSShieldDRTAccessPolicy
(https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy)
managed policy to this role. For more information see Attaching and
Detaching IAM Policies.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateDRTRole in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

