
package Paws::SageMaker::CreateModelPackageGroup;
  use Moose;
  has ModelPackageGroupDescription => (is => 'ro', isa => 'Str');
  has ModelPackageGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateModelPackageGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateModelPackageGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateModelPackageGroup - Arguments for method CreateModelPackageGroup on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateModelPackageGroup on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateModelPackageGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateModelPackageGroup.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateModelPackageGroupOutput =
      $api . sagemaker->CreateModelPackageGroup(
      ModelPackageGroupName        => 'MyEntityName',
      ModelPackageGroupDescription => 'MyEntityDescription',    # OPTIONAL
      Tags                         => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $ModelPackageGroupArn =
      $CreateModelPackageGroupOutput->ModelPackageGroupArn;

    # Returns a L<Paws::SageMaker::CreateModelPackageGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateModelPackageGroup>

=head1 ATTRIBUTES


=head2 ModelPackageGroupDescription => Str

A description for the model group.



=head2 B<REQUIRED> ModelPackageGroupName => Str

The name of the model group.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

A list of key value pairs associated with the model group. For more
information, see Tagging AWS resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<AWS General Reference Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateModelPackageGroup in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

