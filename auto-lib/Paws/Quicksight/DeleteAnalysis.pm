
package Paws::Quicksight::DeleteAnalysis;
  use Moose;
  has AnalysisId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AnalysisId', required => 1);
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has ForceDeleteWithoutRecovery => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'force-delete-without-recovery');
  has RecoveryWindowInDays => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'recovery-window-in-days');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAnalysis');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/analyses/{AnalysisId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DeleteAnalysisResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DeleteAnalysis - Arguments for method DeleteAnalysis on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAnalysis on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DeleteAnalysis.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAnalysis.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DeleteAnalysisResponse = $quicksight->DeleteAnalysis(
      AnalysisId                 => 'MyRestrictiveResourceId',
      AwsAccountId               => 'MyAwsAccountId',
      ForceDeleteWithoutRecovery => 1,                           # OPTIONAL
      RecoveryWindowInDays       => 1,                           # OPTIONAL
    );

    # Results:
    my $AnalysisId   = $DeleteAnalysisResponse->AnalysisId;
    my $Arn          = $DeleteAnalysisResponse->Arn;
    my $DeletionTime = $DeleteAnalysisResponse->DeletionTime;
    my $RequestId    = $DeleteAnalysisResponse->RequestId;
    my $Status       = $DeleteAnalysisResponse->Status;

    # Returns a L<Paws::Quicksight::DeleteAnalysisResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DeleteAnalysis>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisId => Str

The ID of the analysis that you're deleting.



=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account where you want to delete an analysis.



=head2 ForceDeleteWithoutRecovery => Bool

This option defaults to the value C<NoForceDeleteWithoutRecovery>. To
immediately delete the analysis, add the C<ForceDeleteWithoutRecovery>
option. You can't restore an analysis after it's deleted.



=head2 RecoveryWindowInDays => Int

A value that specifies the number of days that QuickSight waits before
it deletes the analysis. You can't use this parameter with the
C<ForceDeleteWithoutRecovery> option in the same API call. The default
value is 30.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAnalysis in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

