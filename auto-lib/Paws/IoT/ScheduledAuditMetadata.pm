# Generated from default/object.tt
package Paws::IoT::ScheduledAuditMetadata;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has DayOfMonth => (is => 'ro', isa => Str);
  has DayOfWeek => (is => 'ro', isa => Str);
  has Frequency => (is => 'ro', isa => Str);
  has ScheduledAuditArn => (is => 'ro', isa => Str);
  has ScheduledAuditName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DayOfWeek' => 'dayOfWeek',
                       'DayOfMonth' => 'dayOfMonth',
                       'Frequency' => 'frequency',
                       'ScheduledAuditArn' => 'scheduledAuditArn',
                       'ScheduledAuditName' => 'scheduledAuditName'
                     },
  'types' => {
               'ScheduledAuditName' => {
                                         'type' => 'Str'
                                       },
               'ScheduledAuditArn' => {
                                        'type' => 'Str'
                                      },
               'Frequency' => {
                                'type' => 'Str'
                              },
               'DayOfMonth' => {
                                 'type' => 'Str'
                               },
               'DayOfWeek' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ScheduledAuditMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ScheduledAuditMetadata object:

  $service_obj->Method(Att1 => { DayOfMonth => $value, ..., ScheduledAuditName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ScheduledAuditMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->DayOfMonth

=head1 DESCRIPTION

Information about the scheduled audit.

=head1 ATTRIBUTES


=head2 DayOfMonth => Str

  The day of the month on which the scheduled audit is run (if the
C<frequency> is "MONTHLY"). If days 29-31 are specified, and the month
does not have that many days, the audit takes place on the "LAST" day
of the month.


=head2 DayOfWeek => Str

  The day of the week on which the scheduled audit is run (if the
C<frequency> is "WEEKLY" or "BIWEEKLY").


=head2 Frequency => Str

  How often the scheduled audit occurs.


=head2 ScheduledAuditArn => Str

  The ARN of the scheduled audit.


=head2 ScheduledAuditName => Str

  The name of the scheduled audit.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

