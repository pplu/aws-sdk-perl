
package Paws::SageMaker::DescribeCodeRepository;
  use Moose;
  has CodeRepositoryName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCodeRepository');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeCodeRepositoryOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeCodeRepository - Arguments for method DescribeCodeRepository on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCodeRepository on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeCodeRepository.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCodeRepository.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeCodeRepositoryOutput = $api . sagemaker->DescribeCodeRepository(
      CodeRepositoryName => 'MyEntityName',

    );

    # Results:
    my $CodeRepositoryArn  = $DescribeCodeRepositoryOutput->CodeRepositoryArn;
    my $CodeRepositoryName = $DescribeCodeRepositoryOutput->CodeRepositoryName;
    my $CreationTime       = $DescribeCodeRepositoryOutput->CreationTime;
    my $GitConfig          = $DescribeCodeRepositoryOutput->GitConfig;
    my $LastModifiedTime   = $DescribeCodeRepositoryOutput->LastModifiedTime;

    # Returns a L<Paws::SageMaker::DescribeCodeRepositoryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeCodeRepository>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CodeRepositoryName => Str

The name of the Git repository to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCodeRepository in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

