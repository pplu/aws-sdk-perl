package Paws::SSM::Session;
  use Moose;
  has Details => (is => 'ro', isa => 'Str');
  has DocumentName => (is => 'ro', isa => 'Str');
  has EndDate => (is => 'ro', isa => 'Str');
  has OutputUrl => (is => 'ro', isa => 'Paws::SSM::SessionManagerOutputUrl');
  has Owner => (is => 'ro', isa => 'Str');
  has SessionId => (is => 'ro', isa => 'Str');
  has StartDate => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Target => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::Session

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::Session object:

  $service_obj->Method(Att1 => { Details => $value, ..., Target => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::Session object:

  $result = $service_obj->Method(...);
  $result->Att1->Details

=head1 DESCRIPTION

Information about a Session Manager connection to an instance.

=head1 ATTRIBUTES


=head2 Details => Str

  Reserved for future use.


=head2 DocumentName => Str

  The name of the Session Manager SSM document used to define the
parameters and plugin settings for the session. For example,
C<SSM-SessionManagerRunShell>.


=head2 EndDate => Str

  The date and time, in ISO-8601 Extended format, when the session was
terminated.


=head2 OutputUrl => L<Paws::SSM::SessionManagerOutputUrl>

  Reserved for future use.


=head2 Owner => Str

  The ID of the AWS user account that started the session.


=head2 SessionId => Str

  The ID of the session.


=head2 StartDate => Str

  The date and time, in ISO-8601 Extended format, when the session began.


=head2 Status => Str

  The status of the session. For example, "Connected" or "Terminated".


=head2 Target => Str

  The instance that the Session Manager session connected to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

