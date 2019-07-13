
package Paws::Amplify::GetJob;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has BranchName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'branchName', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps/{appId}/branches/{branchName}/jobs/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Amplify::GetJobResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::GetJob - Arguments for method GetJob on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetJob on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method GetJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetJob.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $GetJobResult = $amplify->GetJob(
      AppId      => 'MyAppId',
      BranchName => 'MyBranchName',
      JobId      => 'MyJobId',

    );

    # Results:
    my $Job = $GetJobResult->Job;

    # Returns a L<Paws::Amplify::GetJobResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/GetJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

Unique Id for an Amplify App.



=head2 B<REQUIRED> BranchName => Str

Name for the branch, for the Job.



=head2 B<REQUIRED> JobId => Str

Unique Id for the Job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetJob in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

