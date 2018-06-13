
package Paws::CodePipeline::GetThirdPartyJobDetails;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' , required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetThirdPartyJobDetails');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::GetThirdPartyJobDetailsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::GetThirdPartyJobDetails - Arguments for method GetThirdPartyJobDetails on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetThirdPartyJobDetails on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method GetThirdPartyJobDetails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetThirdPartyJobDetails.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $GetThirdPartyJobDetailsOutput = $codepipeline->GetThirdPartyJobDetails(
      ClientToken => 'MyClientToken',
      JobId       => 'MyThirdPartyJobId',

    );

    # Results:
    my $JobDetails = $GetThirdPartyJobDetailsOutput->JobDetails;

    # Returns a L<Paws::CodePipeline::GetThirdPartyJobDetailsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/GetThirdPartyJobDetails>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

The clientToken portion of the clientId and clientToken pair used to
verify that the calling entity is allowed access to the job and its
details.



=head2 B<REQUIRED> JobId => Str

The unique system-generated ID used for identifying the job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetThirdPartyJobDetails in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

