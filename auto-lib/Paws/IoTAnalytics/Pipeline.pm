package Paws::IoTAnalytics::Pipeline;
  use Moose;
  has Activities => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::PipelineActivity]', request_name => 'activities', traits => ['NameInRequest']);
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has LastUpdateTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdateTime', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has ReprocessingSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::ReprocessingSummary]', request_name => 'reprocessingSummaries', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::Pipeline

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::Pipeline object:

  $service_obj->Method(Att1 => { Activities => $value, ..., ReprocessingSummaries => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::Pipeline object:

  $result = $service_obj->Method(...);
  $result->Att1->Activities

=head1 DESCRIPTION

Contains information about a pipeline.

=head1 ATTRIBUTES


=head2 Activities => ArrayRef[L<Paws::IoTAnalytics::PipelineActivity>]

  The activities that perform transformations on the messages.


=head2 Arn => Str

  The ARN of the pipeline.


=head2 CreationTime => Str

  When the pipeline was created.


=head2 LastUpdateTime => Str

  The last time the pipeline was updated.


=head2 Name => Str

  The name of the pipeline.


=head2 ReprocessingSummaries => ArrayRef[L<Paws::IoTAnalytics::ReprocessingSummary>]

  A summary of information about the pipeline reprocessing.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

