package Paws::IoT::BehaviorCriteria;
  use Moose;
  has ComparisonOperator => (is => 'ro', isa => 'Str', request_name => 'comparisonOperator', traits => ['NameInRequest']);
  has DurationSeconds => (is => 'ro', isa => 'Int', request_name => 'durationSeconds', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Paws::IoT::MetricValue', request_name => 'value', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::BehaviorCriteria

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::BehaviorCriteria object:

  $service_obj->Method(Att1 => { ComparisonOperator => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::BehaviorCriteria object:

  $result = $service_obj->Method(...);
  $result->Att1->ComparisonOperator

=head1 DESCRIPTION

The criteria by which the behavior is determined to be normal.

=head1 ATTRIBUTES


=head2 ComparisonOperator => Str

  The operator that relates the thing measured (C<metric>) to the
criteria (C<value>).


=head2 DurationSeconds => Int

  Use this to specify the period of time over which the behavior is
evaluated, for those criteria which have a time dimension (for example,
C<NUM_MESSAGES_SENT>).


=head2 Value => L<Paws::IoT::MetricValue>

  The value to be compared with the C<metric>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

