package Paws::DeviceFarm::TestGridSessionAction;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', request_name => 'action', traits => ['NameInRequest']);
  has Duration => (is => 'ro', isa => 'Int', request_name => 'duration', traits => ['NameInRequest']);
  has RequestMethod => (is => 'ro', isa => 'Str', request_name => 'requestMethod', traits => ['NameInRequest']);
  has Started => (is => 'ro', isa => 'Str', request_name => 'started', traits => ['NameInRequest']);
  has StatusCode => (is => 'ro', isa => 'Str', request_name => 'statusCode', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::TestGridSessionAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::TestGridSessionAction object:

  $service_obj->Method(Att1 => { Action => $value, ..., StatusCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::TestGridSessionAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

An action taken by a TestGridSession browser instance.

=head1 ATTRIBUTES


=head2 Action => Str

  The action taken by the session.


=head2 Duration => Int

  The time, in milliseconds, that the action took to complete in the
browser.


=head2 RequestMethod => Str

  HTTP method that the browser used to make the request.


=head2 Started => Str

  The time that the session invoked the action.


=head2 StatusCode => Str

  HTTP status code returned to the browser when the action was taken.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

