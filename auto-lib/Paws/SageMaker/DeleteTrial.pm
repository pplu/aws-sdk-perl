
package Paws::SageMaker::DeleteTrial;
  use Moose;
  has TrialName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTrial');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DeleteTrialResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DeleteTrial - Arguments for method DeleteTrial on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTrial on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DeleteTrial.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTrial.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DeleteTrialResponse = $api . sagemaker->DeleteTrial(
      TrialName => 'MyExperimentEntityName',

    );

    # Results:
    my $TrialArn = $DeleteTrialResponse->TrialArn;

    # Returns a L<Paws::SageMaker::DeleteTrialResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DeleteTrial>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrialName => Str

The name of the trial to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTrial in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

