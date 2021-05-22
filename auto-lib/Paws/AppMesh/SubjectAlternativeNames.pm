# Generated by default/object.tt
package Paws::AppMesh::SubjectAlternativeNames;
  use Moose;
  has Match => (is => 'ro', isa => 'Paws::AppMesh::SubjectAlternativeNameMatchers', request_name => 'match', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::SubjectAlternativeNames

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::SubjectAlternativeNames object:

  $service_obj->Method(Att1 => { Match => $value, ..., Match => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::SubjectAlternativeNames object:

  $result = $service_obj->Method(...);
  $result->Att1->Match

=head1 DESCRIPTION

An object that represents the subject alternative names secured by the
certificate.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Match => L<Paws::AppMesh::SubjectAlternativeNameMatchers>

An object that represents the criteria for determining a SANs match.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

