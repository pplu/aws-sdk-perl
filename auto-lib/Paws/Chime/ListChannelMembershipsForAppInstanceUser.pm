
package Paws::Chime::ListChannelMembershipsForAppInstanceUser;
  use Moose;
  has AppInstanceUserArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'app-instance-user-arn');
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListChannelMembershipsForAppInstanceUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels?scope=app-instance-user-memberships');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::ListChannelMembershipsForAppInstanceUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListChannelMembershipsForAppInstanceUser - Arguments for method ListChannelMembershipsForAppInstanceUser on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListChannelMembershipsForAppInstanceUser on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method ListChannelMembershipsForAppInstanceUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListChannelMembershipsForAppInstanceUser.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $ListChannelMembershipsForAppInstanceUserResponse =
      $chime->ListChannelMembershipsForAppInstanceUser(
      AppInstanceUserArn => 'MyChimeArn',     # OPTIONAL
      ChimeBearer        => 'MyChimeArn',     # OPTIONAL
      MaxResults         => 1,                # OPTIONAL
      NextToken          => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $ChannelMemberships =
      $ListChannelMembershipsForAppInstanceUserResponse->ChannelMemberships;
    my $NextToken =
      $ListChannelMembershipsForAppInstanceUserResponse->NextToken;

# Returns a L<Paws::Chime::ListChannelMembershipsForAppInstanceUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/ListChannelMembershipsForAppInstanceUser>

=head1 ATTRIBUTES


=head2 AppInstanceUserArn => Str

The ARN of the C<AppInstanceUser>s



=head2 ChimeBearer => Str

The C<AppInstanceUserArn> of the user that makes the API call.



=head2 MaxResults => Int

The maximum number of users that you want returned.



=head2 NextToken => Str

The token returned from previous API requests until the number of
channel memberships is reached.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListChannelMembershipsForAppInstanceUser in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

