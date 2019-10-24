# Generated from default/object.tt
package Paws::IoT::ResourceIdentifier;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_PolicyVersionIdentifier/;
  has Account => (is => 'ro', isa => Str);
  has CaCertificateId => (is => 'ro', isa => Str);
  has ClientId => (is => 'ro', isa => Str);
  has CognitoIdentityPoolId => (is => 'ro', isa => Str);
  has DeviceCertificateId => (is => 'ro', isa => Str);
  has PolicyVersionIdentifier => (is => 'ro', isa => IoT_PolicyVersionIdentifier);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeviceCertificateId' => {
                                          'type' => 'Str'
                                        },
               'CaCertificateId' => {
                                      'type' => 'Str'
                                    },
               'ClientId' => {
                               'type' => 'Str'
                             },
               'PolicyVersionIdentifier' => {
                                              'class' => 'Paws::IoT::PolicyVersionIdentifier',
                                              'type' => 'IoT_PolicyVersionIdentifier'
                                            },
               'CognitoIdentityPoolId' => {
                                            'type' => 'Str'
                                          },
               'Account' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'DeviceCertificateId' => 'deviceCertificateId',
                       'CaCertificateId' => 'caCertificateId',
                       'ClientId' => 'clientId',
                       'PolicyVersionIdentifier' => 'policyVersionIdentifier',
                       'CognitoIdentityPoolId' => 'cognitoIdentityPoolId',
                       'Account' => 'account'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ResourceIdentifier

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ResourceIdentifier object:

  $service_obj->Method(Att1 => { Account => $value, ..., PolicyVersionIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ResourceIdentifier object:

  $result = $service_obj->Method(...);
  $result->Att1->Account

=head1 DESCRIPTION

Information identifying the non-compliant resource.

=head1 ATTRIBUTES


=head2 Account => Str

  The account with which the resource is associated.


=head2 CaCertificateId => Str

  The ID of the CA certificate used to authorize the certificate.


=head2 ClientId => Str

  The client ID.


=head2 CognitoIdentityPoolId => Str

  The ID of the Cognito Identity Pool.


=head2 DeviceCertificateId => Str

  The ID of the certificate attached to the resource.


=head2 PolicyVersionIdentifier => IoT_PolicyVersionIdentifier

  The version of the policy associated with the resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

