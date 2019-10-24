# Generated from default/object.tt
package Paws::RDS::EventSubscription;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef/;
  use Paws::RDS::Types qw//;
  has CustomerAwsId => (is => 'ro', isa => Str);
  has CustSubscriptionId => (is => 'ro', isa => Str);
  has Enabled => (is => 'ro', isa => Bool);
  has EventCategoriesList => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has EventSubscriptionArn => (is => 'ro', isa => Str);
  has SnsTopicArn => (is => 'ro', isa => Str);
  has SourceIdsList => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has SourceType => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has SubscriptionCreationTime => (is => 'ro', isa => Str);

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
               'EventSubscriptionArn' => {
                                           'type' => 'Str'
                                         },
               'SourceType' => {
                                 'type' => 'Str'
                               },
               'CustSubscriptionId' => {
                                         'type' => 'Str'
                                       },
               'EventCategoriesList' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        }
             },
  'NameInRequest' => {
                       'SourceIdsList' => 'SourceId',
                       'EventCategoriesList' => 'EventCategory'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::EventSubscription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::EventSubscription object:

  $service_obj->Method(Att1 => { CustomerAwsId => $value, ..., SubscriptionCreationTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::EventSubscription object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomerAwsId

=head1 DESCRIPTION

Contains the results of a successful invocation of the
C<DescribeEventSubscriptions> action.

=head1 ATTRIBUTES


=head2 CustomerAwsId => Str

  The AWS customer account associated with the RDS event notification
subscription.


=head2 CustSubscriptionId => Str

  The RDS event notification subscription Id.


=head2 Enabled => Bool

  A Boolean value indicating if the subscription is enabled. True
indicates the subscription is enabled.


=head2 EventCategoriesList => ArrayRef[Str|Undef]

  A list of event categories for the RDS event notification subscription.


=head2 EventSubscriptionArn => Str

  The Amazon Resource Name (ARN) for the event subscription.


=head2 SnsTopicArn => Str

  The topic ARN of the RDS event notification subscription.


=head2 SourceIdsList => ArrayRef[Str|Undef]

  A list of source IDs for the RDS event notification subscription.


=head2 SourceType => Str

  The source type for the RDS event notification subscription.


=head2 Status => Str

  The status of the RDS event notification subscription.

Constraints:

Can be one of the following: creating | modifying | deleting | active |
no-permission | topic-not-exist

The status "no-permission" indicates that RDS no longer has permission
to post to the SNS topic. The status "topic-not-exist" indicates that
the topic was deleted after the subscription was created.


=head2 SubscriptionCreationTime => Str

  The time the RDS event notification subscription was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

