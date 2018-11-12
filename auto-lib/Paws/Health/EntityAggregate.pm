package Paws::Health::EntityAggregate;
  use Moose;
  has Count => (is => 'ro', isa => 'Int', request_name => 'count', traits => ['NameInRequest']);
  has EventArn => (is => 'ro', isa => 'Str', request_name => 'eventArn', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::EntityAggregate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Health::EntityAggregate object:

  $service_obj->Method(Att1 => { Count => $value, ..., EventArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Health::EntityAggregate object:

  $result = $service_obj->Method(...);
  $result->Att1->Count

=head1 DESCRIPTION

The number of entities that are affected by one or more events.
Returned by the DescribeEntityAggregates operation.

=head1 ATTRIBUTES


=head2 Count => Int

  The number entities that match the criteria for the specified events.


=head2 EventArn => Str

  The unique identifier for the event. Format:
C<arn:aws:health:I<event-region>::event/I<SERVICE>/I<EVENT_TYPE_CODE>/I<EVENT_TYPE_PLUS_ID>
>. Example: C<Example:
arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

