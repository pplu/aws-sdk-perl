
package Paws::Pinpoint::UpdateGcmChannel;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_GCMChannelRequest/;
  has ApplicationId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has GCMChannelRequest => (is => 'ro', isa => Pinpoint_GCMChannelRequest, required => 1, predicate => 1);

  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'GCMChannelRequest');
  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateGcmChannel');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/apps/{application-id}/channels/gcm');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Pinpoint::UpdateGcmChannelResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'ApplicationId' => 'application-id'
                  },
  'types' => {
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               'GCMChannelRequest' => {
                                        'class' => 'Paws::Pinpoint::GCMChannelRequest',
                                        'type' => 'Pinpoint_GCMChannelRequest'
                                      }
             },
  'IsRequired' => {
                    'GCMChannelRequest' => 1,
                    'ApplicationId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateGcmChannel - Arguments for method UpdateGcmChannel on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGcmChannel on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method UpdateGcmChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGcmChannel.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $UpdateGcmChannelResponse = $pinpoint->UpdateGcmChannel(
      ApplicationId     => 'My__string',
      GCMChannelRequest => {
        ApiKey  => 'My__string',
        Enabled => 1,              # OPTIONAL
      },

    );

    # Results:
    my $GCMChannelResponse = $UpdateGcmChannelResponse->GCMChannelResponse;

    # Returns a L<Paws::Pinpoint::UpdateGcmChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/UpdateGcmChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.



=head2 B<REQUIRED> GCMChannelRequest => Pinpoint_GCMChannelRequest






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGcmChannel in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

