package Paws::CloudTrail::PublicKey;
  use Moose;
  has Fingerprint => (is => 'ro', isa => 'Str');
  has ValidityEndTime => (is => 'ro', isa => 'Str');
  has ValidityStartTime => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::PublicKey

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudTrail::PublicKey object:

  $service_obj->Method(Att1 => { Fingerprint => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudTrail::PublicKey object:

  $result = $service_obj->Method(...);
  $result->Att1->Fingerprint

=head1 DESCRIPTION

Contains information about a returned public key.

=head1 ATTRIBUTES


=head2 Fingerprint => Str

  The fingerprint of the public key.


=head2 ValidityEndTime => Str

  The ending time of validity of the public key.


=head2 ValidityStartTime => Str

  The starting time of validity of the public key.


=head2 Value => Str

  The DER encoded public key value in PKCS#1 format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

