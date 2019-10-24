# Generated from default/object.tt
package Paws::WorkLink::WebsiteAuthorizationProviderSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkLink::Types qw//;
  has AuthorizationProviderId => (is => 'ro', isa => Str);
  has AuthorizationProviderType => (is => 'ro', isa => Str, required => 1);
  has CreatedTime => (is => 'ro', isa => Str);
  has DomainName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreatedTime' => {
                                  'type' => 'Str'
                                },
               'AuthorizationProviderType' => {
                                                'type' => 'Str'
                                              },
               'DomainName' => {
                                 'type' => 'Str'
                               },
               'AuthorizationProviderId' => {
                                              'type' => 'Str'
                                            }
             },
  'IsRequired' => {
                    'AuthorizationProviderType' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::WebsiteAuthorizationProviderSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkLink::WebsiteAuthorizationProviderSummary object:

  $service_obj->Method(Att1 => { AuthorizationProviderId => $value, ..., DomainName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkLink::WebsiteAuthorizationProviderSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthorizationProviderId

=head1 DESCRIPTION

The summary of the website authorization provider.

=head1 ATTRIBUTES


=head2 AuthorizationProviderId => Str

  A unique identifier for the authorization provider.


=head2 B<REQUIRED> AuthorizationProviderType => Str

  The authorization provider type.


=head2 CreatedTime => Str

  The time of creation.


=head2 DomainName => Str

  The domain name of the authorization provider. This applies only to
SAML-based authorization providers.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkLink>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

