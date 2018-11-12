package Paws::MQ::UserSummary;
  use Moose;
  has PendingChange => (is => 'ro', isa => 'Str', request_name => 'pendingChange', traits => ['NameInRequest']);
  has Username => (is => 'ro', isa => 'Str', request_name => 'username', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::UserSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::UserSummary object:

  $service_obj->Method(Att1 => { PendingChange => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::UserSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->PendingChange

=head1 DESCRIPTION

Returns a list of all ActiveMQ users.

=head1 ATTRIBUTES


=head2 PendingChange => Str

  The type of change pending for the ActiveMQ user.


=head2 Username => Str

  Required. The username of the ActiveMQ user. This value can contain
only alphanumeric characters, dashes, periods, underscores, and tildes
(- . _ ~). This value must be 2-100 characters long.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

