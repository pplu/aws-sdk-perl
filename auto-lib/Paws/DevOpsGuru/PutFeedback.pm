
package Paws::DevOpsGuru::PutFeedback;
  use Moose;
  has InsightFeedback => (is => 'ro', isa => 'Paws::DevOpsGuru::InsightFeedback');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutFeedback');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/feedback');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::PutFeedbackResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::PutFeedback - Arguments for method PutFeedback on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutFeedback on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method PutFeedback.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutFeedback.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $PutFeedbackResponse = $devops -guru->PutFeedback(
      InsightFeedback => {
        Feedback => 'VALID_COLLECTION'
        , # values: VALID_COLLECTION, RECOMMENDATION_USEFUL, ALERT_TOO_SENSITIVE, DATA_NOISY_ANOMALY, DATA_INCORRECT; OPTIONAL
        Id => 'MyInsightId',    # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/PutFeedback>

=head1 ATTRIBUTES


=head2 InsightFeedback => L<Paws::DevOpsGuru::InsightFeedback>

The feedback from customers is about the recommendations in this
insight.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutFeedback in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

