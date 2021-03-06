
package Paws::EMRContainers::CancelJobRun;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobRunId', required => 1);
  has VirtualClusterId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'virtualClusterId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelJobRun');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/virtualclusters/{virtualClusterId}/jobruns/{jobRunId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMRContainers::CancelJobRunResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::CancelJobRun - Arguments for method CancelJobRun on L<Paws::EMRContainers>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelJobRun on the
L<Amazon EMR Containers|Paws::EMRContainers> service. Use the attributes of this class
as arguments to method CancelJobRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelJobRun.

=head1 SYNOPSIS

    my $emr-containers = Paws->service('EMRContainers');
    my $CancelJobRunResponse = $emr -containers->CancelJobRun(
      Id               => 'MyResourceIdString',
      VirtualClusterId => 'MyResourceIdString',

    );

    # Results:
    my $Id               = $CancelJobRunResponse->Id;
    my $VirtualClusterId = $CancelJobRunResponse->VirtualClusterId;

    # Returns a L<Paws::EMRContainers::CancelJobRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/emr-containers/CancelJobRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the job run to cancel.



=head2 B<REQUIRED> VirtualClusterId => Str

The ID of the virtual cluster for which the job run will be canceled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelJobRun in L<Paws::EMRContainers>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

