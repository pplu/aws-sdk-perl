
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
        Context => { 'My__string' => 'My__string', },    # OPTIONAL
        Users => {
          'My__string' => {
            Context       => { 'My__string' => 'My__string', },    # OPTIONAL
            RawContent    => 'My__string',
            TitleOverride => 'My__string',
            Substitutions => { 'My__string' => [ 'My__string', ... ], }
            ,                                                      # OPTIONAL
            BodyOverride => 'My__string',
          },
        },    # OPTIONAL
        MessageConfiguration => {
          DefaultMessage => {
            Body          => 'My__string',
            Substitutions => { 'My__string' => [ 'My__string', ... ], }
            ,    # OPTIONAL
          },    # OPTIONAL
          ADMMessage => {
            Data              => { 'My__string' => 'My__string', },   # OPTIONAL
            Title             => 'My__string',
            ConsolidationKey  => 'My__string',
            SilentPush        => 1,                                   # OPTIONAL
            SmallImageIconUrl => 'My__string',
            Sound             => 'My__string',
            ExpiresAfter      => 'My__string',
            RawContent        => 'My__string',
            Body              => 'My__string',
            ImageIconUrl      => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            IconReference => 'My__string',
            Url           => 'My__string',
            ImageUrl      => 'My__string',
            MD5           => 'My__string',
            Substitutions => { 'My__string' => [ 'My__string', ... ], }
            ,                       # OPTIONAL
          },    # OPTIONAL
          BaiduMessage => {
            ImageUrl => 'My__string',
            Url      => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            Body   => 'My__string',
            ImageIconUrl  => 'My__string',
            IconReference => 'My__string',
            Substitutions => { 'My__string' => [ 'My__string', ... ], }
            ,                       # OPTIONAL
            Title             => 'My__string',
            Data              => { 'My__string' => 'My__string', },   # OPTIONAL
            RawContent        => 'My__string',
            SmallImageIconUrl => 'My__string',
            Sound             => 'My__string',
            SilentPush        => 1,                                   # OPTIONAL
          },    # OPTIONAL
          SMSMessage => {
            Body => 'My__string',
            MessageType =>
              'TRANSACTIONAL',    # values: TRANSACTIONAL, PROMOTIONAL; OPTIONAL
            Substitutions => { 'My__string' => [ 'My__string', ... ], }
            ,                     # OPTIONAL
            SenderId          => 'My__string',
            OriginationNumber => 'My__string',
          },    # OPTIONAL
          DefaultPushNotificationMessage => {
            Data       => { 'My__string' => 'My__string', },    # OPTIONAL
            Title      => 'My__string',
            SilentPush => 1,                                    # OPTIONAL
            Url        => 'My__string',
            Body       => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            Substitutions => { 'My__string' => [ 'My__string', ... ], }
            ,                       # OPTIONAL
          },    # OPTIONAL
          APNSMessage => {
            TimeToLive => 1,    # OPTIONAL
            Substitutions => { 'My__string' => [ 'My__string', ... ], }
            ,                   # OPTIONAL
            CollapseId => 'My__string',
            Url        => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            Body   => 'My__string',
            ThreadId   => 'My__string',
            Sound      => 'My__string',
            SilentPush => 1,                                    # OPTIONAL
            RawContent => 'My__string',
            Data       => { 'My__string' => 'My__string', },    # OPTIONAL
            Badge      => 1,                                    # OPTIONAL
            Category   => 'My__string',
            Priority   => 'My__string',
            MediaUrl   => 'My__string',
            PreferredAuthenticationMethod => 'My__string',
            Title                         => 'My__string',
          },    # OPTIONAL
          GCMMessage => {
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            CollapseKey           => 'My__string',
            ImageIconUrl          => 'My__string',
            Body                  => 'My__string',
            IconReference         => 'My__string',
            Url                   => 'My__string',
            ImageUrl              => 'My__string',
            RestrictedPackageName => 'My__string',
            TimeToLive            => 1,              # OPTIONAL
            Substitutions => { 'My__string' => [ 'My__string', ... ], }
            ,                                        # OPTIONAL
            Data              => { 'My__string' => 'My__string', },   # OPTIONAL
            Priority          => 'My__string',
            Title             => 'My__string',
            SilentPush        => 1,                                   # OPTIONAL
            Sound             => 'My__string',
            SmallImageIconUrl => 'My__string',
            RawContent        => 'My__string',
          },    # OPTIONAL
        },    # OPTIONAL
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

