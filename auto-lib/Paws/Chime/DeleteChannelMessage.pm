
package Paws::Chime::DeleteChannelMessage;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelArn', required => 1);
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer');
  has MessageId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'messageId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteChannelMessage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{channelArn}/messages/{messageId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::DeleteChannelMessage - Arguments for method DeleteChannelMessage on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteChannelMessage on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method DeleteChannelMessage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteChannelMessage.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    $chime->DeleteChannelMessage(
      ChannelArn  => 'MyChimeArn',
      MessageId   => 'MyMessageId',
      ChimeBearer => 'MyChimeArn',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/DeleteChannelMessage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

The ARN of the channel.



=head2 ChimeBearer => Str

The C<AppInstanceUserArn> of the user that makes the API call.



=head2 B<REQUIRED> MessageId => Str

The ID of the message being deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteChannelMessage in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

