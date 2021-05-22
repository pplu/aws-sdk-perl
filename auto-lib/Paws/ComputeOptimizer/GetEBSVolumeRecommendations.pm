
package Paws::ComputeOptimizer::GetEBSVolumeRecommendations;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::EBSFilter]', traits => ['NameInRequest'], request_name => 'filters' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has VolumeArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'volumeArns' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEBSVolumeRecommendations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComputeOptimizer::GetEBSVolumeRecommendationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetEBSVolumeRecommendations - Arguments for method GetEBSVolumeRecommendations on L<Paws::ComputeOptimizer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEBSVolumeRecommendations on the
L<AWS Compute Optimizer|Paws::ComputeOptimizer> service. Use the attributes of this class
as arguments to method GetEBSVolumeRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEBSVolumeRecommendations.

=head1 SYNOPSIS

    my $compute-optimizer = Paws->service('ComputeOptimizer');
    my $GetEBSVolumeRecommendationsResponse =
      $compute -optimizer->GetEBSVolumeRecommendations(
      AccountIds => [ 'MyAccountId', ... ],    # OPTIONAL
      Filters    => [
        {
          Name   => 'Finding',                   # values: Finding; OPTIONAL
          Values => [ 'MyFilterValue', ... ],    # OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
      MaxResults => 1,                           # OPTIONAL
      NextToken  => 'MyNextToken',               # OPTIONAL
      VolumeArns => [ 'MyVolumeArn', ... ],      # OPTIONAL
      );

    # Results:
    my $Errors    = $GetEBSVolumeRecommendationsResponse->Errors;
    my $NextToken = $GetEBSVolumeRecommendationsResponse->NextToken;
    my $VolumeRecommendations =
      $GetEBSVolumeRecommendationsResponse->VolumeRecommendations;

# Returns a L<Paws::ComputeOptimizer::GetEBSVolumeRecommendationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/compute-optimizer/GetEBSVolumeRecommendations>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

The ID of the AWS account for which to return volume recommendations.

If your account is the management account of an organization, use this
parameter to specify the member account for which you want to return
volume recommendations.

Only one account ID can be specified per request.



=head2 Filters => ArrayRef[L<Paws::ComputeOptimizer::EBSFilter>]

An array of objects that describe a filter that returns a more specific
list of volume recommendations.



=head2 MaxResults => Int

The maximum number of volume recommendations to return with a single
request.

To retrieve the remaining results, make another request with the
returned C<NextToken> value.



=head2 NextToken => Str

The token to advance to the next page of volume recommendations.



=head2 VolumeArns => ArrayRef[Str|Undef]

The Amazon Resource Name (ARN) of the volumes for which to return
recommendations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEBSVolumeRecommendations in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

