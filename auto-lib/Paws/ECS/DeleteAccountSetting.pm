
package Paws::ECS::DeleteAccountSetting;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has PrincipalArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'principalArn' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAccountSetting');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::DeleteAccountSettingResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeleteAccountSetting - Arguments for method DeleteAccountSetting on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAccountSetting on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method DeleteAccountSetting.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAccountSetting.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $DeleteAccountSettingResponse = $ecs->DeleteAccountSetting(
      Name         => 'serviceLongArnFormat',
      PrincipalArn => 'MyString',               # OPTIONAL
    );

    # Results:
    my $Setting = $DeleteAccountSettingResponse->Setting;

    # Returns a L<Paws::ECS::DeleteAccountSettingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/DeleteAccountSetting>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The resource name for which to disable the new format. If
C<serviceLongArnFormat> is specified, the ARN for your Amazon ECS
services is affected. If C<taskLongArnFormat> is specified, the ARN and
resource ID for your Amazon ECS tasks is affected. If
C<containerInstanceLongArnFormat> is specified, the ARN and resource ID
for your Amazon ECS container instances is affected.

Valid values are: C<"serviceLongArnFormat">, C<"taskLongArnFormat">, C<"containerInstanceLongArnFormat">

=head2 PrincipalArn => Str

The ARN of the principal, which can be an IAM user, IAM role, or the
root user. If you specify the root user, it modifies the ARN and
resource ID format for all IAM users, IAM roles, and the root user of
the account unless an IAM user or role explicitly overrides these
settings for themselves. If this field is omitted, the setting are
changed only for the authenticated user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAccountSetting in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

