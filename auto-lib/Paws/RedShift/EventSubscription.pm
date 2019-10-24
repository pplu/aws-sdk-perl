# Generated from default/object.tt
package Paws::RedShift::EventSubscription;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef/;
  use Paws::RedShift::Types qw/RedShift_Tag/;
  has CustomerAwsId => (is => 'ro', isa => Str);
  has CustSubscriptionId => (is => 'ro', isa => Str);
  has Enabled => (is => 'ro', isa => Bool);
  has EventCategoriesList => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Severity => (is => 'ro', isa => Str);
  has SnsTopicArn => (is => 'ro', isa => Str);
  has SourceIdsList => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has SourceType => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has SubscriptionCreationTime => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[RedShift_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SubscriptionCreationTime' => {
                                               'type' => 'Str'
                                             },
               'Status' => {
                             'type' => 'Str'
                           },
               'SnsTopicArn' => {
                                  'type' => 'Str'
                                },
               'Enabled' => {
                              'type' => 'Bool'
                            },
               'SourceIdsList' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               'CustomerAwsId' => {
                                    'type' => 'Str'
                                  },
               'SourceType' => {
                                 'type' => 'Str'
                               },
               'Tags' => {
                           'class' => 'Paws::RedShift::Tag',
                           'type' => 'ArrayRef[RedShift_Tag]'
                         },
               'CustSubscriptionId' => {
                                         'type' => 'Str'
                                       },
               'EventCategoriesList' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        },
               'Severity' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'SourceIdsList' => 'SourceId',
                       'Tags' => 'Tag',
                       'EventCategoriesList' => 'EventCategory'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::EventSubscription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::EventSubscription object:

  $service_obj->Method(Att1 => { CustomerAwsId => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::EventSubscription object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomerAwsId

=head1 DESCRIPTION

Describes event subscriptions.

=head1 ATTRIBUTES


=head2 CustomerAwsId => Str

  The AWS customer account associated with the Amazon Redshift event
notification subscription.


=head2 CustSubscriptionId => Str

  The name of the Amazon Redshift event notification subscription.


=head2 Enabled => Bool

  A boolean value indicating whether the subscription is enabled; C<true>
indicates that the subscription is enabled.


=head2 EventCategoriesList => ArrayRef[Str|Undef]

  The list of Amazon Redshift event categories specified in the event
notification subscription.

Values: Configuration, Management, Monitoring, Security


=head2 Severity => Str

  The event severity specified in the Amazon Redshift event notification
subscription.

Values: ERROR, INFO


=head2 SnsTopicArn => Str

  The Amazon Resource Name (ARN) of the Amazon SNS topic used by the
event notification subscription.


=head2 SourceIdsList => ArrayRef[Str|Undef]

  A list of the sources that publish events to the Amazon Redshift event
notification subscription.


=head2 SourceType => Str

  The source type of the events returned the Amazon Redshift event
notification, such as cluster, or cluster-snapshot.


=head2 Status => Str

  The status of the Amazon Redshift event notification subscription.

Constraints:

=over

=item *

Can be one of the following: active | no-permission | topic-not-exist

=item *

The status "no-permission" indicates that Amazon Redshift no longer has
permission to post to the Amazon SNS topic. The status
"topic-not-exist" indicates that the topic was deleted after the
subscription was created.

=back



=head2 SubscriptionCreationTime => Str

  The date and time the Amazon Redshift event notification subscription
was created.


=head2 Tags => ArrayRef[RedShift_Tag]

  The list of tags for the event subscription.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

