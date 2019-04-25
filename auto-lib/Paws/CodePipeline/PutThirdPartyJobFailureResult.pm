
package Paws::CodePipeline::PutThirdPartyJobFailureResult;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' , required => 1);
  has FailureDetails => (is => 'ro', isa => 'Paws::CodePipeline::FailureDetails', traits => ['NameInRequest'], request_name => 'failureDetails' , required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutThirdPartyJobFailureResult');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PutThirdPartyJobFailureResult - Arguments for method PutThirdPartyJobFailureResult on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutThirdPartyJobFailureResult on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method PutThirdPartyJobFailureResult.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutThirdPartyJobFailureResult.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    $codepipeline->PutThirdPartyJobFailureResult(
      ClientToken    => 'MyClientToken',
      FailureDetails => {
        Message => 'MyMessage',    # min: 1, max: 5000
        Type    => 'JobFailed'
        , # values: JobFailed, ConfigurationError, PermissionError, RevisionOutOfSync, RevisionUnavailable, SystemUnavailable
        ExternalExecutionId => 'MyExecutionId',    # min: 1, max: 1500; OPTIONAL
      },
      JobId => 'MyThirdPartyJobId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/PutThirdPartyJobFailureResult>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

The clientToken portion of the clientId and clientToken pair used to
verify that the calling entity is allowed access to the job and its
details.



=head2 B<REQUIRED> FailureDetails => L<Paws::CodePipeline::FailureDetails>

Represents information about failure details.



=head2 B<REQUIRED> JobId => Str

The ID of the job that failed. This is the same ID returned from
PollForThirdPartyJobs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutThirdPartyJobFailureResult in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

