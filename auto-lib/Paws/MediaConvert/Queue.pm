# Generated from default/object.tt
package Paws::MediaConvert::Queue;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::MediaConvert::Types qw/MediaConvert_ReservationPlan/;
  has Arn => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has LastUpdated => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str, required => 1);
  has PricingPlan => (is => 'ro', isa => Str);
  has ProgressingJobsCount => (is => 'ro', isa => Int);
  has ReservationPlan => (is => 'ro', isa => MediaConvert_ReservationPlan);
  has Status => (is => 'ro', isa => Str);
  has SubmittedJobsCount => (is => 'ro', isa => Int);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'ReservationPlan' => {
                                      'class' => 'Paws::MediaConvert::ReservationPlan',
                                      'type' => 'MediaConvert_ReservationPlan'
                                    },
               'Type' => {
                           'type' => 'Str'
                         },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'Arn' => {
                          'type' => 'Str'
                        },
               'SubmittedJobsCount' => {
                                         'type' => 'Int'
                                       },
               'ProgressingJobsCount' => {
                                           'type' => 'Int'
                                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'LastUpdated' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'PricingPlan' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'ReservationPlan' => 'reservationPlan',
                       'Type' => 'type',
                       'CreatedAt' => 'createdAt',
                       'Arn' => 'arn',
                       'SubmittedJobsCount' => 'submittedJobsCount',
                       'ProgressingJobsCount' => 'progressingJobsCount',
                       'Description' => 'description',
                       'LastUpdated' => 'lastUpdated',
                       'Name' => 'name',
                       'PricingPlan' => 'pricingPlan'
                     },
  'IsRequired' => {
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Queue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Queue object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Queue object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

You can use queues to manage the resources that are available to your
AWS account for running multiple transcoding jobs at the same time. If
you don't specify a queue, the service sends all jobs through the
default queue. For more information, see
https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html.

=head1 ATTRIBUTES


=head2 Arn => Str

  An identifier for this resource that is unique within all of AWS.


=head2 CreatedAt => Str

  The timestamp in epoch seconds for when you created the queue.


=head2 Description => Str

  An optional description that you create for each queue.


=head2 LastUpdated => Str

  The timestamp in epoch seconds for when you most recently updated the
queue.


=head2 B<REQUIRED> Name => Str

  A name that you create for each queue. Each name must be unique within
your account.


=head2 PricingPlan => Str

  Specifies whether the pricing plan for the queue is on-demand or
reserved. For on-demand, you pay per minute, billed in increments of
.01 minute. For reserved, you pay for the transcoding capacity of the
entire queue, regardless of how much or how little you use it. Reserved
pricing requires a 12-month commitment.


=head2 ProgressingJobsCount => Int

  The estimated number of jobs with a PROGRESSING status.


=head2 ReservationPlan => MediaConvert_ReservationPlan

  Details about the pricing plan for your reserved queue. Required for
reserved queues and not applicable to on-demand queues.


=head2 Status => Str

  Queues can be ACTIVE or PAUSED. If you pause a queue, the service won't
begin processing jobs in that queue. Jobs that are running when you
pause the queue continue to run until they finish or result in an
error.


=head2 SubmittedJobsCount => Int

  The estimated number of jobs with a SUBMITTED status.


=head2 Type => Str

  Specifies whether this on-demand queue is system or custom. System
queues are built in. You can't modify or delete system queues. You can
create and modify custom queues.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

