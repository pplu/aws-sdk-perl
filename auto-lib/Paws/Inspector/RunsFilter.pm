package Paws::Inspector::RunsFilter;
  use Moose;
  has completionTime => (is => 'ro', isa => 'Paws::Inspector::TimestampRange');
  has creationTime => (is => 'ro', isa => 'Paws::Inspector::TimestampRange');
  has rulesPackages => (is => 'ro', isa => 'ArrayRef[Str]');
  has runNamePatterns => (is => 'ro', isa => 'ArrayRef[Str]');
  has runStates => (is => 'ro', isa => 'ArrayRef[Str]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::RunsFilter

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::RunsFilter object:

  $service_obj->Method(Att1 => { completionTime => $value, ..., runStates => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::RunsFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->completionTime

=head1 ATTRIBUTES

=head2 completionTime => Paws::Inspector::TimestampRange

  

For a record to match a filter, the value specified for this data type
property must inclusively match any value between the specified minimum
and maximum values of the B<completionTime> property of the Run data
type.










=head2 creationTime => Paws::Inspector::TimestampRange

  

For a record to match a filter, the value specified for this data type
property must inclusively match any value between the specified minimum
and maximum values of the B<creationTime> property of the Run data
type.










=head2 rulesPackages => ArrayRef[Str]

  

For a record to match a filter, the value specified for this data type
property must match a list of values of the B<rulesPackages> property
of the Run data type.










=head2 runNamePatterns => ArrayRef[Str]

  

For a record to match a filter, an explicit value or a string
containing a wildcard specified for this data type property must match
the value of the B<runName> property of the Run data type.










=head2 runStates => ArrayRef[Str]

  

For a record to match a filter, the value specified for this data type
property must be the exact match of the value of the B<runState>
property of the Run data type.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

