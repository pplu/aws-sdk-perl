
package Paws::CodePipeline::AcknowledgeThirdPartyJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' , required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId' , required => 1);
  has Nonce => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nonce' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AcknowledgeThirdPartyJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::AcknowledgeThirdPartyJobOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::AcknowledgeThirdPartyJob - Arguments for method AcknowledgeThirdPartyJob on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AcknowledgeThirdPartyJob on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method AcknowledgeThirdPartyJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AcknowledgeThirdPartyJob.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $AcknowledgeThirdPartyJobOutput =
      $codepipeline->AcknowledgeThirdPartyJob(
      ClientToken => 'MyClientToken',
      JobId       => 'MyThirdPartyJobId',
      Nonce       => 'MyNonce',

      );

    # Results:
    my $Status = $AcknowledgeThirdPartyJobOutput->Status;

    # Returns a L<Paws::CodePipeline::AcknowledgeThirdPartyJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/AcknowledgeThirdPartyJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

The clientToken portion of the clientId and clientToken pair used to
verify that the calling entity is allowed access to the job and its
details.



=head2 B<REQUIRED> JobId => Str

The unique system-generated ID of the job.



=head2 B<REQUIRED> Nonce => Str

A system-generated random number that AWS CodePipeline uses to ensure
that the job is being worked on by only one job worker. Get this number
from the response to a GetThirdPartyJobDetails request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcknowledgeThirdPartyJob in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

