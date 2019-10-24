
package Paws::Pinpoint::UpdateSmsChannel;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_SMSChannelRequest/;
  has ApplicationId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SMSChannelRequest => (is => 'ro', isa => Pinpoint_SMSChannelRequest, required => 1, predicate => 1);

  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'SMSChannelRequest');
  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateSmsChannel');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/apps/{application-id}/channels/sms');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Pinpoint::UpdateSmsChannelResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               'SMSChannelRequest' => {
                                        'class' => 'Paws::Pinpoint::SMSChannelRequest',
                                        'type' => 'Pinpoint_SMSChannelRequest'
                                      }
             },
  'ParamInURI' => {
                    'ApplicationId' => 'application-id'
                  },
  'IsRequired' => {
                    'ApplicationId' => 1,
                    'SMSChannelRequest' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateSmsChannel - Arguments for method UpdateSmsChannel on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSmsChannel on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method UpdateSmsChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSmsChannel.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $UpdateSmsChannelResponse = $pinpoint->UpdateSmsChannel(
      ApplicationId     => 'My__string',
      SMSChannelRequest => {
        Enabled   => 1,              # OPTIONAL
        SenderId  => 'My__string',
        ShortCode => 'My__string',
      },

    );

    # Results:
    my $SMSChannelResponse = $UpdateSmsChannelResponse->SMSChannelResponse;

    # Returns a L<Paws::Pinpoint::UpdateSmsChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/UpdateSmsChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.



=head2 B<REQUIRED> SMSChannelRequest => Pinpoint_SMSChannelRequest






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSmsChannel in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

