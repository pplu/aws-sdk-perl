# Generated by default/object.tt
package Paws::AmplifyBackend::LimitExceededException;
  use Moose;
  has LimitType => (is => 'ro', isa => 'Str', request_name => 'limitType', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::LimitExceededException

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AmplifyBackend::LimitExceededException object:

  $service_obj->Method(Att1 => { LimitType => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AmplifyBackend::LimitExceededException object:

  $result = $service_obj->Method(...);
  $result->Att1->LimitType

=head1 DESCRIPTION

An error that is returned when a limit of a specific type has been
exceeded.

=head1 ATTRIBUTES


=head2 LimitType => Str

The type of limit that was exceeded.


=head2 Message => Str

An error message to inform that the request has failed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

