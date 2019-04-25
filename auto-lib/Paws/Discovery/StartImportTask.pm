
package Paws::Discovery::StartImportTask;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken' );
  has ImportUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importUrl' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartImportTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::StartImportTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::StartImportTask - Arguments for method StartImportTask on L<Paws::Discovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartImportTask on the
L<AWS Application Discovery Service|Paws::Discovery> service. Use the attributes of this class
as arguments to method StartImportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartImportTask.

=head1 SYNOPSIS

    my $discovery = Paws->service('Discovery');
    my $StartImportTaskResponse = $discovery->StartImportTask(
      ImportUrl          => 'MyImportURL',
      Name               => 'MyImportTaskName',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
    );

    # Results:
    my $Task = $StartImportTaskResponse->Task;

    # Returns a L<Paws::Discovery::StartImportTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/discovery/StartImportTask>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Optional. A unique token that you can provide to prevent the same
import request from occurring more than once. If you don't provide a
token, a token is automatically generated.

Sending more than one C<StartImportTask> request with the same client
request token will return information about the original import task
with that client request token.



=head2 B<REQUIRED> ImportUrl => Str

The URL for your import file that you've uploaded to Amazon S3.

If you're using the AWS CLI, this URL is structured as follows:
C<s3://BucketName/ImportFileName.CSV>



=head2 B<REQUIRED> Name => Str

A descriptive name for this request. You can use this name to filter
future requests related to this import task, such as identifying
applications and servers that were included in this import task. We
recommend that you use a meaningful name for each import task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartImportTask in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

