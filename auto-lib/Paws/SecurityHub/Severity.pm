package Paws::SecurityHub::Severity;
  use Moose;
  has Normalized => (is => 'ro', isa => 'Int', required => 1);
  has Product => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::Severity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::Severity object:

  $service_obj->Method(Att1 => { Normalized => $value, ..., Product => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::Severity object:

  $result = $service_obj->Method(...);
  $result->Att1->Normalized

=head1 DESCRIPTION

A finding's severity.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Normalized => Int

  The normalized severity of a finding.


=head2 Product => Num

  The native severity as defined by the security findings provider's
solution that generated the finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

