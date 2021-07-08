
package Paws::NimbleStudio::ListLaunchProfiles;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has PrincipalId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'principalId');
  has States => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'states');
  has StudioId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'studioId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLaunchProfiles');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-08-01/studios/{studioId}/launch-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NimbleStudio::ListLaunchProfilesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::ListLaunchProfiles - Arguments for method ListLaunchProfiles on L<Paws::NimbleStudio>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLaunchProfiles on the
L<AmazonNimbleStudio|Paws::NimbleStudio> service. Use the attributes of this class
as arguments to method ListLaunchProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLaunchProfiles.

=head1 SYNOPSIS

    my $nimble = Paws->service('NimbleStudio');
    my $ListLaunchProfilesResponse = $nimble->ListLaunchProfiles(
      StudioId    => 'My__string',
      MaxResults  => 1,                        # OPTIONAL
      NextToken   => 'My__string',             # OPTIONAL
      PrincipalId => 'My__string',             # OPTIONAL
      States      => [ 'My__string', ... ],    # OPTIONAL
    );

    # Results:
    my $LaunchProfiles = $ListLaunchProfilesResponse->LaunchProfiles;
    my $NextToken      = $ListLaunchProfilesResponse->NextToken;

    # Returns a L<Paws::NimbleStudio::ListLaunchProfilesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/nimble/ListLaunchProfiles>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to be returned per request.



=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.



=head2 PrincipalId => Str

The principal ID.



=head2 States => ArrayRef[Str|Undef]

A list of states.



=head2 B<REQUIRED> StudioId => Str

The studio ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLaunchProfiles in L<Paws::NimbleStudio>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

