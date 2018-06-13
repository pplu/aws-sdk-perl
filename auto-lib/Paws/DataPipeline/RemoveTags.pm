
package Paws::DataPipeline::RemoveTags;
  use Moose;
  has PipelineId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineId' , required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'tagKeys' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataPipeline::RemoveTagsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::RemoveTags - Arguments for method RemoveTags on L<Paws::DataPipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveTags on the
L<AWS Data Pipeline|Paws::DataPipeline> service. Use the attributes of this class
as arguments to method RemoveTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveTags.

=head1 SYNOPSIS

    my $datapipeline = Paws->service('DataPipeline');
    my $RemoveTagsOutput = $datapipeline->RemoveTags(
      PipelineId => 'Myid',
      TagKeys    => [
        'Mystring', ...    # max: 1024
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datapipeline/RemoveTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineId => Str

The ID of the pipeline.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The keys of the tags to remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveTags in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

