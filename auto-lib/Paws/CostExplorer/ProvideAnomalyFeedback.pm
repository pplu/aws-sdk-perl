
package Paws::CostExplorer::ProvideAnomalyFeedback;
  use Moose;
  has AnomalyId => (is => 'ro', isa => 'Str', required => 1);
  has Feedback => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ProvideAnomalyFeedback');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::ProvideAnomalyFeedbackResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ProvideAnomalyFeedback - Arguments for method ProvideAnomalyFeedback on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ProvideAnomalyFeedback on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method ProvideAnomalyFeedback.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ProvideAnomalyFeedback.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $ProvideAnomalyFeedbackResponse = $ce->ProvideAnomalyFeedback(
      AnomalyId => 'MyGenericString',
      Feedback  => 'YES',

    );

    # Results:
    my $AnomalyId = $ProvideAnomalyFeedbackResponse->AnomalyId;

    # Returns a L<Paws::CostExplorer::ProvideAnomalyFeedbackResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/ProvideAnomalyFeedback>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnomalyId => Str

A cost anomaly ID.



=head2 B<REQUIRED> Feedback => Str

Describes whether the cost anomaly was a planned activity or you
considered it an anomaly.

Valid values are: C<"YES">, C<"NO">, C<"PLANNED_ACTIVITY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ProvideAnomalyFeedback in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

