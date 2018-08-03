
package Paws::IoT::ListSecurityProfilesForTarget;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Recursive => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'recursive');
  has SecurityProfileTargetArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'securityProfileTargetArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSecurityProfilesForTarget');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/security-profiles-for-target');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListSecurityProfilesForTargetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListSecurityProfilesForTarget - Arguments for method ListSecurityProfilesForTarget on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSecurityProfilesForTarget on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListSecurityProfilesForTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSecurityProfilesForTarget.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListSecurityProfilesForTargetResponse =
      $iot->ListSecurityProfilesForTarget(
      SecurityProfileTargetArn => 'MySecurityProfileTargetArn',
      MaxResults               => 1,                              # OPTIONAL
      NextToken                => 'MyNextToken',                  # OPTIONAL
      Recursive                => 1,                              # OPTIONAL
      );

    # Results:
    my $NextToken = $ListSecurityProfilesForTargetResponse->NextToken;
    my $SecurityProfileTargetMappings =
      $ListSecurityProfilesForTargetResponse->SecurityProfileTargetMappings;

    # Returns a L<Paws::IoT::ListSecurityProfilesForTargetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListSecurityProfilesForTarget>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return at one time.



=head2 NextToken => Str

The token for the next set of results.



=head2 Recursive => Bool

If true, return child groups as well.



=head2 B<REQUIRED> SecurityProfileTargetArn => Str

The ARN of the target (thing group) whose attached security profiles
you want to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSecurityProfilesForTarget in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

