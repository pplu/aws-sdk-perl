package Paws::ElasticBeanstalk::ManagedActionHistoryItem;
  use Moose;
  has ActionDescription => (is => 'ro', isa => 'Str');
  has ActionId => (is => 'ro', isa => 'Str');
  has ActionType => (is => 'ro', isa => 'Str');
  has ExecutedTime => (is => 'ro', isa => 'Str');
  has FailureDescription => (is => 'ro', isa => 'Str');
  has FailureType => (is => 'ro', isa => 'Str');
  has FinishedTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ManagedActionHistoryItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::ManagedActionHistoryItem object:

  $service_obj->Method(Att1 => { ActionDescription => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::ManagedActionHistoryItem object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionDescription

=head1 DESCRIPTION

The record of a completed or failed managed action.

=head1 ATTRIBUTES


=head2 ActionDescription => Str

  A description of the managed action.


=head2 ActionId => Str

  A unique identifier for the managed action.


=head2 ActionType => Str

  The type of the managed action.


=head2 ExecutedTime => Str

  The date and time that the action started executing.


=head2 FailureDescription => Str

  If the action failed, a description of the failure.


=head2 FailureType => Str

  If the action failed, the type of failure.


=head2 FinishedTime => Str

  The date and time that the action finished executing.


=head2 Status => Str

  The status of the action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

