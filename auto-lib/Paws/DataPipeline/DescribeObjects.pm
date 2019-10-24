# Generated from json/callargs_class.tt

package Paws::DataPipeline::DescribeObjects;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef/;
  use Paws::DataPipeline::Types qw//;
  has EvaluateExpressions => (is => 'ro', isa => Bool, predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has ObjectIds => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has PipelineId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeObjects');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DataPipeline::DescribeObjectsOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ObjectIds' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               'PipelineId' => {
                                 'type' => 'Str'
                               },
               'Marker' => {
                             'type' => 'Str'
                           },
               'EvaluateExpressions' => {
                                          'type' => 'Bool'
                                        }
             },
  'NameInRequest' => {
                       'ObjectIds' => 'objectIds',
                       'PipelineId' => 'pipelineId',
                       'Marker' => 'marker',
                       'EvaluateExpressions' => 'evaluateExpressions'
                     },
  'IsRequired' => {
                    'ObjectIds' => 1,
                    'PipelineId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::DescribeObjects - Arguments for method DescribeObjects on L<Paws::DataPipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeObjects on the
L<AWS Data Pipeline|Paws::DataPipeline> service. Use the attributes of this class
as arguments to method DescribeObjects.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeObjects.

=head1 SYNOPSIS

    my $datapipeline = Paws->service('DataPipeline');
    my $DescribeObjectsOutput = $datapipeline->DescribeObjects(
      ObjectIds => [
        'Myid', ...    # min: 1, max: 1024
      ],
      PipelineId          => 'Myid',
      EvaluateExpressions => 1,             # OPTIONAL
      Marker              => 'Mystring',    # OPTIONAL
    );

    # Results:
    my $HasMoreResults  = $DescribeObjectsOutput->HasMoreResults;
    my $Marker          = $DescribeObjectsOutput->Marker;
    my $PipelineObjects = $DescribeObjectsOutput->PipelineObjects;

    # Returns a L<Paws::DataPipeline::DescribeObjectsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datapipeline/DescribeObjects>

=head1 ATTRIBUTES


=head2 EvaluateExpressions => Bool

Indicates whether any expressions in the object should be evaluated
when the object descriptions are returned.



=head2 Marker => Str

The starting point for the results to be returned. For the first call,
this value should be empty. As long as there are more results, continue
to call C<DescribeObjects> with the marker value from the previous call
to retrieve the next set of results.



=head2 B<REQUIRED> ObjectIds => ArrayRef[Str|Undef]

The IDs of the pipeline objects that contain the definitions to be
described. You can pass as many as 25 identifiers in a single call to
C<DescribeObjects>.



=head2 B<REQUIRED> PipelineId => Str

The ID of the pipeline that contains the object definitions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeObjects in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

