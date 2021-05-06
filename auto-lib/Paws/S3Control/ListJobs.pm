
package Paws::S3Control::ListJobs;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has JobStatuses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'jobStatuses', traits => ['NameInRequest']);
  has MaxResults => (is => 'ro', isa => 'Int', query_name => 'maxResults', traits => ['ParamInQuery']);
  has NextToken => (is => 'ro', isa => 'Str', query_name => 'nextToken', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::ListJobsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListJobs - Arguments for method ListJobs on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListJobs on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method ListJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListJobs.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $ListJobsResult = $s3 -control->ListJobs(
      AccountId   => 'MyAccountId',
      JobStatuses => [
        'Active',
        ... # values: Active, Cancelled, Cancelling, Complete, Completing, Failed, Failing, New, Paused, Pausing, Preparing, Ready, Suspended
      ],    # OPTIONAL
      MaxResults => 1,                                  # OPTIONAL
      NextToken  => 'MyNonEmptyMaxLength1024String',    # OPTIONAL
    );

    # Results:
    my $Jobs      = $ListJobsResult->Jobs;
    my $NextToken = $ListJobsResult->NextToken;

    # Returns a L<Paws::S3Control::ListJobsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/ListJobs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str





=head2 JobStatuses => ArrayRef[Str|Undef]

The C<List Jobs> request returns jobs that match the statuses listed in
this element.



=head2 MaxResults => Int

The maximum number of jobs that Amazon S3 will include in the C<List
Jobs> response. If there are more jobs than this number, the response
will include a pagination token in the C<NextToken> field to enable you
to retrieve the next page of results.



=head2 NextToken => Str

A pagination token to request the next page of results. Use the token
that Amazon S3 returned in the C<NextToken> element of the
C<ListJobsResult> from the previous C<List Jobs> request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListJobs in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

