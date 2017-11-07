package Paws::DataPipeline::PipelineDescription;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Fields => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::Field]', request_name => 'fields', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has PipelineId => (is => 'ro', isa => 'Str', request_name => 'pipelineId', traits => ['NameInRequest'], required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::Tag]', request_name => 'tags', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::PipelineDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataPipeline::PipelineDescription object:

  $service_obj->Method(Att1 => { Description => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataPipeline::PipelineDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Contains pipeline metadata.

=head1 ATTRIBUTES


=head2 Description => Str

  Description of the pipeline.


=head2 B<REQUIRED> Fields => ArrayRef[L<Paws::DataPipeline::Field>]

  A list of read-only fields that contain metadata about the pipeline:
@userId, @accountId, and @pipelineState.


=head2 B<REQUIRED> Name => Str

  The name of the pipeline.


=head2 B<REQUIRED> PipelineId => Str

  The pipeline identifier that was assigned by AWS Data Pipeline. This is
a string of the form C<df-297EG78HU43EEXAMPLE>.


=head2 Tags => ArrayRef[L<Paws::DataPipeline::Tag>]

  A list of tags to associated with a pipeline. Tags let you control
access to pipelines. For more information, see Controlling User Access
to Pipelines
(http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html)
in the I<AWS Data Pipeline Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

