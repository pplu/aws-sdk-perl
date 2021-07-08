
package Paws::ECS::PutAccountSetting;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has PrincipalArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'principalArn' );
  has Value => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'value' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAccountSetting');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::PutAccountSettingResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::PutAccountSetting - Arguments for method PutAccountSetting on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAccountSetting on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method PutAccountSetting.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAccountSetting.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $PutAccountSettingResponse = $ecs->PutAccountSetting(
      Name         => 'serviceLongArnFormat',
      Value        => 'MyString',
      PrincipalArn => 'MyString',               # OPTIONAL
    );

    # Results:
    my $Setting = $PutAccountSettingResponse->Setting;

    # Returns a L<Paws::ECS::PutAccountSettingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/PutAccountSetting>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The Amazon ECS resource name for which to modify the account setting.
If C<serviceLongArnFormat> is specified, the ARN for your Amazon ECS
services is affected. If C<taskLongArnFormat> is specified, the ARN and
resource ID for your Amazon ECS tasks is affected. If
C<containerInstanceLongArnFormat> is specified, the ARN and resource ID
for your Amazon ECS container instances is affected. If
C<awsvpcTrunking> is specified, the elastic network interface (ENI)
limit for your Amazon ECS container instances is affected. If
C<containerInsights> is specified, the default setting for CloudWatch
Container Insights for your clusters is affected.

Valid values are: C<"serviceLongArnFormat">, C<"taskLongArnFormat">, C<"containerInstanceLongArnFormat">, C<"awsvpcTrunking">, C<"containerInsights">

=head2 PrincipalArn => Str

The ARN of the principal, which can be an IAM user, IAM role, or the
root user. If you specify the root user, it modifies the account
setting for all IAM users, IAM roles, and the root user of the account
unless an IAM user or role explicitly overrides these settings. If this
field is omitted, the setting is changed only for the authenticated
user.

Federated users assume the account setting of the root user and can't
have explicit account settings set for them.



=head2 B<REQUIRED> Value => Str

The account setting value for the specified principal ARN. Accepted
values are C<enabled> and C<disabled>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAccountSetting in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

