
package Paws::Kendra::SubmitFeedback;
  use Moose;
  has ClickFeedbackItems => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::ClickFeedback]');
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has QueryId => (is => 'ro', isa => 'Str', required => 1);
  has RelevanceFeedbackItems => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::RelevanceFeedback]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SubmitFeedback');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::SubmitFeedback - Arguments for method SubmitFeedback on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SubmitFeedback on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method SubmitFeedback.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SubmitFeedback.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    $kendra->SubmitFeedback(
      IndexId            => 'MyIndexId',
      QueryId            => 'MyQueryId',
      ClickFeedbackItems => [
        {
          ClickTime => '1970-01-01T01:00:00',
          ResultId  => 'MyResultId',            # min: 1, max: 73

        },
        ...
      ],                                        # OPTIONAL
      RelevanceFeedbackItems => [
        {
          RelevanceValue => 'RELEVANT',         # values: RELEVANT, NOT_RELEVANT
          ResultId       => 'MyResultId',       # min: 1, max: 73

        },
        ...
      ],                                        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/SubmitFeedback>

=head1 ATTRIBUTES


=head2 ClickFeedbackItems => ArrayRef[L<Paws::Kendra::ClickFeedback>]

Tells Amazon Kendra that a particular search result link was chosen by
the user.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index that was queried.



=head2 B<REQUIRED> QueryId => Str

The identifier of the specific query for which you are submitting
feedback. The query ID is returned in the response to the operation.



=head2 RelevanceFeedbackItems => ArrayRef[L<Paws::Kendra::RelevanceFeedback>]

Provides Amazon Kendra with relevant or not relevant feedback for
whether a particular item was relevant to the search.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SubmitFeedback in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

