
package Paws::LookoutEquipment::ListInferenceSchedulers;
  use Moose;
  has InferenceSchedulerNameBeginsWith => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has ModelName => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInferenceSchedulers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::ListInferenceSchedulersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ListInferenceSchedulers - Arguments for method ListInferenceSchedulers on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInferenceSchedulers on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method ListInferenceSchedulers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInferenceSchedulers.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $ListInferenceSchedulersResponse =
      $lookoutequipment->ListInferenceSchedulers(
      InferenceSchedulerNameBeginsWith =>
        'MyInferenceSchedulerIdentifier',    # OPTIONAL
      MaxResults => 1,                       # OPTIONAL
      ModelName  => 'MyModelName',           # OPTIONAL
      NextToken  => 'MyNextToken',           # OPTIONAL
      );

    # Results:
    my $InferenceSchedulerSummaries =
      $ListInferenceSchedulersResponse->InferenceSchedulerSummaries;
    my $NextToken = $ListInferenceSchedulersResponse->NextToken;

  # Returns a L<Paws::LookoutEquipment::ListInferenceSchedulersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/ListInferenceSchedulers>

=head1 ATTRIBUTES


=head2 InferenceSchedulerNameBeginsWith => Str

The beginning of the name of the inference schedulers to be listed.



=head2 MaxResults => Int

Specifies the maximum number of inference schedulers to list.



=head2 ModelName => Str

The name of the ML model used by the inference scheduler to be listed.



=head2 NextToken => Str

An opaque pagination token indicating where to continue the listing of
inference schedulers.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInferenceSchedulers in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

