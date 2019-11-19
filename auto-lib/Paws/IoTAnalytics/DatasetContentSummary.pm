# Generated from default/object.tt
package Paws::IoTAnalytics::DatasetContentSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_DatasetContentStatus/;
  has CompletionTime => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Str);
  has ScheduleTime => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => IoTAnalytics_DatasetContentStatus);
  has Version => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CompletionTime' => {
                                     'type' => 'Str'
                                   },
               'Version' => {
                              'type' => 'Str'
                            },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'ScheduleTime' => {
                                   'type' => 'Str'
                                 },
               'Status' => {
                             'class' => 'Paws::IoTAnalytics::DatasetContentStatus',
                             'type' => 'IoTAnalytics_DatasetContentStatus'
                           }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'ScheduleTime' => 'scheduleTime',
                       'CreationTime' => 'creationTime',
                       'Version' => 'version',
                       'CompletionTime' => 'completionTime'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DatasetContentSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::DatasetContentSummary object:

  $service_obj->Method(Att1 => { CompletionTime => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::DatasetContentSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CompletionTime

=head1 DESCRIPTION

Summary information about data set contents.

=head1 ATTRIBUTES


=head2 CompletionTime => Str

  The time the dataset content status was updated to SUCCEEDED or FAILED.


=head2 CreationTime => Str

  The actual time the creation of the data set contents was started.


=head2 ScheduleTime => Str

  The time the creation of the data set contents was scheduled to start.


=head2 Status => IoTAnalytics_DatasetContentStatus

  The status of the data set contents.


=head2 Version => Str

  The version of the data set contents.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

