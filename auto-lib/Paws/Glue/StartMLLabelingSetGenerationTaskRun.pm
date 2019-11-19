# Generated from json/callargs_class.tt

package Paws::Glue::StartMLLabelingSetGenerationTaskRun;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has OutputS3Path => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TransformId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StartMLLabelingSetGenerationTaskRun');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::StartMLLabelingSetGenerationTaskRunResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TransformId' => {
                                  'type' => 'Str'
                                },
               'OutputS3Path' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'OutputS3Path' => 1,
                    'TransformId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::StartMLLabelingSetGenerationTaskRun - Arguments for method StartMLLabelingSetGenerationTaskRun on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMLLabelingSetGenerationTaskRun on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method StartMLLabelingSetGenerationTaskRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMLLabelingSetGenerationTaskRun.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $StartMLLabelingSetGenerationTaskRunResponse =
      $glue->StartMLLabelingSetGenerationTaskRun(
      OutputS3Path => 'MyUriString',
      TransformId  => 'MyHashString',

      );

    # Results:
    my $TaskRunId = $StartMLLabelingSetGenerationTaskRunResponse->TaskRunId;

  # Returns a L<Paws::Glue::StartMLLabelingSetGenerationTaskRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/StartMLLabelingSetGenerationTaskRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OutputS3Path => Str

The Amazon Simple Storage Service (Amazon S3) path where you generate
the labeling set.



=head2 B<REQUIRED> TransformId => Str

The unique identifier of the machine learning transform.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMLLabelingSetGenerationTaskRun in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

