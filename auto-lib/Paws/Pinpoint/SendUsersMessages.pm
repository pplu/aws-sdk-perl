
package Paws::Pinpoint::SendUsersMessages;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has SendUsersMessageRequest => (is => 'ro', isa => 'Paws::Pinpoint::SendUsersMessageRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'SendUsersMessageRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendUsersMessages');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/users-messages');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::SendUsersMessagesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SendUsersMessages - Arguments for method SendUsersMessages on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendUsersMessages on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method SendUsersMessages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendUsersMessages.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $SendUsersMessagesResponse = $pinpoint->SendUsersMessages(
      ApplicationId           => 'My__string',
      SendUsersMessageRequest => {
        Users => {
          'My__string' => {
            TitleOverride => 'My__string',
            BodyOverride  => 'My__string',
            RawContent    => 'My__string',
            Substitutions => { 'My__string' => [ 'My__string', ... ], }
            ,    # OPTIONAL
            Context => { 'My__string' => 'My__string', },    # OPTIONAL
          },
        },    # OPTIONAL
        MessageConfiguration => {
          BaiduMessage => {
            ImageUrl      => 'My__string',
            IconReference => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            SilentPush        => 1,              # OPTIONAL
            Body              => 'My__string',
            SmallImageIconUrl => 'My__string',
            Title             => 'My__string',
            RawContent        => 'My__string',
            Substitutions => { 'My__string' => [ 'My__string', ... ], }
            ,                                    # OPTIONAL
            ImageIconUrl => 'My__string',
            Sound        => 'My__string',
            Url          => 'My__string',
            Data         => { 'My__string' => 'My__string', },    # OPTIONAL
          },    # OPTIONAL
          GCMMessage => {
            ImageUrl      => 'My__string',
            IconReference => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            Body   => 'My__string',
            SilentPush            => 1,              # OPTIONAL
            RestrictedPackageName => 'My__string',
            TimeToLive            => 1,              # OPTIONAL
            CollapseKey           => 'My__string',
            SmallImageIconUrl     => 'My__string',
            Priority              => 'My__string',
            Title                 => 'My__string',
            RawContent            => 'My__string',
            Substitutions => { 'My__string' => [ 'My__string', ... ], }
            ,                                        # OPTIONAL
            ImageIconUrl => 'My__string',
            Sound        => 'My__string',
            Url          => 'My__string',
            Data         => { 'My__string' => 'My__string', },    # OPTIONAL
          },    # OPTIONAL
          SMSMessage => {
            MessageType =>
              'TRANSACTIONAL',    # values: TRANSACTIONAL, PROMOTIONAL; OPTIONAL
            Body              => 'My__string',
            OriginationNumber => 'My__string',
            SenderId          => 'My__string',
            Substitutions     => { 'My__string' => [ 'My__string', ... ], }
            ,                     # OPTIONAL
          },    # OPTIONAL
          APNSMessage => {
            CollapseId => 'My__string',
            Badge      => 1,              # OPTIONAL
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            Body   => 'My__string',
            SilentPush                    => 1,              # OPTIONAL
            PreferredAuthenticationMethod => 'My__string',
            TimeToLive                    => 1,              # OPTIONAL
            Priority                      => 'My__string',
            MediaUrl                      => 'My__string',
            ThreadId                      => 'My__string',
            Title                         => 'My__string',
            RawContent                    => 'My__string',
            Substitutions => { 'My__string' => [ 'My__string', ... ], }
            ,                                                # OPTIONAL
            Sound    => 'My__string',
            Url      => 'My__string',
            Category => 'My__string',
            Data     => { 'My__string' => 'My__string', },    # OPTIONAL
          },    # OPTIONAL
          DefaultMessage => {
            Body          => 'My__string',
            Substitutions => { 'My__string' => [ 'My__string', ... ], }
            ,    # OPTIONAL
          },    # OPTIONAL
          DefaultPushNotificationMessage => {
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            Body   => 'My__string',
            SilentPush => 1,              # OPTIONAL
            Title      => 'My__string',
            Substitutions => { 'My__string' => [ 'My__string', ... ], }
            ,                             # OPTIONAL
            Url  => 'My__string',
            Data => { 'My__string' => 'My__string', },    # OPTIONAL
          },    # OPTIONAL
          ADMMessage => {
            ImageUrl      => 'My__string',
            IconReference => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            MD5    => 'My__string',
            Body   => 'My__string',
            SilentPush        => 1,              # OPTIONAL
            SmallImageIconUrl => 'My__string',
            ConsolidationKey  => 'My__string',
            ExpiresAfter      => 'My__string',
            Title             => 'My__string',
            RawContent        => 'My__string',
            Substitutions => { 'My__string' => [ 'My__string', ... ], }
            ,                                    # OPTIONAL
            ImageIconUrl => 'My__string',
            Sound        => 'My__string',
            Url          => 'My__string',
            Data         => { 'My__string' => 'My__string', },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        Context => { 'My__string' => 'My__string', },    # OPTIONAL
      },

    );

    # Results:
    my $SendUsersMessageResponse =
      $SendUsersMessagesResponse->SendUsersMessageResponse;

    # Returns a L<Paws::Pinpoint::SendUsersMessagesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str





=head2 B<REQUIRED> SendUsersMessageRequest => L<Paws::Pinpoint::SendUsersMessageRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendUsersMessages in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

