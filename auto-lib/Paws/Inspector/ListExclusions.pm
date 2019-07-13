
package Paws::Inspector::ListExclusions;
  use Moose;
  has AssessmentRunArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentRunArn' , required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListExclusions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::ListExclusionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListExclusions - Arguments for method ListExclusions on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListExclusions on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method ListExclusions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListExclusions.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
    my $ListExclusionsResponse = $inspector->ListExclusions(
      AssessmentRunArn => 'MyArn',
      MaxResults       => 1,                      # OPTIONAL
      NextToken        => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $ExclusionArns = $ListExclusionsResponse->ExclusionArns;
    my $NextToken     = $ListExclusionsResponse->NextToken;

    # Returns a L<Paws::Inspector::ListExclusionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/ListExclusions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentRunArn => Str

The ARN of the assessment run that generated the exclusions that you
want to list.



=head2 MaxResults => Int

You can use this parameter to indicate the maximum number of items you
want in the response. The default value is 100. The maximum value is
500.



=head2 NextToken => Str

You can use this parameter when paginating results. Set the value of
this parameter to null on your first call to the ListExclusionsRequest
action. Subsequent calls to the action fill nextToken in the request
with the value of nextToken from the previous response to continue
listing data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListExclusions in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

