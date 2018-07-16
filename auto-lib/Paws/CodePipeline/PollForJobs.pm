
package Paws::CodePipeline::PollForJobs;
  use Moose;
  has ActionTypeId => (is => 'ro', isa => 'Paws::CodePipeline::ActionTypeId', traits => ['NameInRequest'], request_name => 'actionTypeId' , required => 1);
  has MaxBatchSize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxBatchSize' );
  has QueryParam => (is => 'ro', isa => 'Paws::CodePipeline::QueryParamMap', traits => ['NameInRequest'], request_name => 'queryParam' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PollForJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::PollForJobsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PollForJobs - Arguments for method PollForJobs on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PollForJobs on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method PollForJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PollForJobs.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $PollForJobsOutput = $codepipeline->PollForJobs(
      ActionTypeId => {
        Category =>
          'Source',    # values: Source, Build, Deploy, Test, Invoke, Approval
        Owner    => 'AWS',                 # values: AWS, ThirdParty, Custom
        Provider => 'MyActionProvider',    # min: 1, max: 25
        Version  => 'MyVersion',           # min: 1, max: 9

      },
      MaxBatchSize => 1,                   # OPTIONAL
      QueryParam   => {
        'MyActionConfigurationKey' => 'MyActionConfigurationQueryableValue'
        ,    # key: min: 1, max: 50, value: min: 1, max: 50
      },    # OPTIONAL
    );

    # Results:
    my $Jobs = $PollForJobsOutput->Jobs;

    # Returns a L<Paws::CodePipeline::PollForJobsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/PollForJobs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionTypeId => L<Paws::CodePipeline::ActionTypeId>

Represents information about an action type.



=head2 MaxBatchSize => Int

The maximum number of jobs to return in a poll for jobs call.



=head2 QueryParam => L<Paws::CodePipeline::QueryParamMap>

A map of property names and values. For an action type with no
queryable properties, this value must be null or an empty map. For an
action type with a queryable property, you must supply that property as
a key in the map. Only jobs whose action configuration matches the
mapped value will be returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PollForJobs in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

