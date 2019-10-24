# Generated from default/object.tt
package Paws::Personalize::EventTracker;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has AccountId => (is => 'ro', isa => Str);
  has CreationDateTime => (is => 'ro', isa => Str);
  has DatasetGroupArn => (is => 'ro', isa => Str);
  has EventTrackerArn => (is => 'ro', isa => Str);
  has LastUpdatedDateTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has TrackingId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'LastUpdatedDateTime' => {
                                          'type' => 'Str'
                                        },
               'CreationDateTime' => {
                                       'type' => 'Str'
                                     },
               'EventTrackerArn' => {
                                      'type' => 'Str'
                                    },
               'DatasetGroupArn' => {
                                      'type' => 'Str'
                                    },
               'TrackingId' => {
                                 'type' => 'Str'
                               },
               'AccountId' => {
                                'type' => 'Str'
                              },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'LastUpdatedDateTime' => 'lastUpdatedDateTime',
                       'CreationDateTime' => 'creationDateTime',
                       'EventTrackerArn' => 'eventTrackerArn',
                       'DatasetGroupArn' => 'datasetGroupArn',
                       'TrackingId' => 'trackingId',
                       'AccountId' => 'accountId',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::EventTracker

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::EventTracker object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., TrackingId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::EventTracker object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Provides information about an event tracker.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The Amazon AWS account that owns the event tracker.


=head2 CreationDateTime => Str

  The date and time (in Unix format) that the event tracker was created.


=head2 DatasetGroupArn => Str

  The Amazon Resource Name (ARN) of the dataset group that receives the
event data.


=head2 EventTrackerArn => Str

  The ARN of the event tracker.


=head2 LastUpdatedDateTime => Str

  The date and time (in Unix time) that the event tracker was last
updated.


=head2 Name => Str

  The name of the event tracker.


=head2 Status => Str

  The status of the event tracker.

An event tracker can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=item *

DELETE PENDING E<gt> DELETE IN_PROGRESS

=back



=head2 TrackingId => Str

  The ID of the event tracker. Include this ID in requests to the
PutEvents
(https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html)
API.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

