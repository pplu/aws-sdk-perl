package Paws::ELBv2::TargetHealthDescription;
  use Moose;
  has HealthCheckPort => (is => 'ro', isa => 'Str');
  has Target => (is => 'ro', isa => 'Paws::ELBv2::TargetDescription');
  has TargetHealth => (is => 'ro', isa => 'Paws::ELBv2::TargetHealth');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::TargetHealthDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::TargetHealthDescription object:

  $service_obj->Method(Att1 => { HealthCheckPort => $value, ..., TargetHealth => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::TargetHealthDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->HealthCheckPort

=head1 DESCRIPTION

Information about the health of a target.

=head1 ATTRIBUTES


=head2 HealthCheckPort => Str

  The port to use to connect with the target.


=head2 Target => L<Paws::ELBv2::TargetDescription>

  The description of the target.


=head2 TargetHealth => L<Paws::ELBv2::TargetHealth>

  The health information for the target.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

