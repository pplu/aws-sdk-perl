package Paws::AppStream::Session;
  use Moose;
  has FleetName => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has State => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::Session

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::Session object:

  $service_obj->Method(Att1 => { FleetName => $value, ..., UserId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::Session object:

  $result = $service_obj->Method(...);
  $result->Att1->FleetName

=head1 DESCRIPTION

Contains the parameters for a streaming session.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetName => Str

  The name of the fleet for which the streaming session was created.


=head2 B<REQUIRED> Id => Str

  The unique ID for a streaming session.


=head2 B<REQUIRED> StackName => Str

  The name of the stack for which the streaming session was created.


=head2 B<REQUIRED> State => Str

  The current state of the streaming session.


=head2 B<REQUIRED> UserId => Str

  The identifier of the user for whom the session was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

