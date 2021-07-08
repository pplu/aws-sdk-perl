
package Paws::LookoutEquipment::ListInferenceExecutions;
  use Moose;
  has DataEndTimeBefore => (is => 'ro', isa => 'Str');
  has DataStartTimeAfter => (is => 'ro', isa => 'Str');
  has InferenceSchedulerName => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInferenceExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::ListInferenceExecutionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ListInferenceExecutions - Arguments for method ListInferenceExecutions on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInferenceExecutions on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method ListInferenceExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInferenceExecutions.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $ListInferenceExecutionsResponse =
      $lookoutequipment->ListInferenceExecutions(
      InferenceSchedulerName => 'MyInferenceSchedulerIdentifier',
      DataEndTimeBefore      => '1970-01-01T01:00:00',              # OPTIONAL
      DataStartTimeAfter     => '1970-01-01T01:00:00',              # OPTIONAL
      MaxResults             => 1,                                  # OPTIONAL
      NextToken              => 'MyNextToken',                      # OPTIONAL
      Status                 => 'IN_PROGRESS',                      # OPTIONAL
      );

    # Results:
    my $InferenceExecutionSummaries =
      $ListInferenceExecutionsResponse->InferenceExecutionSummaries;
    my $NextToken = $ListInferenceExecutionsResponse->NextToken;

  # Returns a L<Paws::LookoutEquipment::ListInferenceExecutionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/ListInferenceExecutions>

=head1 ATTRIBUTES


=head2 DataEndTimeBefore => Str

The time reference in the inferenced dataset before which Amazon
Lookout for Equipment stopped the inference execution.



=head2 DataStartTimeAfter => Str

The time reference in the inferenced dataset after which Amazon Lookout
for Equipment started the inference execution.



=head2 B<REQUIRED> InferenceSchedulerName => Str

The name of the inference scheduler for the inference execution listed.



=head2 MaxResults => Int

Specifies the maximum number of inference executions to list.



=head2 NextToken => Str

An opaque pagination token indicating where to continue the listing of
inference executions.



=head2 Status => Str

The status of the inference execution.

Valid values are: C<"IN_PROGRESS">, C<"SUCCESS">, C<"FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInferenceExecutions in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

