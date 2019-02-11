
package Paws::Lambda::DeleteEventSourceMapping;
  use Moose;
  has UUID => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'UUID', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEventSourceMapping');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/event-source-mappings/{UUID}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::EventSourceMappingConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::DeleteEventSourceMapping - Arguments for method DeleteEventSourceMapping on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEventSourceMapping on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method DeleteEventSourceMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEventSourceMapping.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    # To delete a Lambda function event source mapping
    # This operation deletes a Lambda function event source mapping
    my $EventSourceMappingConfiguration = $lambda->DeleteEventSourceMapping(
      {
        'UUID' => '12345kxodurf3443'
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/DeleteEventSourceMapping>

=head1 ATTRIBUTES


=head2 B<REQUIRED> UUID => Str

The identifier of the event source mapping.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEventSourceMapping in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

