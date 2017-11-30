package Paws::CognitoIdp::AnalyticsMetadataType;
  use Moose;
  has AnalyticsEndpointId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AnalyticsMetadataType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::AnalyticsMetadataType object:

  $service_obj->Method(Att1 => { AnalyticsEndpointId => $value, ..., AnalyticsEndpointId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::AnalyticsMetadataType object:

  $result = $service_obj->Method(...);
  $result->Att1->AnalyticsEndpointId

=head1 DESCRIPTION

An Amazon Pinpoint analytics endpoint.

An endpoint uniquely identifies a mobile device, email address, or
phone number that can receive messages from Amazon Pinpoint analytics.

=head1 ATTRIBUTES


=head2 AnalyticsEndpointId => Str

  The endpoint ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

