
package Paws::SageMaker::StopEdgePackagingJob;
  use Moose;
  has EdgePackagingJobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopEdgePackagingJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::StopEdgePackagingJob - Arguments for method StopEdgePackagingJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopEdgePackagingJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method StopEdgePackagingJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopEdgePackagingJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    $api . sagemaker->StopEdgePackagingJob(
      EdgePackagingJobName => 'MyEntityName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/StopEdgePackagingJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EdgePackagingJobName => Str

The name of the edge packaging job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopEdgePackagingJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

