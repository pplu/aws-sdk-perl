
package Paws::IoT::ListActiveViolations;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SecurityProfileName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'securityProfileName');
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'thingName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListActiveViolations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/active-violations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListActiveViolationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListActiveViolations - Arguments for method ListActiveViolations on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListActiveViolations on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListActiveViolations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListActiveViolations.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListActiveViolationsResponse = $iot->ListActiveViolations(
      MaxResults          => 1,                          # OPTIONAL
      NextToken           => 'MyNextToken',              # OPTIONAL
      SecurityProfileName => 'MySecurityProfileName',    # OPTIONAL
      ThingName           => 'MyThingName',              # OPTIONAL
    );

    # Results:
    my $ActiveViolations = $ListActiveViolationsResponse->ActiveViolations;
    my $NextToken        = $ListActiveViolationsResponse->NextToken;

    # Returns a L<Paws::IoT::ListActiveViolationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListActiveViolations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return at one time.



=head2 NextToken => Str

The token for the next set of results.



=head2 SecurityProfileName => Str

The name of the Device Defender security profile for which violations
are listed.



=head2 ThingName => Str

The name of the thing whose active violations are listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListActiveViolations in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

