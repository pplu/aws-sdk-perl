
package Paws::WorkLink::AssociateWebsiteAuthorizationProvider;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkLink::Types qw//;
  has AuthorizationProviderType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DomainName => (is => 'ro', isa => Str, predicate => 1);
  has FleetArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AssociateWebsiteAuthorizationProvider');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/associateWebsiteAuthorizationProvider');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkLink::AssociateWebsiteAuthorizationProviderResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FleetArn' => {
                               'type' => 'Str'
                             },
               'AuthorizationProviderType' => {
                                                'type' => 'Str'
                                              },
               'DomainName' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'FleetArn' => 1,
                    'AuthorizationProviderType' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::AssociateWebsiteAuthorizationProvider - Arguments for method AssociateWebsiteAuthorizationProvider on L<Paws::WorkLink>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateWebsiteAuthorizationProvider on the
L<Amazon WorkLink|Paws::WorkLink> service. Use the attributes of this class
as arguments to method AssociateWebsiteAuthorizationProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateWebsiteAuthorizationProvider.

=head1 SYNOPSIS

    my $worklink = Paws->service('WorkLink');
    my $AssociateWebsiteAuthorizationProviderResponse =
      $worklink->AssociateWebsiteAuthorizationProvider(
      AuthorizationProviderType => 'SAML',
      FleetArn                  => 'MyFleetArn',
      DomainName                => 'MyDomainName',    # OPTIONAL
      );

    # Results:
    my $AuthorizationProviderId =
      $AssociateWebsiteAuthorizationProviderResponse->AuthorizationProviderId;

# Returns a L<Paws::WorkLink::AssociateWebsiteAuthorizationProviderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/worklink/AssociateWebsiteAuthorizationProvider>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthorizationProviderType => Str

The authorization provider type.

Valid values are: C<"SAML">

=head2 DomainName => Str

The domain name of the authorization provider. This applies only to
SAML-based authorization providers.



=head2 B<REQUIRED> FleetArn => Str

The ARN of the fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateWebsiteAuthorizationProvider in L<Paws::WorkLink>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

