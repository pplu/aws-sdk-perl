
package Paws::DMS::CancelReplicationTaskAssessmentRun;
  use Moose;
  has ReplicationTaskAssessmentRunArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelReplicationTaskAssessmentRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::CancelReplicationTaskAssessmentRunResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::CancelReplicationTaskAssessmentRun - Arguments for method CancelReplicationTaskAssessmentRun on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelReplicationTaskAssessmentRun on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method CancelReplicationTaskAssessmentRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelReplicationTaskAssessmentRun.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $CancelReplicationTaskAssessmentRunResponse =
      $dms->CancelReplicationTaskAssessmentRun(
      ReplicationTaskAssessmentRunArn => 'MyString',

      );

    # Results:
    my $ReplicationTaskAssessmentRun =
      $CancelReplicationTaskAssessmentRunResponse->ReplicationTaskAssessmentRun;

    # Returns a L<Paws::DMS::CancelReplicationTaskAssessmentRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/CancelReplicationTaskAssessmentRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReplicationTaskAssessmentRunArn => Str

Amazon Resource Name (ARN) of the premigration assessment run to be
canceled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelReplicationTaskAssessmentRun in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

