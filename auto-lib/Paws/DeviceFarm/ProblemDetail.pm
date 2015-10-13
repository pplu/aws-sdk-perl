package Paws::DeviceFarm::ProblemDetail;
  use Moose;
  has arn => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ProblemDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::ProblemDetail object:

  $service_obj->Method(Att1 => { arn => $value, ..., name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::ProblemDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->arn

=head1 DESCRIPTION

Information about a problem detail.

=head1 ATTRIBUTES

=head2 arn => Str

  The problem detail's ARN.

=head2 name => Str

  The problem detail's name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

