
package Paws::GreengrassV2::ResolveComponentCandidates;
  use Moose;
  has ComponentCandidates => (is => 'ro', isa => 'ArrayRef[Paws::GreengrassV2::ComponentCandidate]', traits => ['NameInRequest'], request_name => 'componentCandidates', required => 1);
  has Platform => (is => 'ro', isa => 'Paws::GreengrassV2::ComponentPlatform', traits => ['NameInRequest'], request_name => 'platform', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResolveComponentCandidates');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/v2/resolveComponentCandidates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GreengrassV2::ResolveComponentCandidatesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::ResolveComponentCandidates - Arguments for method ResolveComponentCandidates on L<Paws::GreengrassV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResolveComponentCandidates on the
L<AWS IoT Greengrass V2|Paws::GreengrassV2> service. Use the attributes of this class
as arguments to method ResolveComponentCandidates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResolveComponentCandidates.

=head1 SYNOPSIS

    my $greengrass = Paws->service('GreengrassV2');
    my $ResolveComponentCandidatesResponse =
      $greengrass->ResolveComponentCandidates(
      ComponentCandidates => [
        {
          ComponentName => 'MyComponentNameString', # min: 1, max: 128; OPTIONAL
          ComponentVersion =>
            'MyComponentVersionString',             # min: 1, max: 64; OPTIONAL
          VersionRequirements => {
            'MyNonEmptyString' =>
              'MyNonEmptyString',                   # key: min: 1, value: min: 1
          },    # OPTIONAL
        },
        ...
      ],
      Platform => {
        Attributes => {
          'MyNonEmptyString' => 'MyNonEmptyString', # key: min: 1, value: min: 1
        },    # OPTIONAL
        Name => 'MyNonEmptyString',    # min: 1
      },

      );

    # Results:
    my $ResolvedComponentVersions =
      $ResolveComponentCandidatesResponse->ResolvedComponentVersions;

   # Returns a L<Paws::GreengrassV2::ResolveComponentCandidatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/ResolveComponentCandidates>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComponentCandidates => ArrayRef[L<Paws::GreengrassV2::ComponentCandidate>]

The list of components to resolve.



=head2 B<REQUIRED> Platform => L<Paws::GreengrassV2::ComponentPlatform>

The platform to use to resolve compatible components.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResolveComponentCandidates in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

