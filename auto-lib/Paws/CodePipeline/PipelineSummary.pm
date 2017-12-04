package Paws::CodePipeline::PipelineSummary;
  use Moose;
  has Created => (is => 'ro', isa => 'Str', request_name => 'created', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Updated => (is => 'ro', isa => 'Str', request_name => 'updated', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Int', request_name => 'version', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PipelineSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::PipelineSummary object:

  $service_obj->Method(Att1 => { Created => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::PipelineSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Created

=head1 DESCRIPTION

Returns a summary of a pipeline.

=head1 ATTRIBUTES


=head2 Created => Str

  The date and time the pipeline was created, in timestamp format.


=head2 Name => Str

  The name of the pipeline.


=head2 Updated => Str

  The date and time of the last update to the pipeline, in timestamp
format.


=head2 Version => Int

  The version number of the pipeline.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

