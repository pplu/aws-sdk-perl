
package Paws::S3Control::UpdateJobPriority;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has JobId => (is => 'ro', isa => 'Str', uri_name => 'id', traits => ['ParamInURI'], required => 1);
  has Priority => (is => 'ro', isa => 'Int', query_name => 'priority', traits => ['ParamInQuery'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateJobPriority');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/jobs/{id}/priority');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::UpdateJobPriorityResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::UpdateJobPriority - Arguments for method UpdateJobPriority on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateJobPriority on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method UpdateJobPriority.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateJobPriority.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $UpdateJobPriorityResult = $s3 -control->UpdateJobPriority(
      AccountId => 'MyAccountId',
      JobId     => 'MyJobId',
      Priority  => 1,

    );

    # Results:
    my $JobId    = $UpdateJobPriorityResult->JobId;
    my $Priority = $UpdateJobPriorityResult->Priority;

    # Returns a L<Paws::S3Control::UpdateJobPriorityResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/UpdateJobPriority>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str





=head2 B<REQUIRED> JobId => Str

The ID for the job whose priority you want to update.



=head2 B<REQUIRED> Priority => Int

The priority you want to assign to this job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateJobPriority in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

