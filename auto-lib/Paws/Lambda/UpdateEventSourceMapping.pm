
package Paws::Lambda::UpdateEventSourceMapping;
  use Moose;
  has BatchSize => (is => 'ro', isa => 'Int');
  has Enabled => (is => 'ro', isa => 'Bool');
  has FunctionName => (is => 'ro', isa => 'Str');
  has UUID => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'UUID', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEventSourceMapping');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/event-source-mappings/{UUID}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::EventSourceMappingConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::UpdateEventSourceMapping - Arguments for method UpdateEventSourceMapping on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEventSourceMapping on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method UpdateEventSourceMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEventSourceMapping.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    # To update a Lambda function event source mapping
    # This operation updates a Lambda function event source mapping
    my $EventSourceMappingConfiguration = $lambda->UpdateEventSourceMapping(
      {
        'BatchSize'    => 123,
        'Enabled'      => 1,
        'FunctionName' => 'myFunction',
        'UUID'         => '1234xCy789012'
      }
    );

    # Results:
    my $BatchSize      = $EventSourceMappingConfiguration->BatchSize;
    my $EventSourceArn = $EventSourceMappingConfiguration->EventSourceArn;
    my $FunctionArn    = $EventSourceMappingConfiguration->FunctionArn;
    my $LastModified   = $EventSourceMappingConfiguration->LastModified;
    my $LastProcessingResult =
      $EventSourceMappingConfiguration->LastProcessingResult;
    my $State = $EventSourceMappingConfiguration->State;
    my $StateTransitionReason =
      $EventSourceMappingConfiguration->StateTransitionReason;
    my $UUID = $EventSourceMappingConfiguration->UUID;

    # Returns a L<Paws::Lambda::EventSourceMappingConfiguration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/UpdateEventSourceMapping>

=head1 ATTRIBUTES


=head2 BatchSize => Int

The largest number of records that AWS Lambda will retrieve from your
event source at the time of invoking your function. Your function
receives an event with all the retrieved records.



=head2 Enabled => Bool

Specifies whether AWS Lambda should actively poll the stream or not. If
disabled, AWS Lambda will not poll the stream.



=head2 FunctionName => Str

The name of the lambda function.

B<Name formats>

=over

=item *

B<Function name> - C<MyFunction>.

=item *

B<Function ARN> -
C<arn:aws:lambda:us-west-2:123456789012:function:MyFunction>.

=item *

B<Version or Alias ARN> -
C<arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD>.

=item *

B<Partial ARN> - C<123456789012:function:MyFunction>.

=back

The length constraint applies only to the full ARN. If you specify only
the function name, it is limited to 64 characters in length.



=head2 B<REQUIRED> UUID => Str

The event source mapping identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEventSourceMapping in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

