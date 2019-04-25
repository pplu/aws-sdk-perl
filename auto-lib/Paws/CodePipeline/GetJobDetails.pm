
package Paws::CodePipeline::GetJobDetails;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetJobDetails');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::GetJobDetailsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::GetJobDetails - Arguments for method GetJobDetails on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetJobDetails on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method GetJobDetails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetJobDetails.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $GetJobDetailsOutput = $codepipeline->GetJobDetails(
      JobId => 'MyJobId',

    );

    # Results:
    my $JobDetails = $GetJobDetailsOutput->JobDetails;

    # Returns a L<Paws::CodePipeline::GetJobDetailsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/GetJobDetails>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The unique system-generated ID for the job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetJobDetails in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

