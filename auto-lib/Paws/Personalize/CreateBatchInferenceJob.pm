# Generated from json/callargs_class.tt

package Paws::Personalize::CreateBatchInferenceJob;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Personalize::Types qw/Personalize_BatchInferenceJobOutput Personalize_BatchInferenceJobInput/;
  has JobInput => (is => 'ro', isa => Personalize_BatchInferenceJobInput, required => 1, predicate => 1);
  has JobName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has JobOutput => (is => 'ro', isa => Personalize_BatchInferenceJobOutput, required => 1, predicate => 1);
  has NumResults => (is => 'ro', isa => Int, predicate => 1);
  has RoleArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SolutionVersionArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateBatchInferenceJob');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Personalize::CreateBatchInferenceJobResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'JobInput' => {
                               'type' => 'Personalize_BatchInferenceJobInput',
                               'class' => 'Paws::Personalize::BatchInferenceJobInput'
                             },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'NumResults' => {
                                 'type' => 'Int'
                               },
               'SolutionVersionArn' => {
                                         'type' => 'Str'
                                       },
               'JobName' => {
                              'type' => 'Str'
                            },
               'JobOutput' => {
                                'class' => 'Paws::Personalize::BatchInferenceJobOutput',
                                'type' => 'Personalize_BatchInferenceJobOutput'
                              }
             },
  'IsRequired' => {
                    'JobName' => 1,
                    'JobInput' => 1,
                    'RoleArn' => 1,
                    'JobOutput' => 1,
                    'SolutionVersionArn' => 1
                  },
  'NameInRequest' => {
                       'RoleArn' => 'roleArn',
                       'JobInput' => 'jobInput',
                       'NumResults' => 'numResults',
                       'SolutionVersionArn' => 'solutionVersionArn',
                       'JobName' => 'jobName',
                       'JobOutput' => 'jobOutput'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateBatchInferenceJob - Arguments for method CreateBatchInferenceJob on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBatchInferenceJob on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method CreateBatchInferenceJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBatchInferenceJob.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $CreateBatchInferenceJobResponse = $personalize->CreateBatchInferenceJob(
      JobInput => {
        S3DataSource => {
          Path      => 'MyS3Location',    # max: 256
          KmsKeyArn => 'MyKmsKeyArn',     # OPTIONAL
        },

      },
      JobName   => 'MyName',
      JobOutput => {
        S3DataDestination => {
          Path      => 'MyS3Location',    # max: 256
          KmsKeyArn => 'MyKmsKeyArn',     # OPTIONAL
        },

      },
      RoleArn            => 'MyRoleArn',
      SolutionVersionArn => 'MyArn',
      NumResults         => 1,             # OPTIONAL
    );

    # Results:
    my $BatchInferenceJobArn =
      $CreateBatchInferenceJobResponse->BatchInferenceJobArn;

    # Returns a L<Paws::Personalize::CreateBatchInferenceJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/CreateBatchInferenceJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobInput => Personalize_BatchInferenceJobInput

The Amazon S3 path that leads to the input file to base your
recommendations on. The input material must be in JSON format.



=head2 B<REQUIRED> JobName => Str

The name of the batch inference job to create.



=head2 B<REQUIRED> JobOutput => Personalize_BatchInferenceJobOutput

The path to the Amazon S3 bucket where the job's output will be stored.



=head2 NumResults => Int

The number of recommendations to retreive.



=head2 B<REQUIRED> RoleArn => Str

The ARN of the Amazon Identity and Access Management role that has
permissions to read and write to your input and out Amazon S3 buckets
respectively.



=head2 B<REQUIRED> SolutionVersionArn => Str

The Amazon Resource Name (ARN) of the solution version that will be
used to generate the batch inference recommendations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBatchInferenceJob in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

