package Paws::ELBv2::Matcher;
  use Moose;
  has HttpCode => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::Matcher

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::Matcher object:

  $service_obj->Method(Att1 => { HttpCode => $value, ..., HttpCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::Matcher object:

  $result = $service_obj->Method(...);
  $result->Att1->HttpCode

=head1 DESCRIPTION

Information to use when checking for a successful response from a
target.

=head1 ATTRIBUTES


=head2 B<REQUIRED> HttpCode => Str

  The HTTP codes.

For Application Load Balancers, you can specify values between 200 and
499, and the default value is 200. You can specify multiple values (for
example, "200,202") or a range of values (for example, "200-299").

For Network Load Balancers, this is 200E<ndash>399.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

