package Paws::CodePipeline::PipelineSummary;
  use Moose;
  has created => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str');
  has updated => (is => 'ro', isa => 'Str');
  has version => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PipelineSummary

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::PipelineSummary object:

  $service_obj->Method(Att1 => { created => $value, ..., version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::PipelineSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->created

=head1 ATTRIBUTES

=head2 created => Str

  The date and time the pipeline was created, in timestamp format.

=head2 name => Str

  The name of the pipeline.

=head2 updated => Str

  The date and time of the last update to the pipeline, in timestamp
format.

=head2 version => Int

  The version number of the pipeline.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

