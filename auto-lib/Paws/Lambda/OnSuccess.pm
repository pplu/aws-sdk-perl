package Paws::Lambda::OnSuccess;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::OnSuccess

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lambda::OnSuccess object:

  $service_obj->Method(Att1 => { Destination => $value, ..., Destination => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lambda::OnSuccess object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

A destination for events that were processed successfully.

=head1 ATTRIBUTES


=head2 Destination => Str

  The Amazon Resource Name (ARN) of the destination resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

