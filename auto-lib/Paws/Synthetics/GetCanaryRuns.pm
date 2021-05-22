
package Paws::Synthetics::GetCanaryRuns;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCanaryRuns');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/canary/{name}/runs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Synthetics::GetCanaryRunsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::GetCanaryRuns - Arguments for method GetCanaryRuns on L<Paws::Synthetics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCanaryRuns on the
L<Synthetics|Paws::Synthetics> service. Use the attributes of this class
as arguments to method GetCanaryRuns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCanaryRuns.

=head1 SYNOPSIS

    my $synthetics = Paws->service('Synthetics');
    my $GetCanaryRunsResponse = $synthetics->GetCanaryRuns(
      Name       => 'MyCanaryName',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyToken',        # OPTIONAL
    );

    # Results:
    my $CanaryRuns = $GetCanaryRunsResponse->CanaryRuns;
    my $NextToken  = $GetCanaryRunsResponse->NextToken;

    # Returns a L<Paws::Synthetics::GetCanaryRunsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/synthetics/GetCanaryRuns>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Specify this parameter to limit how many runs are returned each time
you use the C<GetCanaryRuns> operation. If you omit this parameter, the
default of 100 is used.



=head2 B<REQUIRED> Name => Str

The name of the canary that you want to see runs for.



=head2 NextToken => Str

A token that indicates that there is more data available. You can use
this token in a subsequent C<GetCanaryRuns> operation to retrieve the
next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCanaryRuns in L<Paws::Synthetics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

