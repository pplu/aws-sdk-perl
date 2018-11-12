package Paws::IoT::TaskStatistics;
  use Moose;
  has CanceledChecks => (is => 'ro', isa => 'Int', request_name => 'canceledChecks', traits => ['NameInRequest']);
  has CompliantChecks => (is => 'ro', isa => 'Int', request_name => 'compliantChecks', traits => ['NameInRequest']);
  has FailedChecks => (is => 'ro', isa => 'Int', request_name => 'failedChecks', traits => ['NameInRequest']);
  has InProgressChecks => (is => 'ro', isa => 'Int', request_name => 'inProgressChecks', traits => ['NameInRequest']);
  has NonCompliantChecks => (is => 'ro', isa => 'Int', request_name => 'nonCompliantChecks', traits => ['NameInRequest']);
  has TotalChecks => (is => 'ro', isa => 'Int', request_name => 'totalChecks', traits => ['NameInRequest']);
  has WaitingForDataCollectionChecks => (is => 'ro', isa => 'Int', request_name => 'waitingForDataCollectionChecks', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::TaskStatistics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::TaskStatistics object:

  $service_obj->Method(Att1 => { CanceledChecks => $value, ..., WaitingForDataCollectionChecks => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::TaskStatistics object:

  $result = $service_obj->Method(...);
  $result->Att1->CanceledChecks

=head1 DESCRIPTION

Statistics for the checks performed during the audit.

=head1 ATTRIBUTES


=head2 CanceledChecks => Int

  The number of checks that did not run because the audit was canceled.


=head2 CompliantChecks => Int

  The number of checks that found compliant resources.


=head2 FailedChecks => Int

  The number of checks


=head2 InProgressChecks => Int

  The number of checks in progress.


=head2 NonCompliantChecks => Int

  The number of checks that found non-compliant resources.


=head2 TotalChecks => Int

  The number of checks in this audit.


=head2 WaitingForDataCollectionChecks => Int

  The number of checks waiting for data collection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

