
package Paws::Lambda::ListEventSourceMappings;
  use Moose;
  has EventSourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'EventSourceArn');
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'FunctionName');
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Marker');
  has MaxItems => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxItems');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEventSourceMappings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/event-source-mappings/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::ListEventSourceMappingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListEventSourceMappings - Arguments for method ListEventSourceMappings on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEventSourceMappings on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method ListEventSourceMappings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEventSourceMappings.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    my $ListEventSourceMappingsResponse = $lambda->ListEventSourceMappings(
      EventSourceArn => 'MyArn',             # OPTIONAL
      FunctionName   => 'MyFunctionName',    # OPTIONAL
      Marker         => 'MyString',          # OPTIONAL
      MaxItems       => 1,                   # OPTIONAL
    );

    # Results:
    my $EventSourceMappings =
      $ListEventSourceMappingsResponse->EventSourceMappings;
    my $NextMarker = $ListEventSourceMappingsResponse->NextMarker;

    # Returns a L<Paws::Lambda::ListEventSourceMappingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/ListEventSourceMappings>

=head1 ATTRIBUTES


=head2 EventSourceArn => Str

The Amazon Resource Name (ARN) of the event source.

=over

=item *

B<Amazon Kinesis> - The ARN of the data stream or a stream consumer.

=item *

B<Amazon DynamoDB Streams> - The ARN of the stream.

=item *

B<Amazon Simple Queue Service> - The ARN of the queue.

=back




=head2 FunctionName => Str

The name of the Lambda function.

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
the function name, it's limited to 64 characters in length.



=head2 Marker => Str

A pagination token returned by a previous call.



=head2 MaxItems => Int

The maximum number of event source mappings to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEventSourceMappings in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

