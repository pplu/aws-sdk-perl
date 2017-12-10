package Paws::OpsWorksCM::ServerEvent;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has LogUrl => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has ServerName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::ServerEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorksCM::ServerEvent object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., ServerName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorksCM::ServerEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

An event that is related to the server, such as the start of
maintenance or backup.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

  The time when the event occurred.


=head2 LogUrl => Str

  The Amazon S3 URL of the event's log file.


=head2 Message => Str

  A human-readable informational or status message.


=head2 ServerName => Str

  The name of the server on or for which the event occurred.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

