# Generated from default/object.tt
package Paws::EKS::Identity;
  use Moo;
  use Types::Standard qw//;
  use Paws::EKS::Types qw/EKS_OIDC/;
  has Oidc => (is => 'ro', isa => EKS_OIDC);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Oidc' => 'oidc'
                     },
  'types' => {
               'Oidc' => {
                           'class' => 'Paws::EKS::OIDC',
                           'type' => 'EKS_OIDC'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::Identity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::Identity object:

  $service_obj->Method(Att1 => { Oidc => $value, ..., Oidc => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::Identity object:

  $result = $service_obj->Method(...);
  $result->Att1->Oidc

=head1 DESCRIPTION

An object representing an identity provider for authentication
credentials.

=head1 ATTRIBUTES


=head2 Oidc => EKS_OIDC

  The OpenID Connect (https://openid.net/connect/) identity provider
information for the cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

