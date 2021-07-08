
package Paws::Chime::BatchCreateChannelMembership;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelArn', required => 1);
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer');
  has MemberArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Type => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchCreateChannelMembership');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{channelArn}/memberships?operation=batch-create');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::BatchCreateChannelMembershipResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::BatchCreateChannelMembership - Arguments for method BatchCreateChannelMembership on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchCreateChannelMembership on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method BatchCreateChannelMembership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchCreateChannelMembership.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $BatchCreateChannelMembershipResponse =
      $chime->BatchCreateChannelMembership(
      ChannelArn => 'MyChimeArn',
      MemberArns => [
        'MyChimeArn', ...    # min: 5, max: 1600
      ],
      ChimeBearer => 'MyChimeArn',    # OPTIONAL
      Type        => 'DEFAULT',       # OPTIONAL
      );

    # Results:
    my $BatchChannelMemberships =
      $BatchCreateChannelMembershipResponse->BatchChannelMemberships;
    my $Errors = $BatchCreateChannelMembershipResponse->Errors;

    # Returns a L<Paws::Chime::BatchCreateChannelMembershipResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/BatchCreateChannelMembership>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

The ARN of the channel to which you're adding users.



=head2 ChimeBearer => Str

The C<AppInstanceUserArn> of the user that makes the API call.



=head2 B<REQUIRED> MemberArns => ArrayRef[Str|Undef]

The ARNs of the members you want to add to the channel.



=head2 Type => Str

The membership type of a user, C<DEFAULT> or C<HIDDEN>. Default members
are always returned as part of C<ListChannelMemberships>. Hidden
members are only returned if the type filter in
C<ListChannelMemberships> equals C<HIDDEN>. Otherwise hidden members
are not returned. This is only supported by moderators.

Valid values are: C<"DEFAULT">, C<"HIDDEN">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchCreateChannelMembership in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

