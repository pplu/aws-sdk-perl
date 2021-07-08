
package Paws::NimbleStudio::ListLaunchProfileMembers;
  use Moose;
  has LaunchProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'launchProfileId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has StudioId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'studioId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLaunchProfileMembers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/membership');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NimbleStudio::ListLaunchProfileMembersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::ListLaunchProfileMembers - Arguments for method ListLaunchProfileMembers on L<Paws::NimbleStudio>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLaunchProfileMembers on the
L<AmazonNimbleStudio|Paws::NimbleStudio> service. Use the attributes of this class
as arguments to method ListLaunchProfileMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLaunchProfileMembers.

=head1 SYNOPSIS

    my $nimble = Paws->service('NimbleStudio');
    my $ListLaunchProfileMembersResponse = $nimble->ListLaunchProfileMembers(
      LaunchProfileId => 'My__string',
      StudioId        => 'My__string',
      MaxResults      => 1,               # OPTIONAL
      NextToken       => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Members   = $ListLaunchProfileMembersResponse->Members;
    my $NextToken = $ListLaunchProfileMembersResponse->NextToken;

    # Returns a L<Paws::NimbleStudio::ListLaunchProfileMembersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/nimble/ListLaunchProfileMembers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LaunchProfileId => Str

The launch profile ID.



=head2 MaxResults => Int

The maximum number of results to be returned per request.



=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.



=head2 B<REQUIRED> StudioId => Str

The studio ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLaunchProfileMembers in L<Paws::NimbleStudio>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

