package Paws::MediaLive::PipelineDetail;
  use Moose;
  has ActiveInputAttachmentName => (is => 'ro', isa => 'Str', request_name => 'activeInputAttachmentName', traits => ['NameInRequest']);
  has ActiveInputSwitchActionName => (is => 'ro', isa => 'Str', request_name => 'activeInputSwitchActionName', traits => ['NameInRequest']);
  has PipelineId => (is => 'ro', isa => 'Str', request_name => 'pipelineId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::PipelineDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::PipelineDetail object:

  $service_obj->Method(Att1 => { ActiveInputAttachmentName => $value, ..., PipelineId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::PipelineDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveInputAttachmentName

=head1 DESCRIPTION

Runtime details of a pipeline when a channel is running.

=head1 ATTRIBUTES


=head2 ActiveInputAttachmentName => Str

  The name of the active input attachment currently being ingested by
this pipeline.


=head2 ActiveInputSwitchActionName => Str

  The name of the input switch schedule action that occurred most
recently and that resulted in the switch to the current input
attachment for this pipeline.


=head2 PipelineId => Str

  Pipeline ID



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

