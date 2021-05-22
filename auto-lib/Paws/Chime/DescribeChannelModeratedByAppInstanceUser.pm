
package Paws::Chime::DescribeChannelModeratedByAppInstanceUser;
  use Moose;
  has AppInstanceUserArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'app-instance-user-arn', required => 1);
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelArn', required => 1);
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeChannelModeratedByAppInstanceUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{channelArn}?scope=app-instance-user-moderated-channel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::DescribeChannelModeratedByAppInstanceUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::DescribeChannelModeratedByAppInstanceUser - Arguments for method DescribeChannelModeratedByAppInstanceUser on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeChannelModeratedByAppInstanceUser on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method DescribeChannelModeratedByAppInstanceUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeChannelModeratedByAppInstanceUser.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $DescribeChannelModeratedByAppInstanceUserResponse =
      $chime->DescribeChannelModeratedByAppInstanceUser(
      AppInstanceUserArn => 'MyChimeArn',
      ChannelArn         => 'MyChimeArn',
      ChimeBearer        => 'MyChimeArn',    # OPTIONAL
      );

    # Results:
    my $Channel = $DescribeChannelModeratedByAppInstanceUserResponse->Channel;

# Returns a L<Paws::Chime::DescribeChannelModeratedByAppInstanceUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/DescribeChannelModeratedByAppInstanceUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInstanceUserArn => Str

The ARN of the C<AppInstanceUser> in the moderated channel.



=head2 B<REQUIRED> ChannelArn => Str

The ARN of the moderated channel.



=head2 ChimeBearer => Str

The C<AppInstanceUserArn> of the user that makes the API call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeChannelModeratedByAppInstanceUser in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

