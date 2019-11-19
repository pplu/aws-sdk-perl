# Generated from json/callargs_class.tt

package Paws::DataPipeline::AddTags;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DataPipeline::Types qw/DataPipeline_Tag/;
  has PipelineId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[DataPipeline_Tag], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AddTags');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DataPipeline::AddTagsOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'PipelineId' => 'pipelineId'
                     },
  'IsRequired' => {
                    'PipelineId' => 1,
                    'Tags' => 1
                  },
  'types' => {
               'PipelineId' => {
                                 'type' => 'Str'
                               },
               'Tags' => {
                           'type' => 'ArrayRef[DataPipeline_Tag]',
                           'class' => 'Paws::DataPipeline::Tag'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::AddTags - Arguments for method AddTags on L<Paws::DataPipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddTags on the
L<AWS Data Pipeline|Paws::DataPipeline> service. Use the attributes of this class
as arguments to method AddTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddTags.

=head1 SYNOPSIS

    my $datapipeline = Paws->service('DataPipeline');
    my $AddTagsOutput = $datapipeline->AddTags(
      PipelineId => 'Myid',
      Tags       => [
        {
          Key   => 'MytagKey',      # min: 1, max: 128
          Value => 'MytagValue',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datapipeline/AddTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineId => Str

The ID of the pipeline.



=head2 B<REQUIRED> Tags => ArrayRef[DataPipeline_Tag]

The tags to add, as key/value pairs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddTags in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

