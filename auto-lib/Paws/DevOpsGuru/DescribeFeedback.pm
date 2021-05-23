
package Paws::DevOpsGuru::DescribeFeedback;
  use Moose;
  has InsightId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFeedback');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/feedback');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::DescribeFeedbackResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::DescribeFeedback - Arguments for method DescribeFeedback on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFeedback on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method DescribeFeedback.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFeedback.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $DescribeFeedbackResponse = $devops -guru->DescribeFeedback(
      InsightId => 'MyInsightId',    # OPTIONAL
    );

    # Results:
    my $InsightFeedback = $DescribeFeedbackResponse->InsightFeedback;

    # Returns a L<Paws::DevOpsGuru::DescribeFeedbackResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/DescribeFeedback>

=head1 ATTRIBUTES


=head2 InsightId => Str

The ID of the insight for which the feedback was provided.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFeedback in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

