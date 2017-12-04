package Paws::ElasticBeanstalk::ManagedAction;
  use Moose;
  has ActionDescription => (is => 'ro', isa => 'Str');
  has ActionId => (is => 'ro', isa => 'Str');
  has ActionType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has WindowStartTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ManagedAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::ManagedAction object:

  $service_obj->Method(Att1 => { ActionDescription => $value, ..., WindowStartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::ManagedAction object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionDescription

=head1 DESCRIPTION

The record of an upcoming or in-progress managed action.

=head1 ATTRIBUTES


=head2 ActionDescription => Str

  A description of the managed action.


=head2 ActionId => Str

  A unique identifier for the managed action.


=head2 ActionType => Str

  The type of managed action.


=head2 Status => Str

  The status of the managed action. If the action is C<Scheduled>, you
can apply it immediately with ApplyEnvironmentManagedAction.


=head2 WindowStartTime => Str

  The start time of the maintenance window in which the managed action
will execute.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

