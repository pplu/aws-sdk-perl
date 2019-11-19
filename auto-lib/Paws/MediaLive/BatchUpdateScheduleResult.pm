# Generated from default/object.tt
package Paws::MediaLive::BatchUpdateScheduleResult;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaLive::Types qw/MediaLive_BatchScheduleActionCreateResult MediaLive_BatchScheduleActionDeleteResult/;
  has Creates => (is => 'ro', isa => MediaLive_BatchScheduleActionCreateResult);
  has Deletes => (is => 'ro', isa => MediaLive_BatchScheduleActionDeleteResult);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Creates' => 'creates',
                       'Deletes' => 'deletes'
                     },
  'types' => {
               'Deletes' => {
                              'type' => 'MediaLive_BatchScheduleActionDeleteResult',
                              'class' => 'Paws::MediaLive::BatchScheduleActionDeleteResult'
                            },
               'Creates' => {
                              'type' => 'MediaLive_BatchScheduleActionCreateResult',
                              'class' => 'Paws::MediaLive::BatchScheduleActionCreateResult'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::BatchUpdateScheduleResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::BatchUpdateScheduleResult object:

  $service_obj->Method(Att1 => { Creates => $value, ..., Deletes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::BatchUpdateScheduleResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Creates

=head1 DESCRIPTION

Results of a batch schedule update.

=head1 ATTRIBUTES


=head2 Creates => MediaLive_BatchScheduleActionCreateResult

  Schedule actions created in the schedule.


=head2 Deletes => MediaLive_BatchScheduleActionDeleteResult

  Schedule actions deleted from the schedule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

