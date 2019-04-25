
package Paws::XRay::BatchGetTraces;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TraceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetTraces');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/Traces');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::BatchGetTracesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::BatchGetTraces - Arguments for method BatchGetTraces on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetTraces on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method BatchGetTraces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetTraces.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $BatchGetTracesResult = $xray->BatchGetTraces(
      TraceIds => [
        'MyTraceId', ...    # min: 1, max: 35
      ],
      NextToken => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken           = $BatchGetTracesResult->NextToken;
    my $Traces              = $BatchGetTracesResult->Traces;
    my $UnprocessedTraceIds = $BatchGetTracesResult->UnprocessedTraceIds;

    # Returns a L<Paws::XRay::BatchGetTracesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/BatchGetTraces>

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token. Not used.



=head2 B<REQUIRED> TraceIds => ArrayRef[Str|Undef]

Specify the trace IDs of requests for which to retrieve segments.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetTraces in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

