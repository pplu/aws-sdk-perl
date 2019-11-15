package Paws::IoT::TaskStatisticsForAuditCheck;
  use Moose;
  has CanceledFindingsCount => (is => 'ro', isa => 'Int', request_name => 'canceledFindingsCount', traits => ['NameInRequest']);
  has FailedFindingsCount => (is => 'ro', isa => 'Int', request_name => 'failedFindingsCount', traits => ['NameInRequest']);
  has SkippedFindingsCount => (is => 'ro', isa => 'Int', request_name => 'skippedFindingsCount', traits => ['NameInRequest']);
  has SucceededFindingsCount => (is => 'ro', isa => 'Int', request_name => 'succeededFindingsCount', traits => ['NameInRequest']);
  has TotalFindingsCount => (is => 'ro', isa => 'Int', request_name => 'totalFindingsCount', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::TaskStatisticsForAuditCheck

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::TaskStatisticsForAuditCheck object:

  $service_obj->Method(Att1 => { CanceledFindingsCount => $value, ..., TotalFindingsCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::TaskStatisticsForAuditCheck object:

  $result = $service_obj->Method(...);
  $result->Att1->CanceledFindingsCount

=head1 DESCRIPTION

Provides summary counts of how many tasks for findings are in a
particular state. This information is included in the response from
DescribeAuditMitigationActionsTask.

=head1 ATTRIBUTES


=head2 CanceledFindingsCount => Int

  The number of findings to which the mitigation action task was canceled
when applied.


=head2 FailedFindingsCount => Int

  The number of findings for which at least one of the actions failed
when applied.


=head2 SkippedFindingsCount => Int

  The number of findings skipped because of filter conditions provided in
the parameters to the command.


=head2 SucceededFindingsCount => Int

  The number of findings for which all mitigation actions succeeded when
applied.


=head2 TotalFindingsCount => Int

  The total number of findings to which a task is being applied.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

