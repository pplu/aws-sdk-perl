
package Paws::MTurk::UpdateHITReviewStatus;
  use Moose;
  has HITId => (is => 'ro', isa => 'Str', required => 1);
  has Revert => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateHITReviewStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::UpdateHITReviewStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::UpdateHITReviewStatus - Arguments for method UpdateHITReviewStatus on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateHITReviewStatus on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method UpdateHITReviewStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateHITReviewStatus.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $UpdateHITReviewStatusResponse =
      $mturk -requester->UpdateHITReviewStatus(
      HITId  => 'MyEntityId',
      Revert => 1,              # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/UpdateHITReviewStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HITId => Str

The ID of the HIT to update.



=head2 Revert => Bool

Specifies how to update the HIT status. Default is C<False>.

=over

=item *

Setting this to false will only transition a HIT from C<Reviewable> to
C<Reviewing>

=item *

Setting this to true will only transition a HIT from C<Reviewing> to
C<Reviewable>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateHITReviewStatus in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

