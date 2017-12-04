package Paws::CodePipeline::PipelineMetadata;
  use Moose;
  has Created => (is => 'ro', isa => 'Str', request_name => 'created', traits => ['NameInRequest']);
  has PipelineArn => (is => 'ro', isa => 'Str', request_name => 'pipelineArn', traits => ['NameInRequest']);
  has Updated => (is => 'ro', isa => 'Str', request_name => 'updated', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PipelineMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::PipelineMetadata object:

  $service_obj->Method(Att1 => { Created => $value, ..., Updated => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::PipelineMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->Created

=head1 DESCRIPTION

Information about a pipeline.

=head1 ATTRIBUTES


=head2 Created => Str

  The date and time the pipeline was created, in timestamp format.


=head2 PipelineArn => Str

  The Amazon Resource Name (ARN) of the pipeline.


=head2 Updated => Str

  The date and time the pipeline was last updated, in timestamp format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

