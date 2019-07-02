
package Paws::Pinpoint::DeleteSmsChannel;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSmsChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/channels/sms');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::SMSChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::DeleteSmsChannel - Arguments for method DeleteSmsChannel on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSmsChannel on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method DeleteSmsChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSmsChannel.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $SMSChannelResponse = $pinpoint->DeleteSmsChannel(
      ApplicationId => 'My__string',

    );

    # Results:
    my $ApplicationId    = $SMSChannelResponse->ApplicationId;
    my $CreationDate     = $SMSChannelResponse->CreationDate;
    my $Enabled          = $SMSChannelResponse->Enabled;
    my $HasCredential    = $SMSChannelResponse->HasCredential;
    my $Id               = $SMSChannelResponse->Id;
    my $IsArchived       = $SMSChannelResponse->IsArchived;
    my $LastModifiedBy   = $SMSChannelResponse->LastModifiedBy;
    my $LastModifiedDate = $SMSChannelResponse->LastModifiedDate;
    my $Platform         = $SMSChannelResponse->Platform;
    my $PromotionalMessagesPerSecond =
      $SMSChannelResponse->PromotionalMessagesPerSecond;
    my $SenderId  = $SMSChannelResponse->SenderId;
    my $ShortCode = $SMSChannelResponse->ShortCode;
    my $TransactionalMessagesPerSecond =
      $SMSChannelResponse->TransactionalMessagesPerSecond;
    my $Version = $SMSChannelResponse->Version;

    # Returns a L<Paws::Pinpoint::SMSChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/DeleteSmsChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSmsChannel in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

