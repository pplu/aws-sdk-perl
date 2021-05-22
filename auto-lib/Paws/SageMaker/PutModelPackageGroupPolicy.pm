
package Paws::SageMaker::PutModelPackageGroupPolicy;
  use Moose;
  has ModelPackageGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ResourcePolicy => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutModelPackageGroupPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::PutModelPackageGroupPolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::PutModelPackageGroupPolicy - Arguments for method PutModelPackageGroupPolicy on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutModelPackageGroupPolicy on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method PutModelPackageGroupPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutModelPackageGroupPolicy.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $PutModelPackageGroupPolicyOutput =
      $api . sagemaker->PutModelPackageGroupPolicy(
      ModelPackageGroupName => 'MyEntityName',
      ResourcePolicy        => 'MyPolicyString',

      );

    # Results:
    my $ModelPackageGroupArn =
      $PutModelPackageGroupPolicyOutput->ModelPackageGroupArn;

    # Returns a L<Paws::SageMaker::PutModelPackageGroupPolicyOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/PutModelPackageGroupPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelPackageGroupName => Str

The name of the model group to add a resource policy to.



=head2 B<REQUIRED> ResourcePolicy => Str

The resource policy for the model group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutModelPackageGroupPolicy in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

