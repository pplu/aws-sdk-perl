package Paws::Greengrass::GroupCertificateAuthorityProperties;
  use Moose;
  has GroupCertificateAuthorityArn => (is => 'ro', isa => 'Str');
  has GroupCertificateAuthorityId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GroupCertificateAuthorityProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::GroupCertificateAuthorityProperties object:

  $service_obj->Method(Att1 => { GroupCertificateAuthorityArn => $value, ..., GroupCertificateAuthorityId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::GroupCertificateAuthorityProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->GroupCertificateAuthorityArn

=head1 DESCRIPTION

Information about a certificate authority for a group.

=head1 ATTRIBUTES


=head2 GroupCertificateAuthorityArn => Str

  The ARN of the certificate authority for the group.


=head2 GroupCertificateAuthorityId => Str

  The ID of the certificate authority for the group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

