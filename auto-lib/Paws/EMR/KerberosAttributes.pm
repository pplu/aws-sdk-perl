package Paws::EMR::KerberosAttributes;
  use Moose;
  has ADDomainJoinPassword => (is => 'ro', isa => 'Str');
  has ADDomainJoinUser => (is => 'ro', isa => 'Str');
  has CrossRealmTrustPrincipalPassword => (is => 'ro', isa => 'Str');
  has KdcAdminPassword => (is => 'ro', isa => 'Str', required => 1);
  has Realm => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::KerberosAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::KerberosAttributes object:

  $service_obj->Method(Att1 => { ADDomainJoinPassword => $value, ..., Realm => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::KerberosAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->ADDomainJoinPassword

=head1 DESCRIPTION

Attributes for Kerberos configuration when Kerberos authentication is
enabled using a security configuration. For more information see Use
Kerberos Authentication
(http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html)
in the I<EMR Management Guide>.

=head1 ATTRIBUTES


=head2 ADDomainJoinPassword => Str

  The Active Directory password for C<ADDomainJoinUser>.


=head2 ADDomainJoinUser => Str

  Required only when establishing a cross-realm trust with an Active
Directory domain. A user with sufficient privileges to join resources
to the domain.


=head2 CrossRealmTrustPrincipalPassword => Str

  Required only when establishing a cross-realm trust with a KDC in a
different realm. The cross-realm principal password, which must be
identical across realms.


=head2 B<REQUIRED> KdcAdminPassword => Str

  The password used within the cluster for the kadmin service on the
cluster-dedicated KDC, which maintains Kerberos principals, password
policies, and keytabs for the cluster.


=head2 B<REQUIRED> Realm => Str

  The name of the Kerberos realm to which all nodes in a cluster belong.
For example, C<EC2.INTERNAL>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

