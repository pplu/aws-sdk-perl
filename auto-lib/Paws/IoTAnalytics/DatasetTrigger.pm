# Generated from default/object.tt
package Paws::IoTAnalytics::DatasetTrigger;
  use Moo;
  use Types::Standard qw//;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_TriggeringDataset IoTAnalytics_Schedule/;
  has Dataset => (is => 'ro', isa => IoTAnalytics_TriggeringDataset);
  has Schedule => (is => 'ro', isa => IoTAnalytics_Schedule);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Dataset' => 'dataset',
                       'Schedule' => 'schedule'
                     },
  'types' => {
               'Dataset' => {
                              'class' => 'Paws::IoTAnalytics::TriggeringDataset',
                              'type' => 'IoTAnalytics_TriggeringDataset'
                            },
               'Schedule' => {
                               'class' => 'Paws::IoTAnalytics::Schedule',
                               'type' => 'IoTAnalytics_Schedule'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DatasetTrigger

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::DatasetTrigger object:

  $service_obj->Method(Att1 => { Dataset => $value, ..., Schedule => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::DatasetTrigger object:

  $result = $service_obj->Method(...);
  $result->Att1->Dataset

=head1 DESCRIPTION

The "DatasetTrigger" that specifies when the data set is automatically
updated.

=head1 ATTRIBUTES


=head2 Dataset => IoTAnalytics_TriggeringDataset

  The data set whose content creation triggers the creation of this data
set's contents.


=head2 Schedule => IoTAnalytics_Schedule

  The "Schedule" when the trigger is initiated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

