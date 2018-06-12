
package Paws::MTurk::ListReviewableHITs;
  use Moose;
  has HITTypeId => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReviewableHITs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::ListReviewableHITsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ListReviewableHITs - Arguments for method ListReviewableHITs on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReviewableHITs on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method ListReviewableHITs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReviewableHITs.

As an example:

  $service_obj->ListReviewableHITs(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/mturk/>

=head1 ATTRIBUTES


=head2 HITTypeId => Str

The ID of the HIT type of the HITs to consider for the query. If not
specified, all HITs for the Reviewer are considered



=head2 MaxResults => Int

Limit the number of results returned.



=head2 NextToken => Str

Pagination Token



=head2 Status => Str

Can be either C<Reviewable> or C<Reviewing>. Reviewable is the default
value.

Valid values are: C<"Reviewable">, C<"Reviewing">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReviewableHITs in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

