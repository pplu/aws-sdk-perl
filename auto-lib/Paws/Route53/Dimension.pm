package Paws::Route53::Dimension;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::Dimension

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::Dimension object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::Dimension object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

For the metric that the CloudWatch alarm is associated with, a complex
type that contains information about one dimension.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  For the metric that the CloudWatch alarm is associated with, the name
of one dimension.


=head2 B<REQUIRED> Value => Str

  For the metric that the CloudWatch alarm is associated with, the value
of one dimension.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

