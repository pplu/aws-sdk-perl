package Paws::SecurityHub::Compliance;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::Compliance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::Compliance object:

  $service_obj->Method(Att1 => { Status => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::Compliance object:

  $result = $service_obj->Method(...);
  $result->Att1->Status

=head1 DESCRIPTION

Exclusive to findings that are generated as the result of a check run
against a specific rule in a supported standard (for example, AWS CIS
Foundations). Contains compliance-related finding details.

=head1 ATTRIBUTES


=head2 Status => Str

  Indicates the result of a compliance check.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

