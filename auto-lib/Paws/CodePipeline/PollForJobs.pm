# Generated from json/callargs_class.tt

package Paws::CodePipeline::PollForJobs;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::CodePipeline::Types qw/CodePipeline_ActionTypeId CodePipeline_QueryParamMap/;
  has ActionTypeId => (is => 'ro', isa => CodePipeline_ActionTypeId, required => 1, predicate => 1);
  has MaxBatchSize => (is => 'ro', isa => Int, predicate => 1);
  has QueryParam => (is => 'ro', isa => CodePipeline_QueryParamMap, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PollForJobs');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodePipeline::PollForJobsOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'QueryParam' => {
                                 'class' => 'Paws::CodePipeline::QueryParamMap',
                                 'type' => 'CodePipeline_QueryParamMap'
                               },
               'ActionTypeId' => {
                                   'type' => 'CodePipeline_ActionTypeId',
                                   'class' => 'Paws::CodePipeline::ActionTypeId'
                                 },
               'MaxBatchSize' => {
                                   'type' => 'Int'
                                 }
             },
  'IsRequired' => {
                    'ActionTypeId' => 1
                  },
  'NameInRequest' => {
                       'ActionTypeId' => 'actionTypeId',
                       'MaxBatchSize' => 'maxBatchSize',
                       'QueryParam' => 'queryParam'
                     }
}
;
    return $Params_map;
  }

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


=head2 B<REQUIRED> ActionTypeId => CodePipeline_ActionTypeId

Represents information about an action type.



=head2 MaxBatchSize => Int

The maximum number of jobs to return in a poll for jobs call.



=head2 QueryParam => CodePipeline_QueryParamMap

A map of property names and values. For an action type with no
queryable properties, this value must be null or an empty map. For an
action type with a queryable property, you must supply that property as
a key in the map. Only jobs whose action configuration matches the
mapped value are returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PollForJobs in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

