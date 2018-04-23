package Paws::IoTAnalytics::PipelineSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has LastUpdateTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdateTime', traits => ['NameInRequest']);
  has PipelineName => (is => 'ro', isa => 'Str', request_name => 'pipelineName', traits => ['NameInRequest']);
  has ReprocessingSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::ReprocessingSummary]', request_name => 'reprocessingSummaries', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::PipelineSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::PipelineSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., ReprocessingSummaries => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::PipelineSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

A summary of information about a pipeline.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  When the pipeline was created.


=head2 LastUpdateTime => Str

  When the pipeline was last updated.


=head2 PipelineName => Str

  The name of the pipeline.


=head2 ReprocessingSummaries => ArrayRef[L<Paws::IoTAnalytics::ReprocessingSummary>]

  A summary of information about the pipeline reprocessing.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

