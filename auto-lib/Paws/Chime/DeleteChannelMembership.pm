
package Paws::Chime::DeleteChannelMembership;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelArn', required => 1);
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer');
  has MemberArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'memberArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteChannelMembership');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{channelArn}/memberships/{memberArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::DeleteChannelMembership - Arguments for method DeleteChannelMembership on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteChannelMembership on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method DeleteChannelMembership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteChannelMembership.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    $chime->DeleteChannelMembership(
      ChannelArn  => 'MyChimeArn',
      MemberArn   => 'MyChimeArn',
      ChimeBearer => 'MyChimeArn',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/DeleteChannelMembership>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

The ARN of the channel from which you want to remove the user.



=head2 ChimeBearer => Str

The C<AppInstanceUserArn> of the user that makes the API call.



=head2 B<REQUIRED> MemberArn => Str

The ARN of the member that you're removing from the channel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteChannelMembership in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

