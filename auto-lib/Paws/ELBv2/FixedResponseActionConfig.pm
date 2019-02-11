package Paws::ELBv2::FixedResponseActionConfig;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str');
  has MessageBody => (is => 'ro', isa => 'Str');
  has StatusCode => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::FixedResponseActionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::FixedResponseActionConfig object:

  $service_obj->Method(Att1 => { ContentType => $value, ..., StatusCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::FixedResponseActionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ContentType

=head1 DESCRIPTION

Information about an action that returns a custom HTTP response.

=head1 ATTRIBUTES


=head2 ContentType => Str

  The content type.

Valid Values: text/plain | text/css | text/html |
application/javascript | application/json


=head2 MessageBody => Str

  The message.


=head2 B<REQUIRED> StatusCode => Str

  The HTTP response code (2XX, 4XX, or 5XX).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

