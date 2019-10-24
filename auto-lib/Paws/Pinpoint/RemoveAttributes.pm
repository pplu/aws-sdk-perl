
package Paws::Pinpoint::RemoveAttributes;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_UpdateAttributesRequest/;
  has ApplicationId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has AttributeType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has UpdateAttributesRequest => (is => 'ro', isa => Pinpoint_UpdateAttributesRequest, required => 1, predicate => 1);

  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'UpdateAttributesRequest');
  class_has _api_call => (isa => Str, is => 'ro', default => 'RemoveAttributes');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/apps/{application-id}/attributes/{attribute-type}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Pinpoint::RemoveAttributesResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               'AttributeType' => {
                                    'type' => 'Str'
                                  },
               'UpdateAttributesRequest' => {
                                              'class' => 'Paws::Pinpoint::UpdateAttributesRequest',
                                              'type' => 'Pinpoint_UpdateAttributesRequest'
                                            }
             },
  'ParamInURI' => {
                    'ApplicationId' => 'application-id',
                    'AttributeType' => 'attribute-type'
                  },
  'IsRequired' => {
                    'ApplicationId' => 1,
                    'AttributeType' => 1,
                    'UpdateAttributesRequest' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::RemoveAttributes - Arguments for method RemoveAttributes on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveAttributes on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method RemoveAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveAttributes.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $RemoveAttributesResponse = $pinpoint->RemoveAttributes(
      ApplicationId           => 'My__string',
      AttributeType           => 'My__string',
      UpdateAttributesRequest => {
        Blacklist => [ 'My__string', ... ],    # OPTIONAL
      },

    );

    # Results:
    my $AttributesResource = $RemoveAttributesResponse->AttributesResource;

    # Returns a L<Paws::Pinpoint::RemoveAttributesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/RemoveAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.



=head2 B<REQUIRED> AttributeType => Str

The type of attribute or attributes to remove. Valid values are:

=over

=item *

endpoint-custom-attributes - Custom attributes that describe endpoints,
such as the date when an associated user opted in or out of receiving
communications from you through a specific type of channel.

=item *

endpoint-custom-metrics - Custom metrics that your app reports to
Amazon Pinpoint for endpoints, such as the number of app sessions or
the number of items left in a cart.

=item *

endpoint-user-attributes - Custom attributes that describe users, such
as first name, last name, and age.

=back




=head2 B<REQUIRED> UpdateAttributesRequest => Pinpoint_UpdateAttributesRequest






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveAttributes in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

