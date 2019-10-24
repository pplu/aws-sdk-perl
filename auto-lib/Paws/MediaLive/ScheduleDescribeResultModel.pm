# Generated from default/object.tt
package Paws::MediaLive::ScheduleDescribeResultModel;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaLive::Types qw/MediaLive_ScheduleAction/;
  has NextToken => (is => 'ro', isa => Str);
  has ScheduleActions => (is => 'ro', isa => ArrayRef[MediaLive_ScheduleAction], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ScheduleActions' => {
                                      'class' => 'Paws::MediaLive::ScheduleAction',
                                      'type' => 'ArrayRef[MediaLive_ScheduleAction]'
                                    }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ScheduleActions' => 'scheduleActions'
                     },
  'IsRequired' => {
                    'ScheduleActions' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ScheduleDescribeResultModel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::ScheduleDescribeResultModel object:

  $service_obj->Method(Att1 => { NextToken => $value, ..., ScheduleActions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::ScheduleDescribeResultModel object:

  $result = $service_obj->Method(...);
  $result->Att1->NextToken

=head1 DESCRIPTION

Results of a schedule describe.

=head1 ATTRIBUTES


=head2 NextToken => Str

  The next token; for use in pagination.


=head2 B<REQUIRED> ScheduleActions => ArrayRef[MediaLive_ScheduleAction]

  The list of actions in the schedule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

