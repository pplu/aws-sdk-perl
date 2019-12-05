
package Paws::SageMaker::StopAutoMLJob;
  use Moose;
  has AutoMLJobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopAutoMLJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::StopAutoMLJob - Arguments for method StopAutoMLJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopAutoMLJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method StopAutoMLJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopAutoMLJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    $api . sagemaker->StopAutoMLJob(
      AutoMLJobName => 'MyAutoMLJobName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/StopAutoMLJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoMLJobName => Str

The name of the object you are requesting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopAutoMLJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

