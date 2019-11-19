# Generated from default/object.tt
package Paws::Pinpoint::APNSChannelRequest;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Pinpoint::Types qw//;
  has BundleId => (is => 'ro', isa => Str);
  has Certificate => (is => 'ro', isa => Str);
  has DefaultAuthenticationMethod => (is => 'ro', isa => Str);
  has Enabled => (is => 'ro', isa => Bool);
  has PrivateKey => (is => 'ro', isa => Str);
  has TeamId => (is => 'ro', isa => Str);
  has TokenKey => (is => 'ro', isa => Str);
  has TokenKeyId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Certificate' => {
                                  'type' => 'Str'
                                },
               'TokenKeyId' => {
                                 'type' => 'Str'
                               },
               'DefaultAuthenticationMethod' => {
                                                  'type' => 'Str'
                                                },
               'TokenKey' => {
                               'type' => 'Str'
                             },
               'PrivateKey' => {
                                 'type' => 'Str'
                               },
               'BundleId' => {
                               'type' => 'Str'
                             },
               'Enabled' => {
                              'type' => 'Bool'
                            },
               'TeamId' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::APNSChannelRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::APNSChannelRequest object:

  $service_obj->Method(Att1 => { BundleId => $value, ..., TokenKeyId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::APNSChannelRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->BundleId

=head1 DESCRIPTION

Specifies the status and settings of the APNs (Apple Push Notification
service) channel for an application.

=head1 ATTRIBUTES


=head2 BundleId => Str

  The bundle identifier that's assigned to your iOS app. This identifier
is used for APNs tokens.


=head2 Certificate => Str

  The APNs client certificate that you received from Apple, if you want
Amazon Pinpoint to communicate with APNs by using an APNs certificate.


=head2 DefaultAuthenticationMethod => Str

  The default authentication method that you want Amazon Pinpoint to use
when authenticating with APNs, key or certificate.


=head2 Enabled => Bool

  Specifies whether to enable the APNs channel for the application.


=head2 PrivateKey => Str

  The private key for the APNs client certificate that you want Amazon
Pinpoint to use to communicate with APNs.


=head2 TeamId => Str

  The identifier that's assigned to your Apple developer account team.
This identifier is used for APNs tokens.


=head2 TokenKey => Str

  The authentication key to use for APNs tokens.


=head2 TokenKeyId => Str

  The key identifier that's assigned to your APNs signing key, if you
want Amazon Pinpoint to communicate with APNs by using APNs tokens.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

