package Paws::ACMPCA::Validity;
  use Moose;
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::Validity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ACMPCA::Validity object:

  $service_obj->Method(Att1 => { Type => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ACMPCA::Validity object:

  $result = $service_obj->Method(...);
  $result->Att1->Type

=head1 DESCRIPTION

Length of time for which the certificate issued by your private
certificate authority (CA), or by the private CA itself, is valid in
days, months, or years. You can issue a certificate by calling the
IssueCertificate operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Type => Str

  Specifies whether the C<Value> parameter represents days, months, or
years.


=head2 B<REQUIRED> Value => Int

  Time period.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

