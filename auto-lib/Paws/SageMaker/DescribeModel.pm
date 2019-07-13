
package Paws::SageMaker::DescribeModel;
  use Moose;
  has ModelName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeModel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeModelOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeModel - Arguments for method DescribeModel on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeModel on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeModel.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeModelOutput = $api . sagemaker->DescribeModel(
      ModelName => 'MyModelName',

    );

    # Results:
    my $Containers             = $DescribeModelOutput->Containers;
    my $CreationTime           = $DescribeModelOutput->CreationTime;
    my $EnableNetworkIsolation = $DescribeModelOutput->EnableNetworkIsolation;
    my $ExecutionRoleArn       = $DescribeModelOutput->ExecutionRoleArn;
    my $ModelArn               = $DescribeModelOutput->ModelArn;
    my $ModelName              = $DescribeModelOutput->ModelName;
    my $PrimaryContainer       = $DescribeModelOutput->PrimaryContainer;
    my $VpcConfig              = $DescribeModelOutput->VpcConfig;

    # Returns a L<Paws::SageMaker::DescribeModelOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelName => Str

The name of the model.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeModel in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

