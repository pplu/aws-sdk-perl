
package Paws::SageMaker::AddAssociation;
  use Moose;
  has AssociationType => (is => 'ro', isa => 'Str');
  has DestinationArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::AddAssociationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AddAssociation - Arguments for method AddAssociation on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddAssociation on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method AddAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddAssociation.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $AddAssociationResponse = $api . sagemaker->AddAssociation(
      DestinationArn  => 'MyAssociationEntityArn',
      SourceArn       => 'MyAssociationEntityArn',
      AssociationType => 'ContributedTo',            # OPTIONAL
    );

    # Results:
    my $DestinationArn = $AddAssociationResponse->DestinationArn;
    my $SourceArn      = $AddAssociationResponse->SourceArn;

    # Returns a L<Paws::SageMaker::AddAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/AddAssociation>

=head1 ATTRIBUTES


=head2 AssociationType => Str

The type of association. The following are suggested uses for each
type. Amazon SageMaker places no restrictions on their use.

=over

=item *

ContributedTo - The source contributed to the destination or had a part
in enabling the destination. For example, the training data contributed
to the training job.

=item *

AssociatedWith - The source is connected to the destination. For
example, an approval workflow is associated with a model deployment.

=item *

DerivedFrom - The destination is a modification of the source. For
example, a digest output of a channel input for a processing job is
derived from the original inputs.

=item *

Produced - The source generated the destination. For example, a
training job produced a model artifact.

=back


Valid values are: C<"ContributedTo">, C<"AssociatedWith">, C<"DerivedFrom">, C<"Produced">

=head2 B<REQUIRED> DestinationArn => Str

The Amazon Resource Name (ARN) of the destination.



=head2 B<REQUIRED> SourceArn => Str

The ARN of the source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddAssociation in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

