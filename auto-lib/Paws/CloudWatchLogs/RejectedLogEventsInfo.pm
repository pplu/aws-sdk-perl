# Generated from default/object.tt
package Paws::CloudWatchLogs::RejectedLogEventsInfo;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::CloudWatchLogs::Types qw//;
  has ExpiredLogEventEndIndex => (is => 'ro', isa => Int);
  has TooNewLogEventStartIndex => (is => 'ro', isa => Int);
  has TooOldLogEventEndIndex => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TooNewLogEventStartIndex' => {
                                               'type' => 'Int'
                                             },
               'ExpiredLogEventEndIndex' => {
                                              'type' => 'Int'
                                            },
               'TooOldLogEventEndIndex' => {
                                             'type' => 'Int'
                                           }
             },
  'NameInRequest' => {
                       'TooNewLogEventStartIndex' => 'tooNewLogEventStartIndex',
                       'ExpiredLogEventEndIndex' => 'expiredLogEventEndIndex',
                       'TooOldLogEventEndIndex' => 'tooOldLogEventEndIndex'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::RejectedLogEventsInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::RejectedLogEventsInfo object:

  $service_obj->Method(Att1 => { ExpiredLogEventEndIndex => $value, ..., TooOldLogEventEndIndex => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::RejectedLogEventsInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ExpiredLogEventEndIndex

=head1 DESCRIPTION

Represents the rejected events.

=head1 ATTRIBUTES


=head2 ExpiredLogEventEndIndex => Int

  The expired log events.


=head2 TooNewLogEventStartIndex => Int

  The log events that are too new.


=head2 TooOldLogEventEndIndex => Int

  The log events that are too old.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

