
package Paws::ComprehendMedical::StopICD10CMInferenceJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopICD10CMInferenceJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComprehendMedical::StopICD10CMInferenceJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::StopICD10CMInferenceJob - Arguments for method StopICD10CMInferenceJob on L<Paws::ComprehendMedical>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopICD10CMInferenceJob on the
L<AWS Comprehend Medical|Paws::ComprehendMedical> service. Use the attributes of this class
as arguments to method StopICD10CMInferenceJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopICD10CMInferenceJob.

=head1 SYNOPSIS

    my $comprehendmedical = Paws->service('ComprehendMedical');
    my $StopICD10CMInferenceJobResponse =
      $comprehendmedical->StopICD10CMInferenceJob(
      JobId => 'MyJobId',

      );

    # Results:
    my $JobId = $StopICD10CMInferenceJobResponse->JobId;

 # Returns a L<Paws::ComprehendMedical::StopICD10CMInferenceJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehendmedical/StopICD10CMInferenceJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The identifier of the job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopICD10CMInferenceJob in L<Paws::ComprehendMedical>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

