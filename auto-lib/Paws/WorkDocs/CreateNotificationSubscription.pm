
package Paws::WorkDocs::CreateNotificationSubscription;
  use Moose;
  has Endpoint => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'OrganizationId', required => 1);
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has SubscriptionType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNotificationSubscription');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/organizations/{OrganizationId}/subscriptions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::CreateNotificationSubscriptionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::CreateNotificationSubscription - Arguments for method CreateNotificationSubscription on Paws::WorkDocs

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNotificationSubscription on the 
Amazon WorkDocs service. Use the attributes of this class
as arguments to method CreateNotificationSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNotificationSubscription.

As an example:

  $service_obj->CreateNotificationSubscription(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Endpoint => Str

The endpoint to receive the notifications. If the protocol is HTTPS,
the endpoint is a URL that begins with "https://".



=head2 B<REQUIRED> OrganizationId => Str

The ID of the organization.



=head2 B<REQUIRED> Protocol => Str

The protocol to use. The supported value is https, which delivers
JSON-encoded messasges using HTTPS POST.

Valid values are: C<"HTTPS">

=head2 B<REQUIRED> SubscriptionType => Str

The notification type.

Valid values are: C<"ALL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNotificationSubscription in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

