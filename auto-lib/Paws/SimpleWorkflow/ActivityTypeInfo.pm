package Paws::SimpleWorkflow::ActivityTypeInfo;
  use Moose;
  has activityType => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityType', required => 1);
  has creationDate => (is => 'ro', isa => 'Str', required => 1);
  has deprecationDate => (is => 'ro', isa => 'Str');
  has description => (is => 'ro', isa => 'Str');
  has status => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ActivityTypeInfo

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ActivityTypeInfo object:

  $service_obj->Method(Att1 => { activityType => $value, ..., status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ActivityTypeInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->activityType

=head1 ATTRIBUTES

=head2 B<REQUIRED> activityType => L<Paws::SimpleWorkflow::ActivityType>

  The ActivityType type structure representing the activity type.

=head2 B<REQUIRED> creationDate => Str

  The date and time this activity type was created through
RegisterActivityType.

=head2 deprecationDate => Str

  If DEPRECATED, the date and time DeprecateActivityType was called.

=head2 description => Str

  The description of the activity type provided in RegisterActivityType.

=head2 B<REQUIRED> status => Str

  The current status of the activity type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

