
package Paws::Glue::BatchGetTriggers;
  use Moose;
  has TriggerNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetTriggers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::BatchGetTriggersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetTriggers - Arguments for method BatchGetTriggers on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetTriggers on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method BatchGetTriggers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetTriggers.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $BatchGetTriggersResponse = $glue->BatchGetTriggers(
      TriggerNames => [
        'MyNameString', ...    # min: 1, max: 255
      ],

    );

    # Results:
    my $Triggers         = $BatchGetTriggersResponse->Triggers;
    my $TriggersNotFound = $BatchGetTriggersResponse->TriggersNotFound;

    # Returns a L<Paws::Glue::BatchGetTriggersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/BatchGetTriggers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TriggerNames => ArrayRef[Str|Undef]

A list of trigger names, which may be the names returned from the
C<ListTriggers> operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetTriggers in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

