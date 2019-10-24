# Generated from default/object.tt
package Paws::IoTAnalytics::Pipeline;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_ReprocessingSummary IoTAnalytics_PipelineActivity/;
  has Activities => (is => 'ro', isa => ArrayRef[IoTAnalytics_PipelineActivity]);
  has Arn => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Str);
  has LastUpdateTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has ReprocessingSummaries => (is => 'ro', isa => ArrayRef[IoTAnalytics_ReprocessingSummary]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'LastUpdateTime' => {
                                     'type' => 'Str'
                                   },
               'ReprocessingSummaries' => {
                                            'class' => 'Paws::IoTAnalytics::ReprocessingSummary',
                                            'type' => 'ArrayRef[IoTAnalytics_ReprocessingSummary]'
                                          },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Name' => {
                           'type' => 'Str'
                         },
               'Activities' => {
                                 'class' => 'Paws::IoTAnalytics::PipelineActivity',
                                 'type' => 'ArrayRef[IoTAnalytics_PipelineActivity]'
                               }
             },
  'NameInRequest' => {
                       'CreationTime' => 'creationTime',
                       'LastUpdateTime' => 'lastUpdateTime',
                       'ReprocessingSummaries' => 'reprocessingSummaries',
                       'Arn' => 'arn',
                       'Name' => 'name',
                       'Activities' => 'activities'
                     }
}
;
    return $Params_map;
  }


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


=head2 Activities => ArrayRef[IoTAnalytics_PipelineActivity]

  The activities that perform transformations on the messages.


=head2 Arn => Str

  The ARN of the pipeline.


=head2 CreationTime => Str

  When the pipeline was created.


=head2 LastUpdateTime => Str

  The last time the pipeline was updated.


=head2 Name => Str

  The name of the pipeline.


=head2 ReprocessingSummaries => ArrayRef[IoTAnalytics_ReprocessingSummary]

  A summary of information about the pipeline reprocessing.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

