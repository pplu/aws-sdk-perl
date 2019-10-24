# Generated from default/object.tt
package Paws::DMS::ReplicationTaskStats;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::DMS::Types qw//;
  has ElapsedTimeMillis => (is => 'ro', isa => Int);
  has FullLoadProgressPercent => (is => 'ro', isa => Int);
  has TablesErrored => (is => 'ro', isa => Int);
  has TablesLoaded => (is => 'ro', isa => Int);
  has TablesLoading => (is => 'ro', isa => Int);
  has TablesQueued => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TablesQueued' => {
                                   'type' => 'Int'
                                 },
               'FullLoadProgressPercent' => {
                                              'type' => 'Int'
                                            },
               'TablesLoaded' => {
                                   'type' => 'Int'
                                 },
               'TablesLoading' => {
                                    'type' => 'Int'
                                  },
               'TablesErrored' => {
                                    'type' => 'Int'
                                  },
               'ElapsedTimeMillis' => {
                                        'type' => 'Int'
                                      }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ReplicationTaskStats

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::ReplicationTaskStats object:

  $service_obj->Method(Att1 => { ElapsedTimeMillis => $value, ..., TablesQueued => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::ReplicationTaskStats object:

  $result = $service_obj->Method(...);
  $result->Att1->ElapsedTimeMillis

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ElapsedTimeMillis => Int

  The elapsed time of the task, in milliseconds.


=head2 FullLoadProgressPercent => Int

  The percent complete for the full load migration task.


=head2 TablesErrored => Int

  The number of errors that have occurred during this task.


=head2 TablesLoaded => Int

  The number of tables loaded for this task.


=head2 TablesLoading => Int

  The number of tables currently loading for this task.


=head2 TablesQueued => Int

  The number of tables queued for this task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

