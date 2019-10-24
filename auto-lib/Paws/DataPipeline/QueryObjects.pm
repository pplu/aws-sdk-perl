# Generated from json/callargs_class.tt

package Paws::DataPipeline::QueryObjects;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::DataPipeline::Types qw/DataPipeline_Query/;
  has Limit => (is => 'ro', isa => Int, predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has PipelineId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Query => (is => 'ro', isa => DataPipeline_Query, predicate => 1);
  has Sphere => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'QueryObjects');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DataPipeline::QueryObjectsOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Query' => {
                            'class' => 'Paws::DataPipeline::Query',
                            'type' => 'DataPipeline_Query'
                          },
               'Sphere' => {
                             'type' => 'Str'
                           },
               'PipelineId' => {
                                 'type' => 'Str'
                               },
               'Limit' => {
                            'type' => 'Int'
                          },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'Query' => 'query',
                       'Sphere' => 'sphere',
                       'PipelineId' => 'pipelineId',
                       'Limit' => 'limit',
                       'Marker' => 'marker'
                     },
  'IsRequired' => {
                    'Sphere' => 1,
                    'PipelineId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::QueryObjects - Arguments for method QueryObjects on L<Paws::DataPipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method QueryObjects on the
L<AWS Data Pipeline|Paws::DataPipeline> service. Use the attributes of this class
as arguments to method QueryObjects.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to QueryObjects.

=head1 SYNOPSIS

    my $datapipeline = Paws->service('DataPipeline');
    my $QueryObjectsOutput = $datapipeline->QueryObjects(
      PipelineId => 'Myid',
      Sphere     => 'Mystring',
      Limit      => 1,             # OPTIONAL
      Marker     => 'Mystring',    # OPTIONAL
      Query      => {
        Selectors => [
          {
            FieldName => 'Mystring',    # max: 1024
            Operator  => {
              Type   => 'EQ',    # values: EQ, REF_EQ, LE, GE, BETWEEN; OPTIONAL
              Values => [
                'Mystring', ...    # max: 1024
              ],                   # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],        # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $HasMoreResults = $QueryObjectsOutput->HasMoreResults;
    my $Ids            = $QueryObjectsOutput->Ids;
    my $Marker         = $QueryObjectsOutput->Marker;

    # Returns a L<Paws::DataPipeline::QueryObjectsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datapipeline/QueryObjects>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of object names that C<QueryObjects> will return in
a single call. The default value is 100.



=head2 Marker => Str

The starting point for the results to be returned. For the first call,
this value should be empty. As long as there are more results, continue
to call C<QueryObjects> with the marker value from the previous call to
retrieve the next set of results.



=head2 B<REQUIRED> PipelineId => Str

The ID of the pipeline.



=head2 Query => DataPipeline_Query

The query that defines the objects to be returned. The C<Query> object
can contain a maximum of ten selectors. The conditions in the query are
limited to top-level String fields in the object. These filters can be
applied to components, instances, and attempts.



=head2 B<REQUIRED> Sphere => Str

Indicates whether the query applies to components or instances. The
possible values are: C<COMPONENT>, C<INSTANCE>, and C<ATTEMPT>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method QueryObjects in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

