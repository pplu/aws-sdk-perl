package Paws::Lambda::DestinationConfig;
  use Moose;
  has OnFailure => (is => 'ro', isa => 'Paws::Lambda::OnFailure');
  has OnSuccess => (is => 'ro', isa => 'Paws::Lambda::OnSuccess');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::DestinationConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lambda::DestinationConfig object:

  $service_obj->Method(Att1 => { OnFailure => $value, ..., OnSuccess => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lambda::DestinationConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->OnFailure

=head1 DESCRIPTION

A configuration object that specifies the destination of an event after
Lambda processes it.

=head1 ATTRIBUTES


=head2 OnFailure => L<Paws::Lambda::OnFailure>

  The destination configuration for failed invocations.


=head2 OnSuccess => L<Paws::Lambda::OnSuccess>

  The destination configuration for successful invocations.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

