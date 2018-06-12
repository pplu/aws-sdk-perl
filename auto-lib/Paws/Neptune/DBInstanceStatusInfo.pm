package Paws::Neptune::DBInstanceStatusInfo;
  use Moose;
  has Message => (is => 'ro', isa => 'Str');
  has Normal => (is => 'ro', isa => 'Bool');
  has Status => (is => 'ro', isa => 'Str');
  has StatusType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DBInstanceStatusInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Neptune::DBInstanceStatusInfo object:

  $service_obj->Method(Att1 => { Message => $value, ..., StatusType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Neptune::DBInstanceStatusInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Message

=head1 DESCRIPTION

Provides a list of status information for a DB instance.

=head1 ATTRIBUTES


=head2 Message => Str

  Details of the error if there is an error for the instance. If the
instance is not in an error state, this value is blank.


=head2 Normal => Bool

  Boolean value that is true if the instance is operating normally, or
false if the instance is in an error state.


=head2 Status => Str

  Status of the DB instance. For a StatusType of read replica, the values
can be replicating, error, stopped, or terminated.


=head2 StatusType => Str

  This value is currently "read replication."



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

