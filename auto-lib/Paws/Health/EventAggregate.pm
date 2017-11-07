package Paws::Health::EventAggregate;
  use Moose;
  has AggregateValue => (is => 'ro', isa => 'Str', request_name => 'aggregateValue', traits => ['NameInRequest']);
  has Count => (is => 'ro', isa => 'Int', request_name => 'count', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::EventAggregate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Health::EventAggregate object:

  $service_obj->Method(Att1 => { AggregateValue => $value, ..., Count => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Health::EventAggregate object:

  $result = $service_obj->Method(...);
  $result->Att1->AggregateValue

=head1 DESCRIPTION

The number of events of each issue type. Returned by the
DescribeEventAggregates operation.

=head1 ATTRIBUTES


=head2 AggregateValue => Str

  The issue type for the associated count.


=head2 Count => Int

  The number of events of the associated issue type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

