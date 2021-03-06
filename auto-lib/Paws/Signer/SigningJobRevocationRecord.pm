# Generated by default/object.tt
package Paws::Signer::SigningJobRevocationRecord;
  use Moose;
  has Reason => (is => 'ro', isa => 'Str', request_name => 'reason', traits => ['NameInRequest']);
  has RevokedAt => (is => 'ro', isa => 'Str', request_name => 'revokedAt', traits => ['NameInRequest']);
  has RevokedBy => (is => 'ro', isa => 'Str', request_name => 'revokedBy', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::SigningJobRevocationRecord

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Signer::SigningJobRevocationRecord object:

  $service_obj->Method(Att1 => { Reason => $value, ..., RevokedBy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Signer::SigningJobRevocationRecord object:

  $result = $service_obj->Method(...);
  $result->Att1->Reason

=head1 DESCRIPTION

Revocation information for a signing job.

=head1 ATTRIBUTES


=head2 Reason => Str

A caller-supplied reason for revocation.


=head2 RevokedAt => Str

The time of revocation.


=head2 RevokedBy => Str

The identity of the revoker.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

