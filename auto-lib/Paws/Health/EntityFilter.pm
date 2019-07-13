package Paws::Health::EntityFilter;
  use Moose;
  has EntityArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'entityArns', traits => ['NameInRequest']);
  has EntityValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'entityValues', traits => ['NameInRequest']);
  has EventArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'eventArns', traits => ['NameInRequest'], required => 1);
  has LastUpdatedTimes => (is => 'ro', isa => 'ArrayRef[Paws::Health::DateTimeRange]', request_name => 'lastUpdatedTimes', traits => ['NameInRequest']);
  has StatusCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'statusCodes', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Health::TagSet]', request_name => 'tags', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::EntityFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Health::EntityFilter object:

  $service_obj->Method(Att1 => { EntityArns => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Health::EntityFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->EntityArns

=head1 DESCRIPTION

The values to use to filter results from the DescribeAffectedEntities
operation.

=head1 ATTRIBUTES


=head2 EntityArns => ArrayRef[Str|Undef]

  A list of entity ARNs (unique identifiers).


=head2 EntityValues => ArrayRef[Str|Undef]

  A list of IDs for affected entities.


=head2 B<REQUIRED> EventArns => ArrayRef[Str|Undef]

  A list of event ARNs (unique identifiers). For example:
C<"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456",
"arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101">


=head2 LastUpdatedTimes => ArrayRef[L<Paws::Health::DateTimeRange>]

  A list of the most recent dates and times that the entity was updated.


=head2 StatusCodes => ArrayRef[Str|Undef]

  A list of entity status codes (C<IMPAIRED>, C<UNIMPAIRED>, or
C<UNKNOWN>).


=head2 Tags => ArrayRef[L<Paws::Health::TagSet>]

  A map of entity tags attached to the affected entity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

