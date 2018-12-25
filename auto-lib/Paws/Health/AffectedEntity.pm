package Paws::Health::AffectedEntity;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', request_name => 'awsAccountId', traits => ['NameInRequest']);
  has EntityArn => (is => 'ro', isa => 'Str', request_name => 'entityArn', traits => ['NameInRequest']);
  has EntityUrl => (is => 'ro', isa => 'Str', request_name => 'entityUrl', traits => ['NameInRequest']);
  has EntityValue => (is => 'ro', isa => 'Str', request_name => 'entityValue', traits => ['NameInRequest']);
  has EventArn => (is => 'ro', isa => 'Str', request_name => 'eventArn', traits => ['NameInRequest']);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedTime', traits => ['NameInRequest']);
  has StatusCode => (is => 'ro', isa => 'Str', request_name => 'statusCode', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::Health::TagSet', request_name => 'tags', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::AffectedEntity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Health::AffectedEntity object:

  $service_obj->Method(Att1 => { AwsAccountId => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Health::AffectedEntity object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsAccountId

=head1 DESCRIPTION

Information about an entity that is affected by a Health event.

=head1 ATTRIBUTES


=head2 AwsAccountId => Str

  The 12-digit AWS account number that contains the affected entity.


=head2 EntityArn => Str

  The unique identifier for the entity. Format:
C<arn:aws:health:I<entity-region>:I<aws-account>:entity/I<entity-id> >.
Example:
C<arn:aws:health:us-east-1:111222333444:entity/AVh5GGT7ul1arKr1sE1K>


=head2 EntityUrl => Str

  


=head2 EntityValue => Str

  The ID of the affected entity.


=head2 EventArn => Str

  The unique identifier for the event. Format:
C<arn:aws:health:I<event-region>::event/I<SERVICE>/I<EVENT_TYPE_CODE>/I<EVENT_TYPE_PLUS_ID>
>. Example: C<Example:
arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456>


=head2 LastUpdatedTime => Str

  The most recent time that the entity was updated.


=head2 StatusCode => Str

  The most recent status of the entity affected by the event. The
possible values are C<IMPAIRED>, C<UNIMPAIRED>, and C<UNKNOWN>.


=head2 Tags => L<Paws::Health::TagSet>

  A map of entity tags attached to the affected entity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

