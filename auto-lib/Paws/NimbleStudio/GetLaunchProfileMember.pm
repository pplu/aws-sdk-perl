
package Paws::NimbleStudio::GetLaunchProfileMember;
  use Moose;
  has LaunchProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'launchProfileId', required => 1);
  has PrincipalId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'principalId', required => 1);
  has StudioId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'studioId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLaunchProfileMember');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/membership/{principalId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NimbleStudio::GetLaunchProfileMemberResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::GetLaunchProfileMember - Arguments for method GetLaunchProfileMember on L<Paws::NimbleStudio>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLaunchProfileMember on the
L<AmazonNimbleStudio|Paws::NimbleStudio> service. Use the attributes of this class
as arguments to method GetLaunchProfileMember.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLaunchProfileMember.

=head1 SYNOPSIS

    my $nimble = Paws->service('NimbleStudio');
    my $GetLaunchProfileMemberResponse = $nimble->GetLaunchProfileMember(
      LaunchProfileId => 'My__string',
      PrincipalId     => 'My__string',
      StudioId        => 'My__string',

    );

    # Results:
    my $Member = $GetLaunchProfileMemberResponse->Member;

    # Returns a L<Paws::NimbleStudio::GetLaunchProfileMemberResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/nimble/GetLaunchProfileMember>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LaunchProfileId => Str

The launch profile ID.



=head2 B<REQUIRED> PrincipalId => Str

The principal ID.



=head2 B<REQUIRED> StudioId => Str

The studio ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLaunchProfileMember in L<Paws::NimbleStudio>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

