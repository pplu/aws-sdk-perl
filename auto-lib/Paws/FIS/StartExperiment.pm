
package Paws::FIS::StartExperiment;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has ExperimentTemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'experimentTemplateId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::FIS::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartExperiment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/experiments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FIS::StartExperimentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::StartExperiment - Arguments for method StartExperiment on L<Paws::FIS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartExperiment on the
L<AWS Fault Injection Simulator|Paws::FIS> service. Use the attributes of this class
as arguments to method StartExperiment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartExperiment.

=head1 SYNOPSIS

    my $fis = Paws->service('FIS');
    my $StartExperimentResponse = $fis->StartExperiment(
      ClientToken          => 'MyClientToken',
      ExperimentTemplateId => 'MyExperimentTemplateId',
      Tags                 => {
        'MyTagKey' => 'MyTagValue',    # key: max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Experiment = $StartExperimentResponse->Experiment;

    # Returns a L<Paws::FIS::StartExperimentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fis/StartExperiment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> ExperimentTemplateId => Str

The ID of the experiment template.



=head2 Tags => L<Paws::FIS::TagMap>

The tags to apply to the experiment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartExperiment in L<Paws::FIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

