package Paws::DMS::EventSubscription;
  use Moose;
  has CustomerAwsId => (is => 'ro', isa => 'Str');
  has CustSubscriptionId => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has EventCategoriesList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SnsTopicArn => (is => 'ro', isa => 'Str');
  has SourceIdsList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SourceType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SubscriptionCreationTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::EventSubscription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::EventSubscription object:

  $service_obj->Method(Att1 => { CustomerAwsId => $value, ..., SubscriptionCreationTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::EventSubscription object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomerAwsId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CustomerAwsId => Str

  The AWS customer account associated with the AWS DMS event notification
subscription.


=head2 CustSubscriptionId => Str

  The AWS DMS event notification subscription Id.


=head2 Enabled => Bool

  Boolean value that indicates if the event subscription is enabled.


=head2 EventCategoriesList => ArrayRef[Str|Undef]

  A lists of event categories.


=head2 SnsTopicArn => Str

  The topic ARN of the AWS DMS event notification subscription.


=head2 SourceIdsList => ArrayRef[Str|Undef]

  A list of source Ids for the event subscription.


=head2 SourceType => Str

  The type of AWS DMS resource that generates events.

Valid values: replication-instance | replication-server |
security-group | migration-task


=head2 Status => Str

  The status of the AWS DMS event notification subscription.

Constraints:

Can be one of the following: creating | modifying | deleting | active |
no-permission | topic-not-exist

The status "no-permission" indicates that AWS DMS no longer has
permission to post to the SNS topic. The status "topic-not-exist"
indicates that the topic was deleted after the subscription was
created.


=head2 SubscriptionCreationTime => Str

  The time the RDS event notification subscription was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

