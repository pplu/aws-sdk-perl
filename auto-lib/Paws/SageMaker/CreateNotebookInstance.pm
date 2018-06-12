
package Paws::SageMaker::CreateNotebookInstance;
  use Moose;
  has DirectInternetAccess => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LifecycleConfigName => (is => 'ro', isa => 'Str');
  has NotebookInstanceName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SubnetId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNotebookInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateNotebookInstanceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateNotebookInstance - Arguments for method CreateNotebookInstance on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNotebookInstance on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateNotebookInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNotebookInstance.

As an example:

  $service_obj->CreateNotebookInstance(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker/CreateNotebookInstance>

=head1 ATTRIBUTES


=head2 DirectInternetAccess => Str

Sets whether Amazon SageMaker provides internet access to the notebook
instance. If you set this to C<Disabled> this notebook instance will be
able to access resources only in your VPC, and will not be able to
connect to Amazon SageMaker training and endpoint services unless your
configure a NAT Gateway in your VPC.

For more information, see appendix-notebook-and-internet-access. You
can set the value of this parameter to C<Disabled> only if you set a
value for the C<SubnetId> parameter.

Valid values are: C<"Enabled">, C<"Disabled">

=head2 B<REQUIRED> InstanceType => Str

The type of ML compute instance to launch for the notebook instance.

Valid values are: C<"ml.t2.medium">, C<"ml.t2.large">, C<"ml.t2.xlarge">, C<"ml.t2.2xlarge">, C<"ml.m4.xlarge">, C<"ml.m4.2xlarge">, C<"ml.m4.4xlarge">, C<"ml.m4.10xlarge">, C<"ml.m4.16xlarge">, C<"ml.p2.xlarge">, C<"ml.p2.8xlarge">, C<"ml.p2.16xlarge">, C<"ml.p3.2xlarge">, C<"ml.p3.8xlarge">, C<"ml.p3.16xlarge">

=head2 KmsKeyId => Str

If you provide a AWS KMS key ID, Amazon SageMaker uses it to encrypt
data at rest on the ML storage volume that is attached to your notebook
instance.



=head2 LifecycleConfigName => Str

The name of a lifecycle configuration to associate with the notebook
instance. For information about lifestyle configurations, see
notebook-lifecycle-config.



=head2 B<REQUIRED> NotebookInstanceName => Str

The name of the new notebook instance.



=head2 B<REQUIRED> RoleArn => Str

When you send any requests to AWS resources from the notebook instance,
Amazon SageMaker assumes this role to perform tasks on your behalf. You
must grant this role necessary permissions so Amazon SageMaker can
perform these tasks. The policy must allow the Amazon SageMaker service
principal (sagemaker.amazonaws.com) permissions to assume this role.
For more information, see Amazon SageMaker Roles
(http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html).

To be able to pass this role to Amazon SageMaker, the caller of this
API must have the C<iam:PassRole> permission.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The VPC security group IDs, in the form sg-xxxxxxxx. The security
groups must be for the same VPC as specified in the subnet.



=head2 SubnetId => Str

The ID of the subnet in a VPC to which you would like to have a
connectivity from your ML compute instance.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

A list of tags to associate with the notebook instance. You can add
tags later by using the C<CreateTags> API.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNotebookInstance in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

