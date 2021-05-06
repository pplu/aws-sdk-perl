
package Paws::SMS::StartOnDemandReplicationRun;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has ReplicationJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicationJobId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartOnDemandReplicationRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SMS::StartOnDemandReplicationRunResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::StartOnDemandReplicationRun - Arguments for method StartOnDemandReplicationRun on L<Paws::SMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartOnDemandReplicationRun on the
L<AWS Server Migration Service|Paws::SMS> service. Use the attributes of this class
as arguments to method StartOnDemandReplicationRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartOnDemandReplicationRun.

=head1 SYNOPSIS

    my $sms = Paws->service('SMS');
    my $StartOnDemandReplicationRunResponse = $sms->StartOnDemandReplicationRun(
      ReplicationJobId => 'MyReplicationJobId',
      Description      => 'MyDescription',        # OPTIONAL
    );

    # Results:
    my $ReplicationRunId =
      $StartOnDemandReplicationRunResponse->ReplicationRunId;

    # Returns a L<Paws::SMS::StartOnDemandReplicationRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms/StartOnDemandReplicationRun>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the replication run.



=head2 B<REQUIRED> ReplicationJobId => Str

The identifier of the replication job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartOnDemandReplicationRun in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

